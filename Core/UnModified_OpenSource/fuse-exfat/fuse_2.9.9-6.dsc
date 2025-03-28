-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: fuse
Binary: fuse, libfuse2, libfuse-dev, fuse-udeb, libfuse2-udeb
Architecture: linux-any kfreebsd-any
Version: 2.9.9-6
Maintainer: Laszlo Boszormenyi (GCS) <gcs@debian.org>
Homepage: https://github.com/libfuse/libfuse/wiki
Standards-Version: 4.6.1
Build-Depends: debhelper-compat (= 13), libselinux-dev [linux-any], gettext
Package-List:
 fuse deb utils optional arch=linux-any
 fuse-udeb udeb debian-installer optional arch=linux-any profile=!noudeb
 libfuse-dev deb libdevel optional arch=linux-any,kfreebsd-any
 libfuse2 deb libs optional arch=linux-any,kfreebsd-any
 libfuse2-udeb udeb debian-installer optional arch=linux-any,kfreebsd-any
Checksums-Sha1:
 943ba651b14bc4a3c6fd959ed4b8c04f4a59032d 1813177 fuse_2.9.9.orig.tar.gz
 b5d3a07106bfd03de062f39f12c96fb1d22f7cb3 1012 fuse_2.9.9.orig.tar.gz.asc
 468c36a15e7fdbd6141237893ac43e154f61700c 23856 fuse_2.9.9-6.debian.tar.xz
Checksums-Sha256:
 d0e69d5d608cc22ff4843791ad097f554dd32540ddc9bed7638cc6fea7c1b4b5 1813177 fuse_2.9.9.orig.tar.gz
 2306ebb33ecc560701f1b569cff3b1cee3dd1c02b46462a9f2c5ba0e5c263a51 1012 fuse_2.9.9.orig.tar.gz.asc
 c4681dcddb0cb6376579748fa4abc4d61640ff2a4d9f7d376820cb2adf7396b3 23856 fuse_2.9.9-6.debian.tar.xz
Files:
 8000410aadc9231fd48495f7642f3312 1813177 fuse_2.9.9.orig.tar.gz
 8e617f77c41a15537bcb5094eb11a9de 1012 fuse_2.9.9.orig.tar.gz.asc
 7995f3d513ef186b09fc6de1694a28c5 23856 fuse_2.9.9-6.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEfYh9yLp7u6e4NeO63OMQ54ZMyL8FAmNMCVIACgkQ3OMQ54ZM
yL8aOA//SRT7HGc0mctVFDXQLOUH3DtQmQcpm8SndU1p7Stk+ainprRTIAnBWpLi
IjUyPPKNj+Vo1F0lrUqzi1nYJmdGR83lxGZC51JvBJmmNI+0YleySgwBY5BCw/6i
GgQZh4K9adB5r7RxqmgIwkf7+h6hQnB8adMryXwcyg9uf3J8vUZBBKeCglCze6Ik
3rggJn0/mRJr64YjSYhoDKp1FlRtaDGijp+fBtqiLY1z7aedaxW2VJw+aXvscT8K
fuBAmVWqNv1GKc/tB3q8yYWTnvZme4DpB/UO0CCS/3SDnF3SEg6vrNgyGEKxDuRn
Zjkc68t57J7RhwwHWFnfTqFtHUM5kP/+gUxjEvGunbi+I7DNSQ9uVnEPGOKOmQFi
XV1TZsSobZRK6Zn1t+BSLRET/Ut5/LPvk07YK4GzKQcGitgdg/oTiLadi5doK4G/
ad45m089knarzNV3CbeWUBBFkz/dW8iOWt92rryVulsZ7WEFzubXj+M1zR8f79xO
2ihzCAKcfZTzfxomR4GnyfxMolG++buOZ4wz+EAhfjgU1+3s5C5FLUvUKoQX2bJu
0MCvGFxjnoZ1qXYv7tMqxSuBa4lMrNQ3/9iS5oC+Z0NplxvjvGKjQyLhwpUT9R7U
qOU9xa9yrSGMeZM9kYILcxdtFOAnFWJ0kbjFpPT4Zn81a7bxL/s=
=J3fD
-----END PGP SIGNATURE-----
