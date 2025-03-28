/******************************************************************************
 * qDecoder - http://www.qdecoder.org
 *
 * Copyright (c) 2000-2012 Seungyoung Kim.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 ******************************************************************************
 * $Id: qcgireq.c 652 2012-10-01 05:01:15Z seungyoung.kim $
 ******************************************************************************/

/**
 * @file qcgireq.c CGI Request Parsing API
 *
 * qDecoder supports parsing of
 *
 *   @li COOKIE
 *   @li GET method
 *   @li POST method (application/x-www-form-urlencoded: default FORM encoding)
 *   @li POST method (multipart/form-data: especially used for file uploading)
 *
 * And parsed elements are stored in qentry_t linked-list structure.
 *
 * @code
 *   [HTML sample]
 *   <form action="your_program.cgi">
 *     <input type="text" name="color">
 *     <input type="submit">
 *   </form>
 *
 *   [Your Source]
 *   qentry_t *req = qcgireq_parse(NULL, 0);  // 0 is equivalent to Q_CGI_ALL.
 *
 *   qcgires_setcontenttype(req, "text/plain");
 *   char *color = req->getstr(req, "color", false);
 *   if (color != NULL) {
 *     printf("Color = %s\n", color);
 *   }
 *
 *   req->free(req);
 * @endcode
 *
 * The order of parsing sequence is (1)COOKIE (2)POST (3)GET.
 * Thus if there is a same query name existing in different methods,
 * COOKIE values will be stored first than POST, GET values will be added
 * at the very last into a qentry linked-list.
 *
 * Below is an example to parse only two given methods. Please note that
 * when multiple methods are specified, it'll be parsed in the order of
 * COOKIE, POST and GET.
 *
 * @code
 *   qentry_t *req = qcgireq_parse(req, Q_CGI_COOKIE | Q_CGI_POST);
 * @endcode
 *
 * To change the order of parsing sequence, you can call qcgireq_parse()
 * multiple times in the order that you want as below.
 *
 * @code
 *   qentry_t *req;
 *   req = qcgireq_parse(req, Q_CGI_POST);
 *   req = qcgireq_parse(req, Q_CGI_GET);
 *   req = qcgireq_parse(req, Q_CGI_COOKIE);
 * @endcode
 *
 * In terms of multipart/form-data encoding(used for file uploading),
 * qDecoder can handle that in two different ways internally.
 *
 * @li <b>default mode</b> : Uploading file will be processed only in memory.
 * (see examples/upload.c)
 * @li <b>file mode</b> : Uploading file will be stored directly into disk.
 * (see examples/uploadfile.c)
 *
 * You can switch to file mode by calling qcgireq_setoption().
 * @code
 *   qentry_t *req = qcgireq_setoption(NULL, true, "/tmp", 86400);
 *   req = qcgireq_parse(req, 0);
 *   (...your codes here...)
 *   req->free(req);
 * @endcode
 *
 * Basically, when file is uploaded qDecoder store it's meta information like
 * below.
 * @li (VARIABLE_NAME) - In the <b>default mode</b>, this is binary data.
 *  In the <b>file mode</b> this value is same as "(VARIABLE_NAME).savepath".
 * @li (VARIABLE_NAME).filename - File name itself, path info will be removed.
 * @li (VARIABLE_NAME).length   - File size, the number of bytes.
 * @li (VARIABLE_NAME).contenttype - Mime type like 'text/plain'.
 * @li (VARIABLE_NAME).savepath - Only appended only in <b>file mode</b>.
 * The file path where the uploaded file is saved.
 *
 * @code
 *   [default mode example]
 *   binary = (...binary data...)
 *   binary.filename = hello.xls
 *   binary.length = 3292
 *   binary.contenttype = application/vnd.ms-excel
 *
 *   [file mode example]
 *   binary = tmp/q_wcktIq
 *   binary.length = 60014
 *   binary.filename = hello.xls
 *   binary.contenttype = application/vnd.ms-excel
 *   binary.savepath = tmp/q_wcktIq
 * @endcode
 */

#ifdef ENABLE_FASTCGI
#include "fcgi_stdio.h"
#else
#include <stdio.h>
#endif
#include <stdlib.h>
#include "coreTypes.h"
//#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>
#include <time.h>
#include <limits.h>
#ifndef _WIN32
#include <dirent.h>
#endif
#include "qdecoder.h"
#include "internal.h"
#include "dbgout.h"
#ifdef ENABLE_DEBUG
#include <errno.h>
#endif

