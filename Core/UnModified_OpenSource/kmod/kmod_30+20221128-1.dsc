-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: kmod
Binary: kmod, libkmod2, libkmod-dev, kmod-udeb, libkmod2-udeb
Architecture: linux-any
Version: 30+20221128-1
Maintainer: Marco d'Itri <md@linux.it>
Standards-Version: 4.6.1.0
Vcs-Browser: https://salsa.debian.org/md/kmod
Vcs-Git: https://salsa.debian.org/md/kmod.git
Build-Depends: debhelper-compat (= 13), autoconf, automake, libtool, pkg-config | pkgconf, liblzma-dev, libssl-dev, libzstd-dev, zstd <!nocheck>, gtk-doc-tools, xsltproc
Package-List:
 kmod deb admin important arch=linux-any
 kmod-udeb udeb debian-installer important arch=linux-any
 libkmod-dev deb libdevel optional arch=linux-any
 libkmod2 deb libs optional arch=linux-any
 libkmod2-udeb udeb debian-installer important arch=linux-any
Checksums-Sha1:
 f71ee23e47ae9c57c6cd5e90be13e16c5684df49 255856 kmod_30+20221128.orig.tar.xz
 290458f84b3b37ade7ce60f100b70b3d6ef65d17 9228 kmod_30+20221128-1.debian.tar.xz
Checksums-Sha256:
 00bc9ae4f1f9e1bbc1266d838452865bc7c24271d0853939edbe3029ad22af4e 255856 kmod_30+20221128.orig.tar.xz
 2676ba1c4d0526a47f9c678f1701e04bbb76297a6785c0ef6dc6973297cd99d8 9228 kmod_30+20221128-1.debian.tar.xz
Files:
 be98e23abbfb2290f7099fdd5ffbca70 255856 kmod_30+20221128.orig.tar.xz
 b402f7ae3dfaa48b2368bf65c927db95 9228 kmod_30+20221128-1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQQnKUXNg20437dCfobLPsM64d7XgQUCY5PMxwAKCRDLPsM64d7X
gX6VAQDD+0YPdbiFL5FbkC2UbV3G3EcNCX14MtSbapJfhb7mXgD/Yrj8tt2moVZH
aJKYrzFHhVd7JnvbP5uxaYuI1x9l0gg=
=1Tzs
-----END PGP SIGNATURE-----
