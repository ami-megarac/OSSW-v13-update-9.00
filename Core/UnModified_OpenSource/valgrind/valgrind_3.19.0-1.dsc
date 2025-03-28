-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: valgrind
Binary: valgrind, valgrind-dbg, valgrind-mpi
Architecture: amd64 arm64 armhf i386 mips mipsel mips64 mips64el powerpc ppc64 ppc64el s390x
Version: 1:3.19.0-1
Maintainer: Alessandro Ghedini <ghedo@debian.org>
Homepage: http://www.valgrind.org/
Standards-Version: 4.6.1
Vcs-Browser: https://salsa.debian.org/debian/valgrind
Vcs-Git: https://salsa.debian.org/debian/valgrind.git
Testsuite: autopkgtest
Build-Depends: debhelper-compat (= 13), gdb, gcc-multilib [amd64], libc6-dev-i386 [amd64], mpi-default-dev, pkg-config, docbook, docbook-xsl, docbook-xml, xsltproc
Package-List:
 valgrind deb devel optional arch=amd64,arm64,armhf,i386,mips,mipsel,mips64,mips64el,powerpc,ppc64,ppc64el,s390x
 valgrind-dbg deb debug optional arch=amd64,arm64,armhf,i386,mips,mipsel,mips64,mips64el,powerpc,ppc64,ppc64el,s390x
 valgrind-mpi deb devel optional arch=amd64,arm64,armhf,i386,mips,mipsel,mips64,mips64el,powerpc,ppc64,ppc64el,s390x
Checksums-Sha1:
 294c341b421b4d9534e42e8125f509c148f48c17 16403296 valgrind_3.19.0.orig.tar.bz2
 be9d3c2e1b73a8f0a4cca4af52cda5d7d83e7992 27180 valgrind_3.19.0-1.debian.tar.xz
Checksums-Sha256:
 dd5e34486f1a483ff7be7300cc16b4d6b24690987877c3278d797534d6738f02 16403296 valgrind_3.19.0.orig.tar.bz2
 ed25e588931e88b79b50dc69e7a6ff2470ba407bfa54bf1e9d4ffd382ffe7b52 27180 valgrind_3.19.0-1.debian.tar.xz
Files:
 4687a4990585a038c52f842448ef4e63 16403296 valgrind_3.19.0.orig.tar.bz2
 6fc20107756d7c098b2d4a174e4a10a0 27180 valgrind_3.19.0-1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCgAvFiEEBsId305pBx+F583DbwzL4CFiRygFAmMLSt4RHGdoZWRvQGRl
Ymlhbi5vcmcACgkQbwzL4CFiRygROg//UmLunoLE7DR9lfmVDNCxyekVqDec6Qou
QxrfqwKREPpRAA/GvMA5ddYuG+tz1FDIaMCS9AQ3BTP1SHSnbUQe/z1cPmCn691f
pqQOdWx9Ksq74sSzhICyF7n2qt0PNJt95BGHkQoKL6rTEE5CE/Uw4Ot7XGeFpqZZ
3b+mDhM7qi1TxY9/7m1CaI61t1klXQJI72R2Ocp3gVzcuqnbIq7KcDDUTQDHKg+8
7H25XWbmQMaNXojow+sBLB/Oz61rshTSIJyxo+AoGYlcXr8cJzv0XnSRWKpmSRF6
/RfE8CCZWQKpgejfznnH6EFLuvDdKt6Y2Cg+8zSERd8nIf2Jtqr4KLXvEAkZy/+M
2PG1tvIoTYRU5S+pnIAD7C/6PmPQYr0qcD7GxBjB4xzCcgdvOdWSnmdsicKIO5Ty
roe91jNxAJD+j8drX/4YYKPxO+yRZppihAe1RAiMWrJMq/7sTixUKCLMcTKZseDt
9TV7lnZ6TdU1Xy/GwEjBTYLEoXM9yMa7V5zBymkeh6kaVEA3X9ZyHNo3qLzLihak
ifPf8A5hkrS2t3CcAKmH+3oIHFbk1/xglrtdUiZ6UUQtiFZbGXSPxEX456WZgVwy
MdTCDxkT+i4cZBcTrJvSEMHjIqMB3OmiXCtX+RHUKLPqsmBxogp/GAI+NdDHHbIL
ztVmiDty0AU=
=Km3P
-----END PGP SIGNATURE-----