#define BOUNDARY_SIZE   	  256
#define MAX_BOUNDARY_SIZE         262
#ifndef _DOXYGEN_SKIP
static int  _parse_multipart(qentry_t *request);
static char *_parse_multipart_value_into_memory(char *boundary, int *valuelen,
                                                bool *finish);
static char *_parse_multipart_value_into_disk(const char *boundary,
        const char *savedir, const char *filename, int *filelen, bool *finish);
static int _upload_clear_base(const char *upload_basepath, int upload_clearold);
static qentry_t *_parse_query(qentry_t *request, const char *query,
                              char equalchar, char sepchar, int *count);
#endif

/**
 * Set request parsing option for file uploading in case of multipart/form-data
 * encoding.
 *
 * @param request   qentry_t container pointer that options will be set.
 *                  NULL can be used to create a new container.
 * @param filemode  false for parsing in memory, true for storing attached
 *                  files into file-system directly.
 * @param basepath  the base path where the uploaded files are located.
 *                  Set to NULL if filemode is false.
 * @param clearold  saved files older than this seconds will be removed
 *                  automatically. Set to 0 to disable.
 *
 * @return  qentry_t container pointer, otherwise returns NULL.
 *
 * @note
 * This method should be called before calling qcgireq_parse().
 *
 * @code
 *   qentry_t *req = qcgireq_setoption(NULL, true, "/tmp", 86400);
 *   req = qcgireq_parse(req, 0);
 *   req->free(req);
 * @endcode
 */
qentry_t *qcgireq_setoption(qentry_t *request, bool filemode,
                            const char *basepath, int clearold)
{
    // initialize entry structure
    if (request == NULL) {
        request = qEntry();
        if (request == NULL) return NULL;
    }

    if (filemode == true) {
        if (basepath == NULL || access(basepath, R_OK|W_OK|X_OK) != 0) {
            request->free(request);
            return NULL;
        }


        // clear old files
        if (clearold > 0 && _upload_clear_base(basepath, clearold) < 0) {
            request->free(request);
            return NULL;
        }

        // save info
        request->putstr(request, "_Q_UPLOAD_BASEPATH", basepath, true);
        request->putint(request, "_Q_UPLOAD_CLEAROLD", clearold, true);

    } else {
        request->remove(request, "_Q_UPLOAD_BASEPATH");
        request->remove(request, "_Q_UPLOAD_CLEAROLD");
    }

    return request;
}

/**
 * Parse one or more request(COOKIE) queries.
 *
 * @param request   qentry_t container pointer that parsed key/value pairs
 *                  will be stored. NULL can be used to create a new container.
 * @param method    Target mask consists of one or more of Q_CGI_COOKIE.
 *
 * @return qentry_t* handle if successful, NULL if there was insufficient
 *         memory to allocate a new object.
 *
 * @code
 *   qentry_t *req = qcgireq_parse_cookie(req);
 * @endcode
 */
qentry_t *qcgireq_parse_cookie(qentry_t *request)
{
    // initialize entry structure
    if (request == NULL) {	
        request = qEntry();
        if (request == NULL) return NULL;
    }

    char *query = qcgireq_getquery(Q_CGI_COOKIE);
    if (query != NULL) {
        _parse_query(request, query, '=', ';', NULL);
        if (query != NULL) {
            free(query);
            query = NULL;
        }
        
    }
    return request;
}

/**
 * Parse one or more request(COOKIE/POST/GET) queries.
 *
 * @param request   qentry_t container pointer that parsed key/value pairs
 *                  will be stored. NULL can be used to create a new container.
 * @param method    Target mask consists of one or more of Q_CGI_COOKIE,
 *                  Q_CGI_POST and Q_CGI_GET. Q_CGI_ALL or 0 can be used for
 *                  parsing all of those types.
 *
 * @return qentry_t* handle if successful, NULL if there was insufficient
 *         memory to allocate a new object.
 *
 * @code
 *   qentry_t *req = qcgireq_parse(NULL, 0);
 * @endcode
 *
 * @code
 *   qentry_t *req = qcgireq_parse(req, Q_CGI_COOKIE | Q_CGI_POST);
 * @endcode
 *
 * @note
 * When multiple methods are specified, it'll be parsed in the order of
 * (1)COOKIE, (2)POST (3)GET unless you call it separately multiple times.
 */
