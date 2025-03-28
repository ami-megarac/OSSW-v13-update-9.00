-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: perl
Binary: perl-base, perl-doc, perl-debug, libperl5.36, libperl-dev, perl-modules-5.36, perl
Architecture: any all
Version: 5.36.0-7+deb12u1
Maintainer: Niko Tyni <ntyni@debian.org>
Uploaders: Dominic Hargreaves <dom@earth.li>
Homepage: http://dev.perl.org/perl5/
Standards-Version: 3.9.8
Vcs-Browser: https://salsa.debian.org/perl-team/interpreter/perl
Vcs-Git: https://salsa.debian.org/perl-team/interpreter/perl.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, cpio, db-util, dist, dpkg-dev, gdbmtool, libapt-pkg-perl, libdpkg-perl, pkg-perl-autopkgtest
Build-Depends: file, cpio, libdb-dev, libgdbm-dev (>= 1.18-3), libgdbm-compat-dev, netbase <!nocheck>, procps [!hurd-any] <!nocheck>, debhelper-compat (= 13), zlib1g-dev | libz-dev, libbz2-dev, dpkg-dev (>= 1.17.14), dist (>= 3.5-236), libc6-dev (>= 2.19-9) [s390x]
Package-List:
 libperl-dev deb libdevel optional arch=any
 libperl5.36 deb libs optional arch=any
 perl deb perl standard arch=any
 perl-base deb perl required arch=any essential=yes
 perl-debug deb devel optional arch=any
 perl-doc deb doc optional arch=all
 perl-modules-5.36 deb libs optional arch=all
Checksums-Sha1:
 482ccf337df6318fad5c2621afbe6794d58a0ec5 417784 perl_5.36.0.orig-regen-configure.tar.xz
 938c56a77ae094eb7f5019318a5e4efb2d9c74fa 13051500 perl_5.36.0.orig.tar.xz
 7f59052b20e059d2fd0f89c95e27dd20fd7fc355 171136 perl_5.36.0-7+deb12u1.debian.tar.xz
Checksums-Sha256:
 10ac353bc5a933403afe60ed1817e7a456f99bdbcaf80c1cdb0eb3a08ea56d4e 417784 perl_5.36.0.orig-regen-configure.tar.xz
 0f386dccbee8e26286404b2cca144e1005be65477979beb9b1ba272d4819bcf0 13051500 perl_5.36.0.orig.tar.xz
 e5680de573f95b990cf995a7189c167281785cc49589c43874736e4b8b3c9e2f 171136 perl_5.36.0-7+deb12u1.debian.tar.xz
Files:
 4cb6eb41483cc04369cf93367ea6e019 417784 perl_5.36.0.orig-regen-configure.tar.xz
 826e42da130011699172fd655e49cfa2 13051500 perl_5.36.0.orig.tar.xz
 3489ac3a413030d41698911e79d911b4 171136 perl_5.36.0-7+deb12u1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCgAvFiEEdqKOQsmBHZHoj7peLsD/s7cwGx8FAmVjaMMRHG50eW5pQGRl
Ymlhbi5vcmcACgkQLsD/s7cwGx/kOg//aW83vlinVWFUfAUIAX64fwhqlb4JN9SB
ZARtMnV7wZ1vPvPjZ2Qh6xm6TgHxMaFgxS0iUvAG196EdNX2YGAaoS/8+1wdCb5X
jrosJF+0i0t76ivVD6IFlk1cssrxf8pubXOribavFNyMtZZBqm3uhHhFBdslx8ZB
SIXTT5P433HY+/91GytgnWRdBrrzKaQiUdc6TJOwy9bzhvy5752fI9Dge48euBgp
YhaEae0CTrrJHe63okkXrgzB7drBB1vMNb9XkGeWoon5NUVoaxIEub+q02S+nlG3
kJDHqWcJyj2FkRAruAoeYtC959sBSXWLRBlxZy9Hbd9Aj3f1kXtDFBLvxoHNZk19
BhacaICz4+KhZY5mNa4B0gnB26od5W9acc0uIq4EbJG3KGHF1fsPWGwxk75HNqkX
9YzcQk22xU6887pBGOP7G/+aQMg3MUCiriuAY0Cb0kvM00cO9h2qzz0UQAblhroN
1Kyv9MpEF8Nn02lR/0R1ICozscyCHZC4t+uYboP3o2+DOakZiuydPg/HJIBo8JwL
xRBha5cX0zCeKS6IyWafSFuYslxYvFPXlG0Msw1ZQLkvbbZ0nB+q90fmi+q3j/js
LN6q6MEvGy67bcM8l3nHLc5ExAdJEgkse/u1PZ9Qk/++QLTPEZQtMvxTrfHESgcE
mYYzts3jZas=
=A4Uj
-----END PGP SIGNATURE-----
