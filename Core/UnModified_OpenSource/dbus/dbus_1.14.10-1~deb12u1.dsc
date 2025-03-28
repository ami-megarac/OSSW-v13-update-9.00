-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: dbus
Binary: dbus, dbus-session-bus-common, dbus-system-bus-common, dbus-bin, dbus-daemon, dbus-1-doc, dbus-tests, dbus-udeb, dbus-user-session, dbus-x11, libdbus-1-3, libdbus-1-3-udeb, libdbus-1-dev
Architecture: any all
Version: 1.14.10-1~deb12u1
Maintainer: Utopia Maintenance Team <pkg-utopia-maintainers@lists.alioth.debian.org>
Uploaders: Sjoerd Simons <sjoerd@debian.org>, Sebastian Dröge <slomo@debian.org>, Michael Biebl <biebl@debian.org>, Loic Minier <lool@dooz.org>, Simon McVittie <smcv@debian.org>,
Homepage: https://dbus.freedesktop.org/
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/utopia-team/dbus
Vcs-Git: https://salsa.debian.org/utopia-team/dbus.git
Testsuite: autopkgtest
Testsuite-Triggers: apparmor, build-essential, gnome-desktop-testing, init, systemd, xauth, xvfb
Build-Depends: autoconf-archive, automake, debhelper (>= 13.7) | debhelper (<< 13.4), debhelper-compat (= 13), dh-exec, libapparmor-dev [linux-any], libaudit-dev [linux-any], libcap-ng-dev [linux-any], libexpat-dev, libglib2.0-dev <!nocheck> <!noinsttest>, libnss-wrapper <!nocheck>, libselinux1-dev [linux-any], libsystemd-dev [linux-any], libx11-dev, pkg-config, valgrind-if-available, xml-core, xmlto <!nodoc>
Build-Depends-Indep: doxygen <!nodoc>, ducktype <!nodoc>, xsltproc <!nodoc>, yelp-tools <!nodoc>
Package-List:
 dbus deb admin standard arch=any
 dbus-1-doc deb doc optional arch=all profile=!nodoc
 dbus-bin deb admin optional arch=any
 dbus-daemon deb admin optional arch=any
 dbus-session-bus-common deb admin optional arch=all
 dbus-system-bus-common deb admin optional arch=all
 dbus-tests deb misc optional arch=any profile=!noinsttest
 dbus-udeb udeb debian-installer optional arch=any profile=!noudeb
 dbus-user-session deb admin optional arch=linux-any
 dbus-x11 deb x11 optional arch=any
 libdbus-1-3 deb libs optional arch=any
 libdbus-1-3-udeb udeb debian-installer optional arch=any profile=!noudeb
 libdbus-1-dev deb libdevel optional arch=any
Checksums-Sha1:
 47f03306a491509cdebacded837e51b086835252 1372328 dbus_1.14.10.orig.tar.xz
 76219dcec55c66705eb1a311d11ced2df190758d 833 dbus_1.14.10.orig.tar.xz.asc
 74faa15cfba461acffb509c60dbcd1eddb547b88 63544 dbus_1.14.10-1~deb12u1.debian.tar.xz
Checksums-Sha256:
 ba1f21d2bd9d339da2d4aa8780c09df32fea87998b73da24f49ab9df1e36a50f 1372328 dbus_1.14.10.orig.tar.xz
 5f292cd0603c3d736026ed3f4d1c1937847981669c1f0a389083518f013e1081 833 dbus_1.14.10.orig.tar.xz.asc
 3dffba1d320ad4be65d87174953fd8a795e3de0886d01a9b85abdba8d107c810 63544 dbus_1.14.10-1~deb12u1.debian.tar.xz
Files:
 46070a3487817ff690981f8cd2ba9376 1372328 dbus_1.14.10.orig.tar.xz
 a790dcc5fd84835ed9147c9679af551f 833 dbus_1.14.10.orig.tar.xz.asc
 fc3522d5c37582104b551e330843c9a7 63544 dbus_1.14.10-1~deb12u1.debian.tar.xz
Dgit: 3313a44d8d5df469b9dcb5194b3d4b126ad7f5a5 debian archive/debian/1.14.10-1_deb12u1 https://git.dgit.debian.org/dbus

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEENuxaZEik9e95vv6Y4FrhR4+BTE8FAmUGF78ACgkQ4FrhR4+B
TE/wIhAArgxT+lCZfS27mmM4MsWS/eTYFMfG2rj8hDYzdFjJcMV2vRxggkT4Afzd
AEuA7zonOlg0vi7Zy/XAkwhwUIr6DBNc37ZAeVzBMNf3697aGsKIjPjNSazC+nME
dPTxze+OgWLqX/4fZGva/zWSiYTt11SPZVg07JCG5hdgRpuQu1W8zYbS6l1arefs
5FtSfOS+UQTbtK9TZFmAK+ae1+WBoIZWKImjfmK/OwpB4uMZWMA0seLMvXi98nGa
ya/DLR3TeqQK7D1fJFijPrzMBacdqNoQdUg3cx+YcgQI8WQDEv6q+aED/+/ST2I4
3NSDGnVPvh8sM2Itgkj70rgDl6jG7tgys8Hpr1lDtdgdX7UPbyeMPVt5JWIQPfvZ
BCLuPPO2SNXHVcAO3zkmsWXittdrGJo4PLl50vC39AEibedR8OzR/UoWuPTkMWE0
k4q6XbRDAuFuN+E0Vy1Bj1UPy97oal/AFx6QQQLlYJ0Lxb5Gcd7p49b++J/itNRK
Gw5oXGUYkKNW+rdBySu4lU3zBS0M+gP6yXRzX/2/t2y4IMhqn+hNiMLGWJAHdwwB
IPI6WfTSitO1iWdjB9obhae8Mcs6f9voE11Otg8Ljzq3DxAfcZiwZRtC82pxJdLb
tV7s67IDaC4U13UNGms2TulovvDP9i/39m6BvMtR71YVpzSLMLU=
=kLij
-----END PGP SIGNATURE-----