qentry_t *qcgireq_parse(qentry_t *request, Q_CGI_T method)
{
    // initialize entry structure
    if (request == NULL) {	
        request = qEntry();
        if (request == NULL) return NULL;
    }
//	request->print(request, stderr, true);
//	fprintf(stderr, "_Q_UPLOAD_CLEAROLD : %d\n", request->getint(request, "_Q_UPLOAD_CLEAROLD"));
//	fprintf(stderr, "_Q_UPLOAD_BASEPATH : %d\n", request->getstr(request, "_Q_UPLOAD_BASEPATH", true));

    // parse COOKIE
    if (method == Q_CGI_ALL || (method & Q_CGI_COOKIE) != 0) {
        char *query = qcgireq_getquery(Q_CGI_COOKIE);
        if (query != NULL) {
            _parse_query(request, query, '=', ';', NULL);
			if (query != NULL) {
				free(query);
				query = NULL;
			}
            
        }
    }

    //  parse POST method
    if (method == Q_CGI_ALL || (method & Q_CGI_POST) != 0 || (method & Q_CGI_PUT) != 0) {
        const char *content_type = getenv("CONTENT_TYPE");
        if (content_type == NULL) content_type = "";
        if (!strncmp(content_type, "application/x-www-form-urlencoded",
                     CONST_STRLEN("application/x-www-form-urlencoded"))) {
            char *query = qcgireq_getquery(Q_CGI_POST);
            if (query != NULL) {
                _parse_query(request, query, '=', '&', NULL);
				if (query != NULL) {
					free(query);
					query = NULL;
				}
                
            }
        } else if (!strncmp(content_type, "multipart/form-data",
                            CONST_STRLEN("multipart/form-data"))) {
            if(_parse_multipart(request) == 0){ //parse mulitpart failure
                request->free(request);
                request = NULL;
                return request;
            }
        }
    }

    // parse GET method
    if (method == Q_CGI_ALL || (method & Q_CGI_GET) != 0 || (method & Q_CGI_DELETE) != 0) {
        char *query = qcgireq_getquery(Q_CGI_GET);
        if (query != NULL) {
            _parse_query(request, query, '=', '&', NULL);
			if (query != NULL) {
				free(query);
				query = NULL;
			}
            
        }
    }

    return request;
}

/**
 * Get raw query string.
 *
 * @param method    One of Q_CGI_COOKIE, Q_CGI_POST or Q_CGI_GET.
 *
 * @return      malloced query string otherwise returns NULL;
 *
 * @code
 *   char *query = qcgireq_getquery(Q_CGI_GET);
 *   if(query != NULL) {
 *     printf("%s\n", query);
 *     free(query);
 *   }
 * @endcode
 */
char *qcgireq_getquery(Q_CGI_T method)
{
    if (method == Q_CGI_GET ) {
        char *query_string = getenv("QUERY_STRING");
        if (query_string == NULL) return NULL;
        char *req_uri = getenv("REQUEST_URI");

        char *query = NULL;

        // SSI query handling
        if (strlen(query_string) == 0 && req_uri != NULL) {
            char *cp;
            for (cp = req_uri; *cp != '\0'; cp++) {
                if (*cp == '?') {
                    cp++;
                    break;
                }
            }
            query = strdup(cp);
        } else {
            query = strdup(query_string);
        }

        return query;
    } else if (method == Q_CGI_POST || method == Q_CGI_PUT || method == Q_CGI_DELETE) {
        char *request_method = getenv("REQUEST_METHOD");
        char *content_length = getenv("CONTENT_LENGTH");
        if (request_method == NULL ||
            (strcmp(request_method, "POST") && strcmp(request_method, "PUT") && strcmp(request_method, "DELETE")) ||
            content_length == NULL) {
            return NULL;
        }

        unsigned int i = 0, cl = (unsigned int)atoi(content_length);
	if(cl == 0) { return NULL; }
	/* Reason for False Positive tainted values are properly sanitized and their values are within a permissible range. */
	/* coverity[remediation : FALSE] */
	char *query = (char *)malloc(sizeof(char) * (cl + 1));
	if(query == NULL){
		return NULL;
	}
	/* Reason for False Positive tainted values are properly sanitized and their values are within a permissible range. */
	/* coverity[remediation : FALSE] */
	for (i = 0; i < cl; i++)query[i] = fgetc(stdin);
        query[i] = '\0';
        return query;
    } else if (method == Q_CGI_COOKIE) {
        char *http_cookie = getenv("HTTP_COOKIE");
        if (http_cookie == NULL) return NULL;
        char *query = strdup(http_cookie);
        return query;
    }

    return NULL;
}

