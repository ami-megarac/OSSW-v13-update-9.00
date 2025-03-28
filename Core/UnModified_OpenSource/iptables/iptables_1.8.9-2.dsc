-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: iptables
Binary: iptables, libxtables12, libxtables-dev, libiptc0, libiptc-dev, libip4tc2, libip4tc-dev, libip6tc2, libip6tc-dev
Architecture: linux-any
Version: 1.8.9-2
Maintainer: Debian Netfilter Packaging Team <pkg-netfilter-team@lists.alioth.debian.org>
Uploaders: Arturo Borrero Gonzalez <arturo@debian.org>, Alberto Molina Coballes <alb.molina@gmail.com>, Laurence J. Lane <ljlane@debian.org>
Homepage: https://www.netfilter.org/
Standards-Version: 4.5.0
Vcs-Browser: https://salsa.debian.org/pkg-netfilter-team/pkg-iptables
Vcs-Git: https://salsa.debian.org/pkg-netfilter-team/pkg-iptables.git
Testsuite: autopkgtest
Build-Depends: autoconf, automake, bison, debhelper-compat (= 13), flex, libmnl-dev, libnetfilter-conntrack-dev, libnetfilter-conntrack3, libnfnetlink-dev, libnftnl-dev (>= 1.1.6), libtool, netbase (>= 6.0), python3
Package-List:
 iptables deb net optional arch=linux-any
 libip4tc-dev deb libdevel optional arch=linux-any
 libip4tc2 deb libs optional arch=linux-any
 libip6tc-dev deb libdevel optional arch=linux-any
 libip6tc2 deb libs optional arch=linux-any
 libiptc-dev deb libdevel optional arch=linux-any
 libiptc0 deb oldlibs optional arch=linux-any
 libxtables-dev deb libdevel optional arch=linux-any
 libxtables12 deb libs optional arch=linux-any
Checksums-Sha1:
 f47bc1026858d7078c8d0544bbb9bea5c08fd9ad 637848 iptables_1.8.9.orig.tar.xz
 82446810755ad88ba4a55f47e26f895eb2948f95 25172 iptables_1.8.9-2.debian.tar.xz
Checksums-Sha256:
 ef6639a43be8325a4f8ea68123ffac236cb696e8c78501b64e8106afb008c87f 637848 iptables_1.8.9.orig.tar.xz
 5415053f2033a351cf85c33e13d67388770f803e8bdce24f46371ea6e7488a6b 25172 iptables_1.8.9-2.debian.tar.xz
Files:
 ffa00f68d63e723c21b8a091c5c0271b 637848 iptables_1.8.9.orig.tar.xz
 833a30b64d7b257ce27e6bfa91a33b96 25172 iptables_1.8.9-2.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQJGBAEBCgAwFiEE3ZhhqyPcMzOJLgepaOcTmB0VFfgFAmPFVecSHGFydHVyb0Bk
ZWJpYW4ub3JnAAoJEGjnE5gdFRX4i7UP/0FIiuuBRHaoh6vg99kU0IuypSTpAMQv
x8PD6AqsdP8OYzbV8iYQiGTh0FD4ie5S+ZKmyCbbkruj5N2xZShp92AYPMfUGAPM
wL7WIxXwRQ7ARi+NaN+mRYj3/jzdTn+j9f4nIIDR+QZG9pFq4su5Au8qwjMZGUvv
vFoQJwf26gFwBcWHGre+PMp7aAhB4+iLEUOe5SePN0Obg0M/Xq6smOP2i6+kP7di
xl+l0tUMpd2AM5fuK6mJt/SZNvdAqMXUqIz9Q4dWFywIuOQXw8MroMz7rikPccNG
LyVQdVpPXkhueJhV3xdAV+eQvXDMwBCGIPIDKY/CxlWaUK2NS2DLin81yJiTbi4V
A4AT1QxaEiYppdt7a9uKH3acnPEOVNi1mgtKl3+RwOfhbtgTIX8M02J/d3XQZZnX
D3Iy27RBYZSo1HhOa6PF3zEetKQsT1PHzEsxeRP0/Nfji5K6o4EKFYf+wjr6knvR
H//oIIxHCY+2IlBucPExBdF24DTi9A/ZH4mAQgj9wy3dkr+Ik/bJUJgqPutGILM5
rxFPDRcg1yNEkmZjZw7Pq/ARYPDUejGMwjHUprvbC8fZN1f7nA/4NHP/wrc+6IM9
nH6OHEQh0ihYZC29bKHljgTM9c6F2EQvIDrLqkjmBwF6KAc9ITLQTKndkmzu5d+N
x+of0u9wv9Wp
=5jpi
-----END PGP SIGNATURE-----
