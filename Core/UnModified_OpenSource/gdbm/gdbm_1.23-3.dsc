-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: gdbm
Binary: libgdbm6, gdbm-l10n, libgdbm-dev, gdbmtool, libgdbm-compat4, libgdbm-compat-dev
Architecture: any all
Version: 1.23-3
Maintainer: Nicolas Mora <babelouest@debian.org>
Homepage: https://gnu.org/software/gdbm
Standards-Version: 4.6.1
Vcs-Browser: https://salsa.debian.org/debian/gdbm
Vcs-Git: https://salsa.debian.org/debian/gdbm.git
Testsuite: autopkgtest
Testsuite-Triggers: @builddeps@, build-essential
Build-Depends: texinfo, debhelper-compat (= 13), dh-exec, dietlibc-dev [alpha amd64 arm64 armeb armel armhf hppa i386 mips mipsel mips64el powerpc powerpcspe ppc64 ppc64el s390x sparc64 x32] <!pkg.gdbm.nodietlibc>, libreadline-dev, bison
Package-List:
 gdbm-l10n deb localization optional arch=all
 gdbmtool deb utils optional arch=any
 libgdbm-compat-dev deb libdevel optional arch=any
 libgdbm-compat4 deb libs optional arch=any
 libgdbm-dev deb libdevel optional arch=any
 libgdbm6 deb libs optional arch=any
Checksums-Sha1:
 50ba1b1d45ce33fd44e4fdaaf3b55a9d8f3dc418 1115854 gdbm_1.23.orig.tar.gz
 81599dbe10c7d0fb309ec1fa784860fd8a489f38 181 gdbm_1.23.orig.tar.gz.asc
 fb689329fef4fa50905303a96ca756e92aac0b19 18552 gdbm_1.23-3.debian.tar.xz
Checksums-Sha256:
 74b1081d21fff13ae4bd7c16e5d6e504a4c26f7cde1dca0d963a484174bbcacd 1115854 gdbm_1.23.orig.tar.gz
 64ebb68cc68e8915d62cb20ea40323c00b56051f844589ee0a52169fff34cecb 181 gdbm_1.23.orig.tar.gz.asc
 a0ff17befcbd7c4b361cfe0d821a7a71334102a9c423537bd57f60f18f6802ea 18552 gdbm_1.23-3.debian.tar.xz
Files:
 8551961e36bf8c70b7500d255d3658ec 1115854 gdbm_1.23.orig.tar.gz
 1e65967aaf85d790831a51fbac1aebe2 181 gdbm_1.23.orig.tar.gz.asc
 c5a6ce3d9ff36734c927b6e546eea9bb 18552 gdbm_1.23-3.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEhAWwL8wo75dEyPJT/oITlEC9IrkFAmNC3ukACgkQ/oITlEC9
IrlN2hAAtrAc9mI8bcXYkWED8xiLMHOq3e+4Mp50+pwaSdIkR9rktHQYIWtX2LYn
t5qD6R1ZXBrIxxtdknZyJkp7zREppGoK5rZXXdRqOq0GjtzuuHjItzuhjKGXgHBV
nHGsrZjq5ayAyIpJN266OmNNUXwOsM2kJA5x/NxiceyFlQsl3/8ZFJQxr+x+ApRx
ERMg2ZGPuOglSyDUmRdlYguYfehyPNvGE1C6AJdIg+4z1lcEFAwCY9YK2ZLG4aKe
L7NKIperso35N6pnCN5Vt/yuraIM5vGuryWp+ScvuBlao13OFGf23cfoh/Fn6gFA
vs/ei38p25vwNSl0jgwZVpbigf8iI/n4A0kjVyeaStKiC2mN/2avpLQ8vjzve9lh
6cBSJO6skiXteT+qynOO0vombVwD5JNbn5z2bvl/GvRe3VxMK1rGgYGw3r3QGgyr
24WQ+3i+vAzaY7f40vTgtUOuHQmJHAu/MM3gcwtx6Pvb0p09vCDNFOgazwfbf+Gl
HsfYHrpoDH6PO7fr5ZjdG5hlSuC512QlTZtLUAj2mb9+RKXOYB2iprsyobfzghEl
FUJuAKaMVKTCe5kMTgsb1NtTyR5op+j8r/QmUSuc2NwaMnbcB0LoJ+fdoenJIJjj
VBYCVcPIRwWD7q/t98zQ51fk3ijft+8r2DNamDI9w3FE/Ckec0c=
=2uQH
-----END PGP SIGNATURE-----