#ifndef _DOXYGEN_SKIP

static int _parse_multipart(qentry_t *request)
{
#ifdef _WIN32
    setmode(fileno(stdin), _O_BINARY);
    setmode(fileno(stdout), _O_BINARY);
#endif

    char buf[MAX_LINEBUF] = {0};
    int  amount = 0;
    int  retval = 0;

    /*
     * For parse multipart/form-data method
     */
    char boundary_orig[BOUNDARY_SIZE] = {0};
    char boundary[MAX_BOUNDARY_SIZE] = {0}, boundaryEOF[MAX_BOUNDARY_SIZE] = {0};

    // Force to check the boundary string length to defense overflow attack
    int maxboundarylen = CONST_STRLEN("--");

	if(getenv("CONTENT_TYPE") == NULL){
		return amount;
	}
	
	if(strstr(getenv("CONTENT_TYPE"), "boundary=") == NULL){
		return amount;
	}
    maxboundarylen += strlen(strstr(getenv("CONTENT_TYPE"), "boundary=")
                             + CONST_STRLEN("boundary="));
    maxboundarylen += CONST_STRLEN("--");
    maxboundarylen += CONST_STRLEN("\r\n");
    if (maxboundarylen >= BOUNDARY_SIZE) {
    	DEBUG_CODER("The boundary string is too long(Overflow Attack?). stopping process.");
        return amount;
    }

    // find boundary string - Hidai Kenichi made this patch for handling quoted boundary string
    _q_strcpy(boundary_orig, sizeof(boundary_orig),
              strstr(getenv("CONTENT_TYPE"), "boundary=") + CONST_STRLEN("boundary="));
    _q_strtrim(boundary_orig);
    _q_strunchar(boundary_orig, '"', '"');
    retval = snprintf(boundary, sizeof(boundary), "--%s", boundary_orig);
    if(retval < 0 || retval >= (signed)sizeof(boundary))
    {
	    TCRIT("Buffer overflow\n");
	    return amount;
    }
    retval = snprintf(boundaryEOF, sizeof(boundaryEOF), "--%s--", boundary_orig);
    if(retval < 0 || retval >= (signed)sizeof(boundaryEOF))
    {
	    TCRIT("Buffer overflow\n");
	    return amount;
    }

    // If you want to observe the string from stdin, uncomment this section.
    /*
    if (true) {
        int i, j;
        qcgires_setcontenttype(request, "text/html");

        printf("Content Length = %s<br>\n", getenv("CONTENT_LENGTH"));
        printf("Boundary len %zu : %s<br>\n", strlen(boundary), boundary);
        for (i = 0; boundary[i] != '\0'; i++) printf("%02X ", boundary[i]);
        printf("<p>\n");

        for (j = 1; _q_fgets(buf, sizeof(buf), stdin) != NULL; j++) {
            printf("Line %d, len %zu : %s<br>\n", j, strlen(buf), buf);
            //for (i = 0; buf[i] != '\0'; i++) printf("%02X ", buf[i]);
            printf("<br>\n");
        }
        exit(EXIT_SUCCESS);
    }
    */

    // check boundary
    do {
        if (_q_fgets(buf, sizeof(buf), stdin) == NULL) {
        	DEBUG_CODER("Bbrowser sent a non-HTTP compliant message.");
            return amount;
        }
        _q_strtrim(buf);
    } while (!strcmp(buf, "")); // skip blank lines

    // check starting boundary mark
    if (strcmp(buf, boundaryEOF) == 0) {
        // empty contents
        return amount;
    } else if (strcmp(buf, boundary) != 0) {
    	DEBUG_CODER("Invalid string format.");
        return amount;
    }

    // check file save mode
    bool upload_filesave = false; // false: into memory, true: into file
    const char *upload_basepath = NULL; 
	upload_basepath = request->getstr(request, "_Q_UPLOAD_BASEPATH", false);
    if (upload_basepath != NULL) upload_filesave = true;

	

    bool finish;
    for (finish = false; finish == false; amount++) {
        char *name = NULL, *value = NULL, *filename = NULL, *contenttype = NULL;
        int valuelen = 0;

        // parse header
        while (_q_fgets(buf, sizeof(buf), stdin)) {
            _q_strtrim(buf);
            if (!strcmp(buf, "")){
               //free(name);
               break;
            }
            else if (!strncasecmp(buf, "Content-Disposition: ", CONST_STRLEN("Content-Disposition: "))) {
                int c_count;

                // get name field
                if (name != NULL) {
                    free(name);
                    name = NULL;
                }
                name = strdup(buf + CONST_STRLEN("Content-Disposition: form-data; name=\""));
                for (c_count = 0; (name[c_count] != '\"') && (name[c_count] != '\0'); c_count++);
                name[c_count] = '\0';


                // get filename field
                if (strstr(buf, "; filename=\"") != NULL) {
                    int erase;

                    if (filename != NULL) {
                        free(filename);
                        filename = NULL;
                    }
                    filename = strdup(strstr(buf, "; filename=\"") + CONST_STRLEN("; filename=\""));
					if(filename == NULL){
						break;
					}
                    for (c_count = 0; (filename[c_count] != '\"') && (filename[c_count] != '\0'); c_count++);
                    filename[c_count] = '\0';
                    // remove directory from path, erase '\'
                    for (erase = 0, c_count = strlen(filename) - 1; c_count >= 0; c_count--) {
                        if (erase == 1) filename[c_count] = ' ';
                        else {
                            if (filename[c_count] == '\\') {
                                erase = 1;
                                filename[c_count] = ' ';
                            }
                        }
                    }
                    _q_strtrim(filename);

                    // empty attachment
                    if (!strcmp(filename, "")) {
                        if (filename != NULL) {
                            free(filename);
                            filename = NULL;
                        }
                    }
                }
            } else if (!strncasecmp(buf, "Content-Type: ", CONST_STRLEN("Content-Type: "))) {
                if (contenttype != NULL) {
                    free(contenttype);
                    contenttype = NULL;
                }
                contenttype = strdup(buf + CONST_STRLEN("Content-Type: "));
                _q_strtrim(contenttype);
            }
        }

        // check
        if (name == NULL) {
        	DEBUG_CODER("bug or invalid format.");
            continue;
        }

        // get value
        if (filename != NULL && upload_filesave == true) {
            char *tp, *savename = strdup(filename);
			if(savename == NULL){
				continue;
			}
            for (tp = savename; *tp != '\0'; tp++) {
                if (*tp == ' ') *tp = '_'; // replace ' ' to '_'
            }
            value = _parse_multipart_value_into_disk(
                        boundary, upload_basepath, savename, &valuelen, &finish);
            if(savename != NULL){
                free(savename);
                savename = NULL;
            }

            if (value != NULL) request->putstr(request, name, value, false);
            else request->putstr(request, name, "(parsing failure)", false);
        } else {
            value = _parse_multipart_value_into_memory(boundary, &valuelen, &finish);

            if (value != NULL) request->put(request, name, value, valuelen+1, false);
            else request->putstr(request, name, "(parsing failure)", false);
        }


        // store additional information
        if (value != NULL && filename != NULL) {
            char ename[255+10+1];

            // store data length, 'NAME.length'
            /*False Positive [Buffer Overflow]*//* Reason for False Positive  The size of buffer allocated is big enough cause of it is counting by two strings with the terminating null byte and snprintf() limits the length of string copied*/
            retval = snprintf(ename, sizeof(ename), "%s.length", name);
             /* Fortify [Buffer Overflow: Off-by-One]:: False Positive */
				/**
				 * Reason for False Positive: 
				 * Avoid buffer overflow once the total size of two strings without "the terminating null byte" equal or large the size of dest string.
				 */
            if(retval < 0 || retval >= (signed)sizeof(ename)) {
                DEBUG_CODER("Buffer Overflow");
                continue;
            } else {
                request->putint(request, ename, valuelen, false);
            }

            // store filename, 'NAME.filename'
             /*False Positive [Buffer Overflow]*//* Reason for False Positive  The size of buffer allocated is big enough cause of it is counting by two strings with the terminating null byte and snprintf() limits the length of string copied*/
            retval = snprintf(ename, sizeof(ename), "%s.filename", name);
            /* Fortify [Buffer Overflow: Off-by-One]:: False Positive */
				/**
				 * Reason for False Positive: 
				 * Avoid buffer overflow once the total size of two strings without "the terminating null byte" equal or large the size of dest string.
				 */
            if(retval < 0 || retval >= (signed)sizeof(ename)) {
                DEBUG_CODER("Buffer Overflow");
                continue;
            } else {
                request->putstr(request, ename, filename, false);/* Fortify [Memory Leak]:: False Positive *//* Reason for False Positive Memory cleared properly in both failure and success cases. */
            }

            // store contenttype, 'NAME.contenttype'
            /*False Positive [Buffer Overflow]*//* Reason for False Positive  The size of buffer allocated is big enough cause of it is counting by two strings with the terminating null byte and snprintf() limits the length of string copied*/
            retval = snprintf(ename, sizeof(ename), "%s.contenttype", name);
            /* Fortify [Buffer Overflow: Off-by-One]:: False Positive */
				/**
				 * Reason for False Positive: 
				 * Avoid buffer overflow once the total size of two strings without "the terminating null byte" equal or large the size of dest string.
				 */
            if(retval < 0 || retval >= (signed)sizeof(ename)) {
                DEBUG_CODER("Buffer Overflow");
                continue;
            } else {
                request->putstr(request, ename, ((contenttype!=NULL)?contenttype:""), false);/* Fortify [Memory Leak]:: False Positive *//* Reason for False Positive Memory cleared properly in both failure and success cases. */
            }

            if (upload_filesave == true) {
               /*False Positive [Buffer Overflow]*//* Reason for False Positive  The size of buffer allocated is big enough cause of it is counting by two strings with the terminating null byte and snprintf() limits the length of string copied*/
                retval = snprintf(ename, sizeof(ename), "%s.savepath", name);
                /* Fortify [Buffer Overflow: Off-by-One]:: False Positive */
				/**
				 * Reason for False Positive: 
				 * Avoid buffer overflow once the total size of two strings without "the terminating null byte" equal or large the size of dest string.
				 */
                if(retval < 0 || retval >= (signed)sizeof(ename)) {
                    DEBUG_CODER("Buffer Overflow");
                    continue;
                } else {
                    request->putstr(request, ename, value, false);
                }
            }
        }


        // free resources
        if (name != NULL) { free(name); name = NULL;}
        if (value != NULL) { free(value); value = NULL;}
        if (filename != NULL) { free(filename); filename = NULL;}
        if (contenttype != NULL) { free(contenttype); contenttype = NULL;}
    }

    return amount;
}

