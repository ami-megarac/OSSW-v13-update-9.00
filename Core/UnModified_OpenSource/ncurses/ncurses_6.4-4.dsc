-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: ncurses
Binary: ncurses-base, ncurses-term, libtinfo6, libtinfo6-udeb, libncurses6, libncurses-dev, libtinfo-dev, libncurses5-dev, libncursesw6, libncursesw6-udeb, libncursesw5-dev, lib64tinfo6, lib64ncurses6, lib64ncursesw6, lib64ncurses-dev, lib32tinfo6, lib32ncurses6, lib32ncursesw6, lib32ncurses-dev, ncurses-bin, ncurses-examples, ncurses-doc, libtinfo5, libncurses5, libncursesw5
Architecture: any all
Version: 6.4-4
Maintainer: Craig Small <csmall@debian.org>
Uploaders: Sven Joachim <svenjoac@gmx.de>
Homepage: https://invisible-island.net/ncurses/
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/debian/ncurses
Vcs-Git: https://salsa.debian.org/debian/ncurses.git
Build-Depends: debhelper-compat (= 13), libgpm-dev [linux-any], pkg-config, autoconf-dickey (>= 2.52+20210509)
Build-Depends-Arch: g++-multilib [amd64 i386 powerpc ppc64 s390 sparc] <!nobiarch>
Package-List:
 lib32ncurses-dev deb libdevel optional arch=amd64,ppc64 profile=!nobiarch
 lib32ncurses6 deb libs optional arch=amd64,ppc64 profile=!nobiarch
 lib32ncursesw6 deb libs optional arch=amd64,ppc64 profile=!nobiarch
 lib32tinfo6 deb libs optional arch=amd64,ppc64 profile=!nobiarch
 lib64ncurses-dev deb libdevel optional arch=i386,powerpc,sparc,s390 profile=!nobiarch
 lib64ncurses6 deb libs optional arch=i386,powerpc,sparc,s390 profile=!nobiarch
 lib64ncursesw6 deb libs optional arch=i386,powerpc,sparc,s390 profile=!nobiarch
 lib64tinfo6 deb libs optional arch=i386,powerpc,sparc,s390 profile=!nobiarch
 libncurses-dev deb libdevel optional arch=any
 libncurses5 deb oldlibs optional arch=any profile=!pkg.ncurses.nolegacy
 libncurses5-dev deb oldlibs optional arch=any
 libncurses6 deb libs optional arch=any
 libncursesw5 deb oldlibs optional arch=any profile=!pkg.ncurses.nolegacy
 libncursesw5-dev deb oldlibs optional arch=any
 libncursesw6 deb libs optional arch=any
 libncursesw6-udeb udeb debian-installer optional arch=any profile=!noudeb
 libtinfo-dev deb oldlibs optional arch=any
 libtinfo5 deb oldlibs optional arch=any profile=!pkg.ncurses.nolegacy
 libtinfo6 deb libs optional arch=any
 libtinfo6-udeb udeb debian-installer optional arch=any profile=!noudeb
 ncurses-base deb misc required arch=all essential=yes
 ncurses-bin deb utils required arch=any essential=yes
 ncurses-doc deb doc optional arch=all
 ncurses-examples deb misc optional arch=any profile=!pkg.ncurses.noexamples
 ncurses-term deb misc standard arch=all
Checksums-Sha1:
 bb5eb3f34b3ecd5bac8d0b58164b847f135b3d62 3612591 ncurses_6.4.orig.tar.gz
 458b76ccb06a59345a4bf1706e552d78cef108f4 729 ncurses_6.4.orig.tar.gz.asc
 28fc6bf9cf2b2c8dd1e1afa0487ea6920d2071b9 56556 ncurses_6.4-4.debian.tar.xz
Checksums-Sha256:
 6931283d9ac87c5073f30b6290c4c75f21632bb4fc3603ac8100812bed248159 3612591 ncurses_6.4.orig.tar.gz
 f9096c5311eab61908c142e77e58f503f9228e13d351365b3c331ca5ad5a67db 729 ncurses_6.4.orig.tar.gz.asc
 97218f48c32e375121d33ebc8a0f53afadb776ddace9003f032970749a33677d 56556 ncurses_6.4-4.debian.tar.xz
Files:
 5a62487b5d4ac6b132fe2bf9f8fad29b 3612591 ncurses_6.4.orig.tar.gz
 2e13286198294bbfad983167b1e719f1 729 ncurses_6.4.orig.tar.gz.asc
 f3f4382f40347e48b1fbf864c28aa84a 56556 ncurses_6.4-4.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEKF8heKgv5Jai5p4QOxBucY1rMawFAmRXt5YACgkQOxBucY1r
MayGNRAAzcEQTL80RwGVbFX1hnH6J5SLZIjj8oaFw/Ym1BYICQk8i/8HvB1+M5Z2
YXj05g8jZJFU+BKv0bke33Sgfu90Hm4auwnk8uFe7pWdN2Ip5C8V20R74k9Na7Ag
F4Ef0c/HPkA/DAXQOjotQriEpZvxbZbgrK4nwoN5Q4kmvMeGD+3F+vgMCEOj4yzg
4mU/LjF377mw+awX8tFqgT+esw75v97a0Ix+glo6SzuAIkktL+UBBwrtCpgSytxV
uHLkXLnvcl4PRxfd36xQTD7+v73ZU93srLm6Q81e+ExFNXe8Jb5fLl4NLyRWmOio
XqGL2Zc8Noz5cta40aRdKVfK0fsJzsz/IUeME/GJW7qf9KwIW/OgvzFt/69gLBcE
XN9rkf2DQL8gHaIlA5GWvAV4UwF7Z+c8Xf/EwXcM/3xwuLUcFjuklOeZ30gD3qiA
DUBwP9l7muScEj4OKjU2YS9yILAy82Czn+XI1CSISvqOe4o3kVZCDpEwCFLipaUU
IvWC0hU6XPCBpqEErpJkvWaOLUplBrxr+Odu575wO6I0zhBAiW1/NsyFIKaEculi
XTwCBN2jrvmw0NIjynNuuefn1e0PgASMeVv3YZLuhaEoHhHReEF4YtKocRM7sOZh
/zTHlks6YEABPJtzNnVVDVWaNZtYGMBl89Lz3qorKYf+ojzX7VI=
=R5aR
-----END PGP SIGNATURE-----
