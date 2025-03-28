-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: parted
Binary: parted, parted-udeb, libparted2, libparted-fs-resize0, libparted2-udeb, libparted-fs-resize0-udeb, libparted-i18n, libparted-dev, parted-doc
Architecture: any all
Version: 3.5-3
Maintainer: Parted Maintainer Team <parted-maintainers@alioth-lists.debian.net>
Uploaders: Bastian Blank <waldi@debian.org>, Colin Watson <cjwatson@debian.org>
Homepage: https://www.gnu.org/software/parted
Standards-Version: 3.9.8
Vcs-Browser: https://salsa.debian.org/parted-team/parted
Vcs-Git: https://salsa.debian.org/parted-team/parted.git
Build-Depends: debhelper-compat (= 13), libncurses-dev | libncurses5-dev, libreadline-dev | libreadline6-dev, libdevmapper-dev [linux-any], uuid-dev, gettext, texinfo, libblkid-dev, pkg-config, check <!nocheck>, autoconf, automake, autopoint, gperf
Package-List:
 libparted-dev deb libdevel optional arch=any
 libparted-fs-resize0 deb libs optional arch=any
 libparted-fs-resize0-udeb udeb debian-installer optional arch=any
 libparted-i18n deb localization optional arch=all
 libparted2 deb libs optional arch=any
 libparted2-udeb udeb debian-installer optional arch=any
 parted deb admin optional arch=any
 parted-doc deb doc optional arch=all
 parted-udeb udeb debian-installer optional arch=any
Checksums-Sha1:
 55023eb2acb3b22e6fc999d73e285f0a3706101a 1871824 parted_3.5.orig.tar.xz
 a6494ad47e4d99009397f877101d26885f96ea88 488 parted_3.5.orig.tar.xz.asc
 cd4ece4acbd4cf33b62c1583b2d620eb751c9fd1 55716 parted_3.5-3.debian.tar.xz
Checksums-Sha256:
 4938dd5c1c125f6c78b1f4b3e297526f18ee74aa43d45c248578b1d2470c05a2 1871824 parted_3.5.orig.tar.xz
 1b4a381f344435baf69616a985fac6f411d740de9eebd91e4cccdf046332366a 488 parted_3.5.orig.tar.xz.asc
 f889132fc19d1283f157ad466fd71e1dd4ba4302b92c4660535f8fba5a1ff340 55716 parted_3.5-3.debian.tar.xz
Files:
 336fde60786d5855b3876ee49ef1e6b2 1871824 parted_3.5.orig.tar.xz
 c6628218f693e77918acf4818549259f 488 parted_3.5.orig.tar.xz.asc
 343e828c91ffe92304738aac97e7317e 55716 parted_3.5-3.debian.tar.xz
Dgit: 223923842ef02a31781b25389342b509677e996e debian archive/debian/3.5-3 https://git.dgit.debian.org/parted

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEErApP8SYRtvzPAcEROTWH2X2GUAsFAmN0H9cACgkQOTWH2X2G
UAtaxRAAqTrOO5BJoB+dv20skiMz03fwMREYqu5zxf7MfLmSsw/Fdazz9Tjz7S5S
yGvGPVhcCdYRXQVv/0RGyFJki18fkqaGg32EL9CHVgKqEVGYI+fAHSCXEFbfKNRg
p4sV+KQZ3vuffh7lXpxNyIGD6FeL5BQFSqVX0n6Ur7PPrzfcdoXqQIUkpYq7RqA0
JoX/jVY1croDvQ5z4XXtS6Wle47oWZ5DgJXmfU4G3ruHAbQhDNSSLi2cVg9sjjCd
ugKhANogKqqb6M9OvXjRr/L1ZrYJU01kNyMc7lNlvVxJvbHbuPQJpItp1lsEWpNQ
gEqMJjvSgn03uE11k99bz/gR00foQ7cGUjXf3cg+6Wq2m3/Ra9xLre96x9UgM4e4
H5q004JTMzN55T8jJv0a06YItmblK7y3Icmuv0gsH2dXeWTSpMY1RCv5v8OTx3lS
CnpcCmVpRgF/5YSo8X2KkRWtSmIwjSn0oPA0/IHerEb453oBjFYppW+O7M8AMqUo
tP3Q0vODYnCOm+RFHkXvpPt+RdpnrKbxj9JGmekoQRQ0JxZPiHCTnVVcLKIsNcHK
OOABjlr7zBEVthGmZDnC7eWDqbfnnkLxJDkJoZEy0uz1/ZkXQMAZvcpjKOMc/6JP
xBDgr7GW89BtXDRNK8flz+lQPmXzAeIhG9zzGsgw9l6kjymlZ08=
=JfMj
-----END PGP SIGNATURE-----