#define _Q_MULTIPART_CHUNK_SIZE     (16 * 1024)
static char *_parse_multipart_value_into_memory(char *boundary, int *valuelen,
        bool *finish)
{
    char boundaryEOF[MAX_BOUNDARY_LEN] = {0}, rnboundaryEOF[MAX_BOUNDARY_LEN] = {0};
    char boundaryrn[MAX_BOUNDARY_LEN] = {0}, rnboundaryrn[MAX_BOUNDARY_LEN] = {0};
    int  boundarylen = 0, boundaryEOFlen = 0;
    int  ret = 0;	
    char *value = NULL;
    int  length = 0;
    int  c = 0, c_count = 0, mallocsize = 0;

    // set boundary strings
    ret = snprintf(boundaryEOF, sizeof(boundaryEOF), "%s--", boundary);
    if(ret < 0 || ret >= (signed)sizeof(boundaryEOF))
    {
	    TCRIT("Buffer Overflow\n");
	    return NULL;
    }
    ret = snprintf(rnboundaryEOF, sizeof(rnboundaryEOF), "\r\n%s--", boundary);
    if(ret < 0 || ret >= (signed)sizeof(rnboundaryEOF))
    {
	    TCRIT("Buffer Overflow\n");
	    return NULL;
    }
    ret = snprintf(boundaryrn, sizeof(boundaryrn), "%s\r\n", boundary);
    if(ret < 0 || ret >= (signed)sizeof(boundaryrn))
    {
	    TCRIT("Buffer Overflow\n");
	    return NULL;
    }
    ret = snprintf(rnboundaryrn, sizeof(rnboundaryrn), "\r\n%s\r\n", boundary);
    if(ret < 0 || ret >= (signed)sizeof(rnboundaryrn))
    {
	    TCRIT("Buffer Overflow\n");
	    return NULL;
    }
    boundarylen    = strlen(boundary);
    boundaryEOFlen = strlen(boundaryEOF);

    for (value = NULL, length = 0, mallocsize = _Q_MULTIPART_CHUNK_SIZE, c_count = 0;
         (c = fgetc(stdin)) != EOF; ) {
        if (c_count == 0) {
            value = (char *)malloc(sizeof(char) * mallocsize);
            if (value == NULL) {
            	DEBUG_CODER("Memory allocation fail.");
                *finish = true;
                return NULL;
            }
        } else if (c_count == mallocsize - 1) {
            char *valuetmp;

            mallocsize *= 2;

            // Here, we do not use realloc(). Because sometimes it is unstable.
            valuetmp = (char *)malloc(sizeof(char) * mallocsize);
            if (valuetmp == NULL) {
                DEBUG_CODER("Memory allocation fail.");
                free(value);
                *finish = true;
                return NULL;
            }
            memcpy(valuetmp, value, c_count);
            free(value);
            value = valuetmp;
        }
        /*if(value == NULL)
        {
        	DEBUG_CODER("NULL Dereference Error\n");
        	return NULL;
        }*/
        value[c_count++] = (char)c;



        // check end
        if ((c == '\n') || (c == '-')) {
            value[c_count] = '\0';

            if ((c_count - (2 + boundarylen + 2)) >= 0) {
                if (!strcmp(value + (c_count - (2 + boundarylen + 2)), rnboundaryrn)) {
                    value[c_count - (2 + boundarylen + 2)] = '\0';
                    length = c_count - (2 + boundarylen + 2);
                    break;
                }
            }
            if ((c_count - (2 + boundaryEOFlen)) >= 0) {
                if (!strcmp(value + (c_count - (2 + boundaryEOFlen)), rnboundaryEOF)) {
                    value[c_count - (2 + boundaryEOFlen)] = '\0';
                    length = c_count - (2 + boundaryEOFlen);
                    *finish = true;
                    break;
                }
            }

            // For MS Explore on MAC
            if ((c_count - (boundarylen + 2)) == 0) {
                if (!strcmp(value, boundaryrn)) {
                    value[0] = '\0';
                    length = 0;
                    break;
                }
            }
            if ((c_count - boundaryEOFlen) == 0) {
                if (!strcmp(value, boundaryEOF)) {
                    value[0] = '\0';
                    length = 0;
                    *finish = true;
                    break;
                }
            }
        }
    }

    if (c == EOF) {
        DEBUG_CODER("Broken stream.");
        if (value != NULL) free(value);
        *finish = true;
        return NULL;
    }

    *valuelen = length;
    return value;
}

