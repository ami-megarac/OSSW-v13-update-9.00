-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: nghttp2
Binary: libnghttp2-dev, libnghttp2-doc, libnghttp2-14, nghttp2-client, nghttp2-proxy, nghttp2-server, nghttp2
Architecture: any all
Version: 1.52.0-1+deb12u2
Maintainer: Tomasz Buchert <tomasz@debian.org>
Uploaders: Ondřej Surý <ondrej@debian.org>
Homepage: https://nghttp2.org/
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/debian/nghttp2
Vcs-Git: https://salsa.debian.org/debian/nghttp2.git
Testsuite: autopkgtest
Testsuite-Triggers: nginx
Build-Depends: debhelper (>= 13), debhelper-compat (= 13), libc-ares-dev, libcunit1-dev <!nocheck>, libev-dev, libjansson-dev, libjemalloc-dev [!hurd-i386], libssl-dev, libsystemd-dev, libxml2-dev, pkg-config, zlib1g-dev
Build-Depends-Indep: python3-sphinx, python3-sphinx-rtd-theme
Package-List:
 libnghttp2-14 deb libs optional arch=any
 libnghttp2-dev deb libdevel optional arch=any
 libnghttp2-doc deb doc optional arch=all
 nghttp2 deb httpd optional arch=all
 nghttp2-client deb httpd optional arch=any
 nghttp2-proxy deb httpd optional arch=any
 nghttp2-server deb httpd optional arch=any
Checksums-Sha1:
 88b51cc1f474df906ce3c3dc363bdf0cae3d76d0 1064232 nghttp2_1.52.0.orig.tar.gz
 1df1e9cb689ef10c1722485a469f849d3885db80 19076 nghttp2_1.52.0-1+deb12u2.debian.tar.xz
Checksums-Sha256:
 6b71561a9950b4a90fa36aa3160763f1437f3730d7a12434e416aa3f4ab145e0 1064232 nghttp2_1.52.0.orig.tar.gz
 37335fd2f60de4e4aada982cbe0f6111437bacf16cba055ea535be9dd2df98c7 19076 nghttp2_1.52.0-1+deb12u2.debian.tar.xz
Files:
 1a6b9d0a167cda033c7525818576dbd7 1064232 nghttp2_1.52.0.orig.tar.gz
 e2c84e257490c104e20e8abe19df5276 19076 nghttp2_1.52.0-1+deb12u2.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOvp1f6xuoR0v9F3wiNJCh6LYmLEFAmb4NrwACgkQiNJCh6LY
mLFb3BAAg5KehcgcIxNcAZdsPsbxSregE+ELxZALlizGM7vkWiadrAVCiL0H77iL
xr3d/6LI6+kPzeYo11DSJ0ka7+mHCCAxMc9dnBlYgzTDd5Kl8b29UU+8yZ6xOUrg
6bWfW7c+CT7wT6lmUpn7NrsvoUDUJ/qVams2rfPiR3dCGb87v84Donuv1sVce+r6
aZ19V+lfSwqtLGqAJ4m2k0Mslc6pAdXEUIO8GxveJZ/spWOyyNP3WAjLine12i8Q
ghzKmxWnr4cbLgBLO4lnQWucUxUdUvkM/bwfMAq9fLi30CzDXCcSiz9T0R5IPgyE
L500uD3DjgiZvVtPcIG2gr6e8GNnWBtzqfo0PaDEy+kNVHn0S4AWws0yR6pFsoQ2
eqMtutHiIGM/bCmQh+sIDU5YeCruJWDul2uqRmeBSgmyiEf6to+UZsGAIkKw5CoY
8FeZgGDgG5KKcDIbeADzUb8IRm0szCSvEWYqghe0jOOzlpb42CnsIArfCJWnVyks
pPtc+4ZfjHAz8D72CiA1iJjAN5/wSeskXJSPXVSEuR1x2xfjj7WjAD5uRvUjogXi
y23Uy4E86L8L5pn2d0kKWgynQhgMWSg2aWT2dXl/joHYY24yxb0tKShQVTEunybc
dR9+FQWTZ+kuNrYbLm6hmge395zaBDZloA4ItR6FBcpIQP2sAPM=
=ggnp
-----END PGP SIGNATURE-----
