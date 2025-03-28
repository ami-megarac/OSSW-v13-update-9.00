-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: openldap
Binary: slapd, slapd-contrib, slapd-smbk5pwd, ldap-utils, libldap-2.5-0, libldap-common, libldap-dev, libldap2-dev, slapi-dev
Architecture: any all
Version: 2.5.13+dfsg-5
Maintainer: Debian OpenLDAP Maintainers <pkg-openldap-devel@lists.alioth.debian.org>
Uploaders: Steve Langasek <vorlon@debian.org>, Torsten Landschoff <torsten@debian.org>, Ryan Tandy <ryan@nardis.ca>, Sergio Durigan Junior <sergiodj@debian.org>
Homepage: https://www.openldap.org/
Standards-Version: 4.6.0
Vcs-Browser: https://salsa.debian.org/openldap-team/openldap
Vcs-Git: https://salsa.debian.org/openldap-team/openldap.git
Testsuite: autopkgtest
Testsuite-Triggers: heimdal-kdc, openssl, samba, schema2ldif
Build-Depends: debhelper-compat (= 12), dpkg-dev (>= 1.17.14), groff-base, heimdal-multidev (>= 7.4.0.dfsg.1-1~) <!pkg.openldap.noslapd>, libargon2-dev <!pkg.openldap.noslapd>, libgnutls28-dev, libltdl-dev <!pkg.openldap.noslapd>, libperl-dev (>= 5.8.0) <!pkg.openldap.noslapd>, libsasl2-dev, libwrap0-dev <!pkg.openldap.noslapd>, nettle-dev <!pkg.openldap.noslapd>, openssl <!nocheck>, perl:any, pkg-config (>= 0.29), po-debconf, unixodbc-dev <!pkg.openldap.noslapd>
Build-Conflicts: autoconf2.13, bind-dev, libbind-dev
Package-List:
 ldap-utils deb net optional arch=any
 libldap-2.5-0 deb libs optional arch=any
 libldap-common deb libs optional arch=all
 libldap-dev deb libdevel optional arch=any
 libldap2-dev deb oldlibs optional arch=all
 slapd deb net optional arch=any profile=!pkg.openldap.noslapd
 slapd-contrib deb net optional arch=any profile=!pkg.openldap.noslapd
 slapd-smbk5pwd deb oldlibs optional arch=all profile=!pkg.openldap.noslapd
 slapi-dev deb libdevel optional arch=any profile=!pkg.openldap.noslapd
Checksums-Sha1:
 ebccbf4ba733bcf1d2bc41c3ecef4528a7de7878 3727704 openldap_2.5.13+dfsg.orig.tar.xz
 85f3a0603c1ea0a6e955ad342121bde20a407071 164516 openldap_2.5.13+dfsg-5.debian.tar.xz
Checksums-Sha256:
 1d95c400a3eae6730246614ef16883de3dbd1b14b01a1ebe3a9aa1ccad2c13ec 3727704 openldap_2.5.13+dfsg.orig.tar.xz
 161e22c1c79e2f7c6013cfc2bbf0265d6bbb78d91a0fcfa9ca866837f2c31d88 164516 openldap_2.5.13+dfsg-5.debian.tar.xz
Files:
 a0e79d20e2861f906f08574c530299af 3727704 openldap_2.5.13+dfsg.orig.tar.xz
 e52f28b630246ee037c7e87aaa9ce0e1 164516 openldap_2.5.13+dfsg-5.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQJDBAEBCgAtFiEEPSfh0nqdQTd5kOFlIp/PEvXWa7YFAmPjDggPHHJ5YW5AbmFy
ZGlzLmNhAAoJECKfzxL11mu2K4gP/R11F0VPB3Wf7GhI4HZJC7t7cRsF/2ahIeVs
ogBTK3bypbo+JtDkB7r0iTt+Yca1FnHIO/v6I7Fe2SaR8WSKVGh0PwaHFulB24YL
N52J7GbrR8sUzwYIRI0Z02tRPL2AEBPQXFqbxQVij2a0/7ZI+uQRpYlLAD61NNpo
JdbCvPFR4/gTI5pb/+xu0qKh4r3geoB5BY3vlNPzK8AnmuqS/sex2iscS4FyuV/j
dFQCmpK8h7YuoVBZ2s8WJ9Eh7UqOr6Cf/OXPBj9DNVoLAsoOgKPcMscSIb4atYS0
XgGgLJ5gclX7KtWjWItRcLRoS7gOL8Ia3+1/Un+pCPh6dNhpElBVIAQPL7k1qHpL
sj+NBrRHE1h66XieIvuWZ+P2r20uEIhZdPOzE/czgNUF1wlZAYnlc8XjL6/xL5HE
UWVmbxEXVneyNOO43Fj9p8i17NZ/CzIVvkc5gZLfCag6e4IYjeEQP8GvA0Ubtixz
PQ8N5UbzL3fG1YYkt0x7YtnIKNBt24NINOgXwAm0BsLm0v+g4+yZuGngrNGFvZZk
5RUPYG+8/0WGGtlKc4M/ssfIYGxKd33NdkZYYyjcI0kr3L46ZHG1anQIImP/kxLA
uoMaiu4r9Mm4RAcpUUIufwN4NHIxBjL5il5Fp10PTq0wW/EuIGX+t2Bj6z33q4vu
+5ar1AAU
=F7Ua
-----END PGP SIGNATURE-----
