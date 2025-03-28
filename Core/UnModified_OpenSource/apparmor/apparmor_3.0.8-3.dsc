-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: apparmor
Binary: apparmor, apparmor-utils, apparmor-profiles, libapparmor-dev, libapparmor1, libapache2-mod-apparmor, libpam-apparmor, apparmor-notify, python3-libapparmor, python3-apparmor, dh-apparmor
Architecture: linux-any all
Version: 3.0.8-3
Maintainer: Debian AppArmor Team <pkg-apparmor-team@lists.alioth.debian.org>
Uploaders: intrigeri <intrigeri@debian.org>
Homepage: https://apparmor.net/
Standards-Version: 4.6.1
Vcs-Browser: https://salsa.debian.org/apparmor-team/apparmor/tree/debian/unstable
Vcs-Git: https://salsa.debian.org/apparmor-team/apparmor.git -b debian/unstable
Testsuite: autopkgtest
Testsuite-Triggers: @builddeps@, apparmor-profiles-extra, bind9, cups-browsed, cups-daemon, evince, haveged, libreoffice-common, libvirt-daemon-system, linux-image-amd64, linux-image-generic, man-db, ntp, onioncircuits, tcpdump, tor
Build-Depends: apache2-dev, autoconf, automake, bison, bzip2, chrpath, debhelper-compat (= 13), dejagnu <!nocheck>, dh-apache2, dh-python, dh-sequence-python3, flex, liblocale-gettext-perl <!nocheck>, libpython3-all-dev, libpam-dev, libtool, perl <!nocheck>, pkg-config, po-debconf, python3:any, python3-all:any, python3-all-dev:any, python3-setuptools, swig
Package-List:
 apparmor deb admin optional arch=linux-any
 apparmor-notify deb admin optional arch=all
 apparmor-profiles deb admin optional arch=all
 apparmor-utils deb admin optional arch=all
 dh-apparmor deb devel optional arch=all
 libapache2-mod-apparmor deb httpd optional arch=linux-any
 libapparmor-dev deb libdevel optional arch=linux-any
 libapparmor1 deb libs optional arch=linux-any
 libpam-apparmor deb admin optional arch=linux-any
 python3-apparmor deb python optional arch=all
 python3-libapparmor deb python optional arch=linux-any
Checksums-Sha1:
 e111ad239816d9ff3b63f9695e2aa7b8ef128a92 7946880 apparmor_3.0.8.orig.tar.gz
 7d084dcdad630524e5d548862a59497aeadcae51 870 apparmor_3.0.8.orig.tar.gz.asc
 4b70b99785d0ce4330185a9996819f023aa2bcb5 94604 apparmor_3.0.8-3.debian.tar.xz
Checksums-Sha256:
 dfa0083d62bb469be7125da590f46ad1a2831e3a7beeffaaeadfc2fee8460e5c 7946880 apparmor_3.0.8.orig.tar.gz
 7bdab44d99f837be97afdc8624ec2c546ee2901f67fda8e8044ab89cc4373c4a 870 apparmor_3.0.8.orig.tar.gz.asc
 d27b585d61372f359fdc9dca388c790a61a25410790ff2ec780c491bceb826a0 94604 apparmor_3.0.8-3.debian.tar.xz
Files:
 4a836c7bd1a0c3d1392733afb6e06d73 7946880 apparmor_3.0.8.orig.tar.gz
 6c5e31899df1b17efa538ee99237aecf 870 apparmor_3.0.8.orig.tar.gz.asc
 f3e02cb7d66f830ff5c5c795ec88e13e 94604 apparmor_3.0.8-3.debian.tar.xz
Dgit: f53b9f4a4771903dc7af68f5c30623d21b2b971e debian archive/debian/3.0.8-3 https://git.dgit.debian.org/apparmor

-----BEGIN PGP SIGNATURE-----

iIsEARYKADMWIQRhtDRcZu/HkP7YWcafj6cvaVTDowUCY+uEKhUcaW50cmlnZXJp
QGRlYmlhbi5vcmcACgkQn4+nL2lUw6OAhAD/WdmFiR3J0q+qy+hoQMbI/fY3qupX
RK1VcqpAQg8ZK9oBAKuhFYcrLpcNtN/29O4QQFU6oGT9AMxzC8EhUT7ql1AH
=RM4U
-----END PGP SIGNATURE-----
