-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: tcp-wrappers
Binary: tcpd, libwrap0, libwrap0-dev
Architecture: any
Version: 7.6.q-32
Maintainer: Marco d'Itri <md@linux.it>
Standards-Version: 4.6.2.0
Vcs-Browser: https://salsa.debian.org/md/tcp-wrappers
Vcs-Git: https://salsa.debian.org/md/tcp-wrappers.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential
Build-Depends: debhelper-compat (= 13), libnsl-dev | libc6-dev (<< 2.31-4)
Package-List:
 libwrap0 deb libs optional arch=any
 libwrap0-dev deb libdevel optional arch=any
 tcpd deb net optional arch=any
Checksums-Sha1:
 61689ec85b80f4ca0560aef3473eccd9e9e80481 99438 tcp-wrappers_7.6.q.orig.tar.gz
 62d426b44cfa17976b2ddd7d97fbdb2609c8518c 38040 tcp-wrappers_7.6.q-32.debian.tar.xz
Checksums-Sha256:
 9543d7adedf78a6de0b221ccbbd1952e08b5138717f4ade814039bb489a4315d 99438 tcp-wrappers_7.6.q.orig.tar.gz
 deec7966808407ddcb11581380c7253c348bd8780da6c9ee17fa9e7a729539fe 38040 tcp-wrappers_7.6.q-32.debian.tar.xz
Files:
 e6fa25f71226d090f34de3f6b122fb5a 99438 tcp-wrappers_7.6.q.orig.tar.gz
 8152f6da523207adcf1b4d9958b478b5 38040 tcp-wrappers_7.6.q-32.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQQnKUXNg20437dCfobLPsM64d7XgQUCY6ue0QAKCRDLPsM64d7X
gfsiAP4jQRRYxlXT3c11hTUM7lgeclxPjRRLzQoJULwrPWHTSQD/W7Bm90p6PYsL
51QpC8+zOJfUFn7VRg99vL867tSaAQI=
=6JpR
-----END PGP SIGNATURE-----
