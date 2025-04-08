-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: elfutils
Binary: elfutils, libelf1, libelf-dev, libdw-dev, libdw1, libasm1, libasm-dev, libdebuginfod1, libdebuginfod-dev, debuginfod, libdebuginfod-common
Architecture: any all
Version: 0.192-4~bpo12+1
Maintainer: Debian Elfutils Maintainers <debian-gcc@lists.debian.org>
Uploaders: Kurt Roeckx <kurt@roeckx.be>, Matthias Klose <doko@debian.org>, Sergio Durigan Junior <sergiodj@debian.org>,
Homepage: https://sourceware.org/elfutils/
Standards-Version: 4.7.0
Vcs-Browser: https://salsa.debian.org/toolchain-team/elfutils
Vcs-Git: https://salsa.debian.org/toolchain-team/elfutils.git
Build-Depends: debhelper (>= 11), autoconf, automake, lsb-release, bzip2, zlib1g-dev, zlib1g-dev:native, libbz2-dev, liblzma-dev, libzstd-dev, zstd <!nocheck>, m4, gettext, po-debconf, gawk, dpkg-dev (>= 1.16.1~), gcc-multilib [any-amd64 sparc64] <!nocheck>, libc6-dbg [powerpc powerpcspe ppc64 ppc64el armel armhf arm64 sparc64 riscv64], flex, bison, pkgconf, libarchive-dev <!pkg.elfutils.nodebuginfod>, libjson-c-dev <!pkg.elfutils.nodebuginfod>, libmicrohttpd-dev <!pkg.elfutils.nodebuginfod>, libcurl4-gnutls-dev <!pkg.elfutils.nodebuginfod>, libsqlite3-dev <!pkg.elfutils.nodebuginfod>
Build-Conflicts: autoconf2.13
Package-List:
 debuginfod deb devel optional arch=any profile=!pkg.elfutils.nodebuginfod
 elfutils deb utils optional arch=any
 libasm-dev deb libdevel optional arch=any
 libasm1 deb libs optional arch=any
 libdebuginfod-common deb devel optional arch=all profile=!pkg.elfutils.nodebuginfod
 libdebuginfod-dev deb libdevel optional arch=any profile=!pkg.elfutils.nodebuginfod
 libdebuginfod1 deb libs optional arch=any profile=!pkg.elfutils.nodebuginfod
 libdw-dev deb libdevel optional arch=any
 libdw1 deb libs optional arch=any
 libelf-dev deb libdevel optional arch=any
 libelf1 deb libs optional arch=any
Checksums-Sha1:
 2dbae5652dcf5927213df0058969a62070dfa56e 11913897 elfutils_0.192.orig.tar.bz2
 ca98a37a0bcf2712f14bd2877aeae4fdaa4b57e2 44400 elfutils_0.192-4~bpo12+1.debian.tar.xz
Checksums-Sha256:
 616099beae24aba11f9b63d86ca6cc8d566d968b802391334c91df54eab416b4 11913897 elfutils_0.192.orig.tar.bz2
 bb7aeed6df5bc96a5b079e65151e3f6083154e9f174c0fa38edb8af22f76d9f9 44400 elfutils_0.192-4~bpo12+1.debian.tar.xz
Files:
 a6bb1efc147302cfc15b5c2b827f186a 11913897 elfutils_0.192.orig.tar.bz2
 61a6ddc569b2f585513162a241912fb5 44400 elfutils_0.192-4~bpo12+1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQJIBAEBCgAyFiEEI3pUsQKHKL8A7zH00Ot2KGX8XjYFAmelPu0UHHNlcmdpb2Rq
QGRlYmlhbi5vcmcACgkQ0Ot2KGX8XjZGPg/+PYPcqScx9LAOCMcTdRfrO72FynAm
Eh74mL9qeNkXYBM1v5/lwFE6XJBHFGQ5B5JYSNX0DfE1I0ow1AFNFT9gn4bVBQqt
bnvHxmR9tn/u6ZZm68PTJmRCtHIMjmnFg06x7i/fMEsbGha2AGxaekIgs3+XDbdY
Up40R5MmTLsQ7+OCwxL/JyDZ1W+Ha2eu8k/yW7Qtxq5pPJPyHh2URdjZp3G8TaBq
REvHG3LmhFIxO0ChdlhiC3j7y52TVpn33tB0UX817zFj1nUCwHzVFkLOZj/Dfzyx
NDafAsMlWaZCn0uCw0GGg3buJypgGZECTQ6e7holAvN/W6JZPWMV7VzzFbGXw2AV
AY4/p42mBaRcwOUBNbCuwWYFatbARVk1tk2hF+pKwHvLMWZy+DZzl7YORTuMjqak
BnwXTkg8Tsef+zgiZhyTqgwB0F4rs6D/K05DySsa8o0PXRSGs8Q+8CzPVlZ8/jmL
F5FyLAdj2YAi9GIWI5bxEFm7jgQHlubs3WMb2Wd3ux1G9cvx/A/4G6NeLIDQ8ZJe
o6aZZmOS3tdLQR1oRgnFrXrI8OrsWzYTdjTyFS19pGbFm5OEkVAa81tqq5XR2WF4
3fEI0DKGhL/kv/9K7QRRBCI1MyihrX7McvZlYhFt4BUx2zgpjinA6+K7el4SkuJ6
TIqVbXUMOsHkUhI=
=j+1j
-----END PGP SIGNATURE-----
