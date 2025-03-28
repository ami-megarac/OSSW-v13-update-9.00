-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: dbus-python
Binary: python-dbus-dev, python-dbus-doc, python3-dbus, python3-dbus-tests
Architecture: any all
Version: 1.3.2-4
Maintainer: Utopia Maintenance Team <pkg-utopia-maintainers@lists.alioth.debian.org>
Uploaders: Sjoerd Simons <sjoerd@debian.org>, Sebastian Dröge <slomo@debian.org>, Simon McVittie <smcv@debian.org>, Loic Minier <lool@dooz.org>,
Homepage: https://www.freedesktop.org/wiki/Software/DBusBindings#Python
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/debian/dbus-python
Vcs-Git: https://salsa.debian.org/debian/dbus-python.git
Testsuite: autopkgtest, autopkgtest-pkg-python
Testsuite-Triggers: build-essential, dbus-daemon, gnome-desktop-testing, libglib2.0-dev, python3-all-dbg, python3-all-dev, python3-gi, python3-tap
Build-Depends: dbus-daemon, debhelper-compat (= 13), dh-python, dh-sequence-python3, libdbus-1-dev, libglib2.0-dev, meson (>= 0.56.2), ninja-build, python3-all-dev, python3-gi, python3-setuptools, python3-tap <!nocheck>, python3-wheel
Build-Depends-Indep: python3-sphinx, python3-sphinx-rtd-theme
Package-List:
 python-dbus-dev deb python optional arch=all
 python-dbus-doc deb doc optional arch=all
 python3-dbus deb python optional arch=any
 python3-dbus-tests deb python optional arch=any
Checksums-Sha1:
 a341f95ae79e2301568ffb9834ec065040566bde 605495 dbus-python_1.3.2.orig.tar.gz
 744256fab7c308e89b7d8389bdfb06bcdcdbf365 833 dbus-python_1.3.2.orig.tar.gz.asc
 a23b6564d0d0f0b728d6c060605e408adc1f0253 34704 dbus-python_1.3.2-4.debian.tar.xz
Checksums-Sha256:
 ad67819308618b5069537be237f8e68ca1c7fcc95ee4a121fe6845b1418248f8 605495 dbus-python_1.3.2.orig.tar.gz
 adc8b0a617f773e7b2abd4920fa4b1ec6dbf13046129282b0704c799d98fa26d 833 dbus-python_1.3.2.orig.tar.gz.asc
 aecae74e3dc36a2451932b51e298e2774c4d52099924f7aefdc106bfa19f52c2 34704 dbus-python_1.3.2-4.debian.tar.xz
Files:
 33be8a4a766e1c7c9a377b8f934ce21a 605495 dbus-python_1.3.2.orig.tar.gz
 1c8afc0a8711cd53b399c1054d1b4559 833 dbus-python_1.3.2.orig.tar.gz.asc
 785646786a9c339556dec8e594acc647 34704 dbus-python_1.3.2-4.debian.tar.xz
Dgit: 844986e412e4f58d6fee69827d0a2f35fd34d0c2 debian archive/debian/1.3.2-4 https://git.dgit.debian.org/dbus-python

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEENuxaZEik9e95vv6Y4FrhR4+BTE8FAmPIZP0ACgkQ4FrhR4+B
TE8B2xAAnizYKEaV+rUHN4IWDLxk/rNsfAPEtZGvgxu4XyZEpoCnn5G5+aDkv1Nr
L6TKvts4MYeyu5fBhO1CdvKFR5C+6BigXu8KvU8DaEuZgGVcqvWOdxvlEm5RBOgE
Gjkyde6MQ0idNiqCqYkIjtPmA8KZaLW06fOoduv+LqfP9oXays92jdTjFpqCxHao
pyTsl9WTu+2NfDVZXxk8anYX3+m2/jdql0bBUzh45OuAEWNyabWhRvUZIBNyLR3U
tctaIYL/MEkME+mtXSJQ75BNMVmWd3PuoMkFxGkkhL14luwLa55Lg52Wv4shlIq3
f/qseWzLAxhqFZMzPn1UmikIc4MoJ4R1eeG7L2J8Ehky+nqqD3cXJlYVdBEwSfIn
4R1BT8mVUvEuZfhVy/A4+za9sptUdQytjro+gLFYOBW9pdFyau1eaD3cpgBIuT0/
O47hkv+YQRq9semLoIC6K0XpM/F7O8ycEyKh43JJ6COrK8lRdP2i0f77wf/uu/Qu
Z8hoKSSmXWv+UR9xqT6WjE1+95KwENxs9lTw1OOtENUHOLC6rxAXhu2c40gRpZ1H
FiwaOavnFZDhUqimv+w956qM+pPvVTBtq9dB+rxFyNC0qcfnxaOFGhl1BhRAnK3W
b6gVY4fxU5e5QG18xOw7cxiKXEoPOJckmTeIY+IfGe4J7RmQJwQ=
=ZjjU
-----END PGP SIGNATURE-----
