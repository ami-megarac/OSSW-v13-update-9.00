-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: fuse3
Binary: fuse3, libfuse3-3, libfuse3-dev, fuse3-udeb, libfuse3-3-udeb
Architecture: linux-any kfreebsd-any
Version: 3.14.0-4
Maintainer: Laszlo Boszormenyi (GCS) <gcs@debian.org>
Homepage: https://github.com/libfuse/libfuse/wiki
Standards-Version: 4.6.1
Build-Depends: debhelper-compat (= 13), pkgconf, meson, udev [linux-any], python3 <!nocheck>, python3-pytest <!nocheck>
Package-List:
 fuse3 deb utils optional arch=linux-any
 fuse3-udeb udeb debian-installer optional arch=linux-any
 libfuse3-3 deb libs optional arch=linux-any,kfreebsd-any
 libfuse3-3-udeb udeb debian-installer optional arch=linux-any,kfreebsd-any profile=!noudeb
 libfuse3-dev deb libdevel optional arch=linux-any,kfreebsd-any
Checksums-Sha1:
 3820905cd399fe9350285e76e72ceace656a761f 4351852 fuse3_3.14.0.orig.tar.xz
 8addaabc30aa4b6a86f580248ae31e9788d8918c 1012 fuse3_3.14.0.orig.tar.xz.asc
 61ba2abfea5d5a07f2eaeac2f17aedf0ed9dba7e 17828 fuse3_3.14.0-4.debian.tar.xz
Checksums-Sha256:
 96115b2a8ff34bd1e0c7b00c5dfd8297571d7e165042b94498c9a26356a9a70a 4351852 fuse3_3.14.0.orig.tar.xz
 246ae20731da98c5f5a5cf6cdf8d10aa54ea986b4e71fe24805154b186ad30d0 1012 fuse3_3.14.0.orig.tar.xz.asc
 671b7cb079f845c4032e0796e1a45426fa8e5602ffda438335f8f0483289c69f 17828 fuse3_3.14.0-4.debian.tar.xz
Files:
 2070c0f347e2304fa122d4cb0746e8a9 4351852 fuse3_3.14.0.orig.tar.xz
 c43df823d18a5749c9f1f5890c2438ea 1012 fuse3_3.14.0.orig.tar.xz.asc
 0e5ee639ed8ec3f4cd5ea9d248ec46b6 17828 fuse3_3.14.0-4.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEfYh9yLp7u6e4NeO63OMQ54ZMyL8FAmRKl7sACgkQ3OMQ54ZM
yL9XRw//ZWONjTFXLc3eUXiXtvVGJ+JwimpHlHtuS2kQSkm5h0IjD72mybyaFM4U
5nWZGfua9S/9IRYS1O6/5wEtdjBLU273SEWaZ839awjAlY83sv9JCa7mDuBL61g7
63Qs5S69cHtoFvUBhIveR7/N/+7JbQMVWXnA1Fv8sekmRJ8lsorC9L2yiJ6zBHYp
nnRusVOZUTkjarTaWslTUtPgxSLb28eO/BZmtZ8FI97ZMXOFnwT2aFozi2lST/Db
Lz3sYoIJh8FkpCiHQEwQeIVLrokCK3DDT9sqdDYasq+3MsiOlMQaY3sOCsPc9edG
kqdj3VmT9F3FyOnd3CpeyTQO+TGrmBfuZeX4qW7Yb1Jm0fSPz1YPIOVz/fDuorVO
mFCkRfylC3e0/L9Xp0DtNopmn2oaXCgB3i4i8mN0egS1hbkL8UjkSp1Gy8nzopwa
Zlff4nFvHF4/wKru1ZkI2M0YT2JY0b2FqisL3QUNoHpcEus5q7XCtcDuC+ZNK1WD
OqdAHrY/3Aw8MJdEQcPf0ji+PIvGLK/FQMyexMa+AHsY1T7Ng9xL9LgahjlbP3fJ
CngxvZLUS3Y/U/sanKED1PQEqZOYboStJKKKOLnXcc8gpFn+KhcnZ9+EocehMVnd
k1tcCFuIc0sgwjU5ntpv6WrFB7vIIpXZNgAOmnWjy6JYyJdGDEs=
=9/+v
-----END PGP SIGNATURE-----