static char *_parse_multipart_value_into_disk(const char *boundary,
        const char *savedir, const char *filename, int *filelen, bool *finish)
{
    char boundaryEOF[256], rnboundaryEOF[256];
    char boundaryrn[256], rnboundaryrn[256];
    int  boundarylen, boundaryEOFlen;

    // input
    char buffer[_Q_MULTIPART_CHUNK_SIZE];
    int  bufc;
    int  c;
    if(0)
    {
        filename=filename;   /*-Wextra: flag added for strict compilation.*/
    }
    // set boundary strings
    snprintf(boundaryEOF, sizeof(boundaryEOF), "%s--", boundary);
    snprintf(rnboundaryEOF, sizeof(rnboundaryEOF), "\r\n%s--", boundary);
    snprintf(boundaryrn, sizeof(boundaryrn), "%s\r\n", boundary);
    snprintf(rnboundaryrn, sizeof(rnboundaryrn), "\r\n%s\r\n", boundary);

    boundarylen    = strlen(boundary);
    boundaryEOFlen = strlen(boundaryEOF);

    // open temp file
    char upload_path[PATH_MAX];
    snprintf(upload_path, sizeof(upload_path), "%s/q_XXXXXX", savedir);

    int upload_fd = mkstemp(upload_path);
    if (upload_fd < 0) {
        DEBUG_CODER("Can't open file %s", upload_path);
        *finish = true;
        return NULL;
    }

    // change permission
    if ( fchmod(upload_fd, DEF_FILE_MODE) < 0)
        perror(":qcgireq.c");

    // read stream
    bool ioerror = false;
    int upload_length;
    for (upload_length = 0, bufc = 0; (c = fgetc(stdin)) != EOF; ) {
        if (bufc == sizeof(buffer) - 1) {
            // save
            ssize_t leftsize = boundarylen + 8;
            ssize_t savesize = bufc - leftsize;
            ssize_t saved = write(upload_fd, buffer, savesize);
            if (saved <= 0) {
                ioerror = true; 
                break;
            }
            leftsize = bufc - saved;
            memcpy(buffer, buffer+saved, leftsize);
            bufc = leftsize;
        }
        buffer[bufc++] = (char)c;
        upload_length++;

        // check end
        if ((c == '\n') || (c == '-')) {
            buffer[bufc] = '\0';

            if ((bufc - (2 + boundarylen + 2)) >= 0) {
                if (!strcmp(buffer + (bufc - (2 + boundarylen + 2)), rnboundaryrn)) {
                    bufc          -= (2 + boundarylen + 2);
                    upload_length -= (2 + boundarylen + 2);
                    break;
                }
            }
            if ((bufc - (2 + boundaryEOFlen)) >= 0) {
                if (!strcmp(buffer + (bufc - (2 + boundaryEOFlen)), rnboundaryEOF)) {
                    bufc          -= (2 + boundaryEOFlen);
                    upload_length -= (2 + boundaryEOFlen);
                    *finish = true;
                    break;
                }
            }

            // For MS Explore on MAC
            if (upload_length == bufc) {
                if ((bufc - (boundarylen + 2)) == 0) {
                    if (!strcmp(buffer, boundaryrn)) {
                        bufc = 0;
                        upload_length = 0;
                        break;
                    }
                }
                if ((bufc - boundaryEOFlen) == 0) {
                    if (!strcmp(buffer, boundaryEOF)) {
                        bufc = 0;
                        upload_length = 0;
                        *finish = true;
                        break;
                    }
                }
            }
        }
    }

    // save rest
    while (bufc > 0) {
        ssize_t saved = write(upload_fd, buffer, bufc);
        if (saved <= 0) {
            ioerror = true;
            break;
        }
        bufc -= saved;
    }
    close(upload_fd);

    // error occured
    if (c == EOF || ioerror == true) {
        DEBUG_CODER("I/O error. (errno=%d)", (ioerror == true) ? errno : 0);
        *finish = true;
        return NULL;
    }

    // succeed
    *filelen = upload_length;
    return strdup(upload_path);
}

