-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: libxml2
Binary: libxml2, libxml2-utils, libxml2-dev, libxml2-doc, python3-libxml2
Architecture: any all
Version: 2.9.14+dfsg-1.3~deb12u1
Maintainer: Debian XML/SGML Group <debian-xml-sgml-pkgs@lists.alioth.debian.org>
Uploaders:  Aron Xu <aron@debian.org>, YunQiang Su <wzssyqa@gmail.com>,
Homepage: http://xmlsoft.org
Description: GNOME XML library
 XML is a metalanguage to let you design your own markup language.
 A regular markup language defines a way to describe information in
 a certain class of documents (eg HTML). XML lets you define your
 own customized markup languages for many classes of document. It
 can do this because it's written in SGML, the international standard
 metalanguage for markup languages.
Standards-Version: 4.6.0
Vcs-Browser: https://salsa.debian.org/xml-sgml-team/libxml2
Vcs-Git: https://salsa.debian.org/xml-sgml-team/libxml2.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, pkg-config
Build-Depends: debhelper-compat (= 13)
Build-Depends-Arch: dh-sequence-python3 <!nopython>, libicu-dev, liblzma-dev, libpython3-all-dev <!nopython>, pkg-config, python3-all-dev:any (>= 3.5) <!nopython>, rename, zlib1g-dev | libz-dev
Build-Depends-Indep: pkg-config
Package-List:
 libxml2 deb libs optional arch=any
 libxml2-dev deb libdevel optional arch=any
 libxml2-doc deb doc optional arch=all
 libxml2-utils deb text optional arch=any
 python3-libxml2 deb python optional arch=any profile=!nopython
Checksums-Sha1:
 b41615e638174b4e36845c68d4b305dd6a6b541f 2351200 libxml2_2.9.14+dfsg.orig.tar.xz
 3953c8da84eba2958927d857be6df79885a1426f 35100 libxml2_2.9.14+dfsg-1.3~deb12u1.debian.tar.xz
Checksums-Sha256:
 4fe913dec8b1ab89d13b489b419a8203176ea39e931eaa0d25b17eafb9c279e9 2351200 libxml2_2.9.14+dfsg.orig.tar.xz
 7ea1d2de7fa1d6fd9c5c80acc5a535c3c3e7540f3511ca14544700fe4bbb3279 35100 libxml2_2.9.14+dfsg-1.3~deb12u1.debian.tar.xz
Files:
 bbcae2f48d1c9b1413ef953ce87e9346 2351200 libxml2_2.9.14+dfsg.orig.tar.xz
 3f70197f828226b0b8f0b63afac041f1 35100 libxml2_2.9.14+dfsg-1.3~deb12u1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQKmBAEBCgCQFiEERkRAmAjBceBVMd3uBUy48xNDz0QFAmSsY6FfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDQ2
NDQ0MDk4MDhDMTcxRTA1NTMxRERFRTA1NENCOEYzMTM0M0NGNDQSHGNhcm5pbEBk
ZWJpYW4ub3JnAAoJEAVMuPMTQ89EVLwP/jEVeAafrVSdHZ/qo/dADGfPR6TEMXsp
GK1X4RmhdE84NCGR2iNQCnxHDJN9Ey6XnvZXEOF+VVqUjVVrcNz5w51TzCOJ3kgl
xmBRdAail0SWCIC7wAD3fk2SSV2JnTuIdfxGWoqqEvJT4mdTw/yC3eRlPtjQPIx9
AOruc2J6VJ62WdB95t+Yhh0Q7dbuygdSDshaflwEpv0QllwdP0+dd+KlJJuBxOka
086qjoIexQtaUvZGifLuhCJpASdHzM1gGFRcB/ghdvjLvemaXGtaPr7H40sGGEzV
dulEZ+C/oE0XrffD0lutNU4LhluLlxvh4+TVWExzEZ46dCRMcni7gZCJ2ojPlyv5
t4uGgvuyG3trCTLlGnpjjkjVeYSBQzgP/FzpSZzepXcuMLws/+uMlI6QKT63tZz9
IVv0yPp+YcdbUXmz7RQhpYJs/keBo1f2Uo3sQaGS1Pr4pMwVwRpS0kKxK2NAi0Nt
bMuYl2k9hGNRKa06KmFpQgnCk5XsbjnQfZbgNZMnKTQ2qWoxwlBoGXGELgl/aZVc
X8psOSe3WRq3ImLqFY5Hr5ocXUCPSQrypAjOGk5KM250wYujNrkIbpLQbVrcdeIx
ryeJLvUTzRbpwAhv5W0Oh8LDngPZbThp2yTyDFSoPeOiK2hoIQvdJIzvJ7pabhGH
xY7X+iwj/DPc
=Kw91
-----END PGP SIGNATURE-----
