-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: elfutils
Binary: elfutils, libelf1, libelf-dev, libdw-dev, libdw1, libasm1, libasm-dev, libdebuginfod1, libdebuginfod-dev, debuginfod, libdebuginfod-common
Architecture: any all
Version: 0.188-2.1
Maintainer: Debian Elfutils Maintainers <debian-gcc@lists.debian.org>
Uploaders: Kurt Roeckx <kurt@roeckx.be>, Matthias Klose <doko@debian.org>, Sergio Durigan Junior <sergiodj@debian.org>,
Homepage: https://sourceware.org/elfutils/
Standards-Version: 4.5.1
Vcs-Browser: https://salsa.debian.org/toolchain-team/elfutils
Vcs-Git: https://salsa.debian.org/toolchain-team/elfutils.git
Build-Depends: debhelper (>= 11), autoconf, automake, lsb-release, bzip2, zlib1g-dev, zlib1g-dev:native, libbz2-dev, liblzma-dev, m4, gettext, po-debconf, gawk, dpkg-dev (>= 1.16.1~), gcc-multilib [any-amd64 sparc64] <!nocheck>, libc6-dbg [powerpc powerpcspe ppc64 ppc64el armel armhf arm64 sparc64 riscv64], flex, bison, pkg-config, libarchive-dev <!pkg.elfutils.nodebuginfod>, libmicrohttpd-dev <!pkg.elfutils.nodebuginfod>, libcurl4-gnutls-dev <!pkg.elfutils.nodebuginfod>, libsqlite3-dev <!pkg.elfutils.nodebuginfod>
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
 5e23c010b7f9f45140a43e95d8d1f7fb04aa8302 9112977 elfutils_0.188.orig.tar.bz2
 0b93f350408c0e70bdad0fd535ec24e7c4945c13 488 elfutils_0.188.orig.tar.bz2.asc
 f3f0b4ec8a4ef2c05b4da079e0416ab095426ec3 42328 elfutils_0.188-2.1.debian.tar.xz
Checksums-Sha256:
 fb8b0e8d0802005b9a309c60c1d8de32dd2951b56f0c3a3cb56d21ce01595dff 9112977 elfutils_0.188.orig.tar.bz2
 061bb59801b8a23de4b129acb242210889be2c25b43ad2bcc2eb04966a1823e6 488 elfutils_0.188.orig.tar.bz2.asc
 dac77dc13f8f3bb2c541d631faf75216fc6640a359143a4545129ee096bc35ff 42328 elfutils_0.188-2.1.debian.tar.xz
Files:
 efb25a91873b2eec4df9f31e6a4f4e5c 9112977 elfutils_0.188.orig.tar.bz2
 228969aca343854a0e312ebc906062b9 488 elfutils_0.188.orig.tar.bz2.asc
 7383a8b91d0e873078fc8e1f3507ac4c 42328 elfutils_0.188-2.1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE0cuPObxd7STF0seMEwLx8Dbr6xkFAmPDJmEACgkQEwLx8Dbr
6xmImxAAmXFu7mW8meSGDxXKx2oPktxJBnsXgg+aZk34boUbDqga4cyn9IeQ+FpB
hr6N5ELLUBs0lk71NfmZCzVx/+p4OzVLEx7z8rRV4ICtJk1R2y/DkYZqa9UQiPun
HK505nkHQ/nvJMj3bkk6EGoql+NHAOgawLTJYLKD1SWWWjk+UByDsoMeh2hLbbDm
1IstQ6m42wFPzIfikQ4vSn21qX/TL1LWTogf+c54W9/VVjNVg3BRew6ih5fnOkw+
btqJUJrbji3nEqM0fxfE2uC5DLXw0YzEfglIVrmiHUMfcHPFiy9OsipukJ3IcRd+
tDbOQRM+p0/ElLVtDLAihF9uCeM0x8JqO0lcWi+r12l6FXVliiZeEQ/r0KO4b2re
vI+XB2Ec9oDAURwcRPQ6OcKcr/M+KlCzMNL0sitcvVlIwncFI7BtetPnnsamyRjB
t2MTkHK3JZOYmEYb6YL9HplkENsp62R7qOuhwkWbhSbMcvrDQE1OOHfeIAUby1a2
FLurWdneisejgScsRzxYGdP2ma/pSAV+Q8gCwbpJHU64Q3HqyG4xSO0Ph3aX7+7o
6ccn50/JcycWLUmaVv0Qj6A6VB0fCjwmN3evuhdOGJwsSnkhPKMgpmbqQhIMTulG
pW1oHyBYze8pjS24gqDiRXmlCAchOpUl5mUMZE+Eq1odXF7vVvo=
=fBFd
-----END PGP SIGNATURE-----
