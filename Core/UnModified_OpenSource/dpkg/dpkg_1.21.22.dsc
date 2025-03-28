-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (native)
Source: dpkg
Binary: dpkg, libdpkg-dev, dpkg-dev, libdpkg-perl, dselect
Architecture: any all
Version: 1.21.22
Maintainer: Dpkg Developers <debian-dpkg@lists.debian.org>
Uploaders: Guillem Jover <guillem@debian.org>
Homepage: https://wiki.debian.org/Teams/Dpkg
Standards-Version: 4.6.2
Vcs-Browser: https://git.dpkg.org/cgit/dpkg/dpkg.git
Vcs-Git: https://git.dpkg.org/git/dpkg/dpkg.git
Testsuite: autopkgtest
Testsuite-Triggers: autoconf, build-essential, eatmydata, file, libmd-dev, pkg-config
Build-Depends: debhelper-compat (= 13), debhelper (>= 13.10~), pkgconf | pkg-config, gettext (>= 0.19.7), po4a (>= 0.59), libmd-dev, zlib1g-dev, libbz2-dev, liblzma-dev (>= 5.4.0), libzstd-dev (>= 1.4.0), libselinux1-dev [linux-any], libncurses-dev (>= 6.1+20180210), bzip2 <!nocheck>, xz-utils (>= 5.4.0) <!nocheck>, zstd <!nocheck>, git <pkg.dpkg.author-release>, ca-certificates <pkg.dpkg.author-release>, libmodule-build-perl <pkg.dpkg.author-release>, fakeroot <pkg.dpkg.author-testing>, gnupg <pkg.dpkg.author-testing>, cppcheck <pkg.dpkg.author-testing>, shellcheck <pkg.dpkg.author-testing>, aspell <pkg.dpkg.author-testing>, aspell-en <pkg.dpkg.author-testing>, codespell <pkg.dpkg.author-testing>, i18nspector <pkg.dpkg.author-testing>, libtest-minimumversion-perl <pkg.dpkg.author-testing>, libtest-perl-critic-perl <pkg.dpkg.author-testing>, libtest-pod-coverage-perl <pkg.dpkg.author-testing>, libtest-pod-perl <pkg.dpkg.author-testing>, libtest-spelling-perl <pkg.dpkg.author-testing>, libtest-strict-perl <pkg.dpkg.author-testing>, libtest-synopsis-perl <pkg.dpkg.author-testing>, lcov <pkg.dpkg.code-coverage>, libdevel-cover-perl <pkg.dpkg.code-coverage>
Package-List:
 dpkg deb admin required arch=any essential=yes
 dpkg-dev deb utils optional arch=all
 dselect deb admin optional arch=any
 libdpkg-dev deb libdevel optional arch=any
 libdpkg-perl deb perl optional arch=all
Checksums-Sha1:
 6f47bfcbcfdbd0c3bcfd6b02be98c8259ba146a5 5419900 dpkg_1.21.22.tar.xz
Checksums-Sha256:
 5a1d15481bba79d7a4899fd55b4b6b18a987ca8d56ee8c43e9cab63b8a0a3545 5419900 dpkg_1.21.22.tar.xz
Files:
 0577cef4dafe3e7759ef0b53a4783874 5419900 dpkg_1.21.22.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEETz509DYFDBD1aWV0uXK/PqSuV6MFAmRcUA0ACgkQuXK/PqSu
V6ObVg//Zu6tgNpMiJkE/sSu6dZp8HwUh5HYBy/h5UYGHXaMXreIHPZM0rfsogBl
p/zzs2JKj3zcBr2GdOefhsA00j3SbNip5/yo4vxM+kc/e9qV0+0SO3DcR2YFuQst
zTOmUTRtW4VSORuemp3rTE6DAarBSmxcqz/aB5tc0i/M1ayLIqbBY2qlfQ/ABR9r
e5+BZo3pJOlnseDaXkEXKJrakRbcr50tsqeno0klgV7irHEKDg/uowTxGzAj6n/Z
nabmirWZQ/OHGU0QD0JhiWhZDZ0BRVQVhrZJEg2HjbYuylN7rHxmEMRXKTcz1Kqh
P+DGxebK3kDCOu2qvPeibIE5j7iNJCGtr+8AYhcmW80aNv9u7odlRLcTmAO9K1MA
iD6b0k+yqy173aajSfZf/Gl6DQrtxgPbjh21/lqNS4cSdJskz8CzkhBIy1+APJZG
JzrysGneMMZ6e+WQONjjosFQ1Jt7yTLEJi9zmUsyJDPgvRpWkQh6CJtd3EQY1GVt
IW8YHA2DPqqf1nnAxwy4E9Oi6iLUUpFLRpX1TOkBwCwW4hcltXFD+osG1AuzeQWc
tCevNHOajCv2cHmr0QtIWDKSXP/8BmQKQ29GkIGfEqclOdUO1f659tHxPa61D082
C3rLoxVggmfLNLzdyaegHgW8NyTHigDVKA4ylt+j/bzASOJgyA4=
=6uN1
-----END PGP SIGNATURE-----