static int _upload_clear_base(const char *upload_basepath, int upload_clearold)
{
#ifdef _WIN32
    return false;
#else
    if (upload_clearold <= 0) return -1;

    // open upload folder
    DIR     *dp;  /* Fortify Issue:[Poor style]- False positive*/
    if ((dp = opendir(upload_basepath)) == NULL) return false;

    time_t now = time(NULL);  /* Fortify Issue:[Poor style]- False positive*/
    int removed = 0;   /* Fortify Issue:[Poor style]- False positive*/
    struct  dirent *dirp;   /* Fortify Issue:[Poor style]- False positive*/
    while ((dirp = readdir(dp)) != NULL) {
        if (!strcmp(dirp->d_name, ".") ||
            !strcmp(dirp->d_name, "..") ||
            strncmp(dirp->d_name, "q_", 2) != 0) {
            continue;
        }

        char filepath[PATH_MAX];   /* Fortify Issue:[Poor style]- False positive*/
        snprintf(filepath, sizeof(filepath), "%s/%s",
                 upload_basepath, dirp->d_name);

        // check file date
        struct stat filestat;   /* Fortify Issue:[Poor style]- False positive*/
        if (stat(filepath, &filestat) != 0) continue;
        if (filestat.st_mtime >= now + upload_clearold) continue;

        // remove file
        if (_q_unlink(filepath) == 0) removed++;
    }
    closedir(dp);

    return removed;
#endif
}

