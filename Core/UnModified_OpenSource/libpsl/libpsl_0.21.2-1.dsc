-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: libpsl
Binary: libpsl-dev, libpsl5, psl, psl-make-dafsa
Architecture: any all
Version: 0.21.2-1
Maintainer: Tim Rühsen <tim.ruehsen@gmx.de>
Uploaders:  Daniel Kahn Gillmor <dkg@fifthhorseman.net>,
Homepage: https://github.com/rockdaboot/libpsl
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/debian/libpsl
Vcs-Git: https://salsa.debian.org/debian/libpsl.git
Testsuite: autopkgtest
Testsuite-Triggers: publicsuffix
Build-Depends: debhelper-compat (= 13)
Build-Depends-Arch: autoconf-archive, automake, gtk-doc-tools, libidn2-dev, libunistring-dev, pkg-config, publicsuffix (>= 20150507), python3:any
Package-List:
 libpsl-dev deb libdevel optional arch=any
 libpsl5 deb libs optional arch=any
 psl deb net optional arch=any
 psl-make-dafsa deb net optional arch=all
Checksums-Sha1:
 eff866df9906dd254f1a54cc0e51f051cc42e61d 1870352 libpsl_0.21.2.orig.tar.xz
 146d8fb07fbeb82e8cb848e3628c185193ca9bf8 11940 libpsl_0.21.2-1.debian.tar.xz
Checksums-Sha256:
 11e34380f2c81d6e72c710464aae3b680df4ddcc1007826c630fb03c7ca6aa54 1870352 libpsl_0.21.2.orig.tar.xz
 78327367c83ce2dc6a8404f479a7589eacb0266f1d4a25619d5f6f00f98ab7b6 11940 libpsl_0.21.2-1.debian.tar.xz
Files:
 32d5a8b2ce39f537394eb28f25272e1f 1870352 libpsl_0.21.2.orig.tar.xz
 ff071213d781ff400bc80a0bf784bb43 11940 libpsl_0.21.2-1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQQttUkcnfDcj0MoY88+nXFzcd5WXAUCY+rKIQAKCRA+nXFzcd5W
XPOyAP9hk5azpF0CC45FnUQ7rOK+7F4uz3ppY7zI7makW8ZT6AD9EFZmxEX9lJBA
PLQ9caVr9gG0Ob+cRHXQ469l3ZaMyQ8=
=o8yV
-----END PGP SIGNATURE-----
