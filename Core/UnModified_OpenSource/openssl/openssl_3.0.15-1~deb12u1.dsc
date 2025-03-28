-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: openssl
Binary: openssl, libssl3, libcrypto3-udeb, libssl3-udeb, libssl-dev, libssl-doc
Architecture: any all
Version: 3.0.15-1~deb12u1
Maintainer: Debian OpenSSL Team <pkg-openssl-devel@alioth-lists.debian.net>
Uploaders: Christoph Martin <christoph.martin@uni-mainz.de>, Kurt Roeckx <kurt@roeckx.be>, Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Homepage: https://www.openssl.org/
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/debian/openssl
Vcs-Git: https://salsa.debian.org/debian/openssl.git
Testsuite: autopkgtest
Testsuite-Triggers: perl
Build-Depends: debhelper-compat (= 13), m4, bc, dpkg-dev (>= 1.15.7)
Package-List:
 libcrypto3-udeb udeb debian-installer optional arch=any profile=!noudeb
 libssl-dev deb libdevel optional arch=any
 libssl-doc deb doc optional arch=all
 libssl3 deb libs optional arch=any
 libssl3-udeb udeb debian-installer optional arch=any profile=!noudeb
 openssl deb utils optional arch=any
Checksums-Sha1:
 cecd647994de5b6bd065d88d8c81ad30f8ac6409 15318633 openssl_3.0.15.orig.tar.gz
 1800c5c002de9d0a81dc7820178b1c96869de2aa 833 openssl_3.0.15.orig.tar.gz.asc
 2aaa3f6f2406ff4fe8aa1b84b69d6e2b4cb3d9b1 55220 openssl_3.0.15-1~deb12u1.debian.tar.xz
Checksums-Sha256:
 23c666d0edf20f14249b3d8f0368acaee9ab585b09e1de82107c66e1f3ec9533 15318633 openssl_3.0.15.orig.tar.gz
 781ffd542b9ec58d88333abb9af7fb8133059703f023a0b1a555086c51b2b3de 833 openssl_3.0.15.orig.tar.gz.asc
 c4428a53771dd15b8cb1de4a790fae23b849438bd59f853f2ac686eee7e38876 55220 openssl_3.0.15-1~deb12u1.debian.tar.xz
Files:
 08f458c00fff496a52ef931c481045cd 15318633 openssl_3.0.15.orig.tar.gz
 ff2a0b40ee7d92996e6c4c8c412a3a57 833 openssl_3.0.15.orig.tar.gz.asc
 f6e19decabfc830fa7765f0b843a9c2f 55220 openssl_3.0.15-1~deb12u1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZCVGlf/wqkRmzBnme5boFiqM9dEFAmcenCkACgkQe5boFiqM
9dGYzg//djJ7HU/GRIDO14WsiGqODEFNPOjf8dwrTTrD3pP4q6FlMuEtljjYnOs5
BqGnnJZoKxAaLejyAMumbdXcImdZ0Vv/zZruEl/0BMYnJJeGPmKFIpU3nSrR/6mJ
Z17jd7n5YW5R3C4A/TkyT8W+Q4vIn2AUzCyE704tREe4ttRnnD+LgkaedCkupcqX
kMRbUFz3vZymSlEFzoGW7ZcO8BuSgkiDo4ywNd67VTmN5IMF5Kx2vlogyiWqCgcR
eevWlrNL6ybPFanp0/IbVZLBx/ZSOqODJ6SmGw0sZWQrSKSyNGaWx6SxxSPGIn/v
CRFiAXgVddjqhjzjI1OCIm7KbM+QxKGZ0bny0PnUix7DHwoeMNkcLSEGxKNK+3o8
djFPvxQFggEVfJ99DBDCZZ1ot3/Rh/HG5aFXIX5nu6j0oijLV9wvcdTwsXm6oV05
NgLU6MyhycIHcKS37K2hncjojog08QNsjnPwA4w/CV9Zq4nsiYAZ+MnvMGLbggQs
yeZfwGEONjnaj6zRQsK64+3M8C9+fScDIJOebtVMFJvzXcVZQVa11BsDQC1NCLKE
oKjkexbrdIwpsLOU3wD8DSLGRpiBY3hGz5whdFYz/8MmzqRjhbun39lrXRW7xqFH
L2fJEovA+EORv43/vMyUq4poRQnUFDbfELska2aoagydK8dYacs=
=7Y+C
-----END PGP SIGNATURE-----