static qentry_t *_parse_query(qentry_t *request, const char *query,
                              char equalchar, char sepchar, int *count)
{
	if (request == NULL) {
		request = qEntry();
		if (request == NULL) return NULL;
	}

	char *newquery = NULL;
	int cnt = 0;

	int setFlag = 0;
	char *ck_length, *ck_filename, *ck_contenttype, *ck_savepath;

	if (query != NULL) newquery = strdup(query);
	while (newquery && *newquery) {
		char *value = _q_makeword(newquery, sepchar);
		char *name = _q_strtrim(_q_makeword(value, equalchar));

		_q_urldecode(name);
		_q_urldecode(value);

		setFlag = 0;
		ck_length = strstr(name,".length");
		ck_filename = strstr(name,".filename");
		ck_contenttype = strstr(name,".contenttype");
		ck_savepath = strstr(name,".savepath");

		if((ck_length != NULL) || (ck_filename != NULL) || (ck_contenttype != NULL) || (ck_savepath != NULL) ){
			setFlag = 1;
		}

		//removing params and cookies having upload related variables like (.length, .filename, .contenttype, .savepath)
		if(setFlag == 0){
			if (request->putstr(request, name, value, false) == true) cnt++;
		}
		free(name);
		free(value);
	}
	if (newquery != NULL) {
		free(newquery);
		newquery = NULL;
	}
	if (count != NULL) *count = cnt;

	return request;
}

#endif /* _DOXYGEN_SKIP */
