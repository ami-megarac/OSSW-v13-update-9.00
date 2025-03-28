-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: lvm2
Binary: lvm2, lvm2-udeb, lvm2-dbusd, lvm2-lockd, libdevmapper-dev, libdevmapper1.02.1, libdevmapper1.02.1-udeb, dmsetup, dmsetup-udeb, libdevmapper-event1.02.1, dmeventd, liblvm2cmd2.03, liblvm2-dev
Architecture: linux-any all
Version: 2.03.16-2
Maintainer: Debian LVM Team <team+lvm@tracker.debian.org>
Uploaders: Bastian Blank <waldi@debian.org>
Homepage: https://sourceware.org/lvm2/
Standards-Version: 4.1.1
Vcs-Browser: https://salsa.debian.org/lvm-team/lvm2
Vcs-Git: https://salsa.debian.org/lvm-team/lvm2.git
Build-Depends: debhelper-compat (= 13), autoconf-archive, automake, libaio-dev, libblkid-dev, pkg-config, systemd
Build-Depends-Arch: libcmap-dev, libcorosync-common-dev, libcpg-dev, libdlm-dev (>> 2), libdlmcontrol-dev, libedit-dev, libquorum-dev, libsanlock-dev, libselinux1-dev, libsystemd-dev, libudev-dev
Build-Depends-Indep: dh-sequence-python3, python3-dev, python3-dbus, python3-pyudev
Package-List:
 dmeventd deb admin optional arch=linux-any
 dmsetup deb admin optional arch=linux-any
 dmsetup-udeb udeb debian-installer optional arch=linux-any
 libdevmapper-dev deb libdevel optional arch=linux-any
 libdevmapper-event1.02.1 deb libs optional arch=linux-any
 libdevmapper1.02.1 deb libs optional arch=linux-any
 libdevmapper1.02.1-udeb udeb debian-installer optional arch=linux-any
 liblvm2-dev deb libdevel optional arch=linux-any
 liblvm2cmd2.03 deb libs optional arch=linux-any
 lvm2 deb admin optional arch=linux-any
 lvm2-dbusd deb admin optional arch=all
 lvm2-lockd deb admin optional arch=linux-any
 lvm2-udeb udeb debian-installer optional arch=linux-any
Checksums-Sha1:
 71c96f51e73d4e8cd8378fb23ed54ac42c14dce7 1790340 lvm2_2.03.16.orig.tar.xz
 f164677dc9c81ce74acf6483e15f3802be0ba9d0 31288 lvm2_2.03.16-2.debian.tar.xz
Checksums-Sha256:
 9eee14d34f7962ade7d4624114ce7b6bd3d868d210afb72b3769f8c6a082646e 1790340 lvm2_2.03.16.orig.tar.xz
 4c74971b5d056f901fe60f03de0b6f80f363ac5c89792494c1b3a541ff21623b 31288 lvm2_2.03.16-2.debian.tar.xz
Files:
 2587b136c4774389600884b03386cf61 1790340 lvm2_2.03.16.orig.tar.xz
 7cba619ab6b506b1ebd9c7c334130104 31288 lvm2_2.03.16-2.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQFFBAEBCgAvFiEER3HMN63jdS1rqjxLbZOIhYpp/lEFAmNQUiYRHHdhbGRpQGRl
Ymlhbi5vcmcACgkQbZOIhYpp/lGG+gf/XoaGF/DIHpRtQMHxa26puaVsY1drtSMV
8V23ejU9O9LPLDtZnY8S3aEFeE7bmAqW4PUimJ0Vm2KlOOag2z2pxMmP9hWyc3SK
ChZsDKEqzKfNvWSM6h8T5YU1etfOx2bNYrPTCHBHEs/sTmq6ECuXxsIxnMr8TVrQ
h4d1Ofq+6Bmdpi6cXTM4C81j0B4iYQVy8iRuKv+QAjB5MyPIAAKzxYVYCNrX5M+L
JtbMOjfKshlqiK0Edp+j3TZmzYInU9Ni5VA6Ef1j3u3icvNQjEy+KeVYYRn627sS
WFehKb0P2kBufmSvjjcRDCIbDTv0dGp00OYh2tMUbToFM9/LZpDUuA==
=JCpW
-----END PGP SIGNATURE-----
