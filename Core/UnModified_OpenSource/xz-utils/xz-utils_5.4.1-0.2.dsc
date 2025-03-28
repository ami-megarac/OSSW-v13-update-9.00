-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: xz-utils
Binary: liblzma5, xz-utils, xzdec, liblzma-dev, liblzma-doc
Architecture: any all
Version: 5.4.1-0.2
Maintainer: Jonathan Nieder <jrnieder@gmail.com>
Uploaders: Mohammed Adnène Trojette <adn+deb@diwi.org>
Homepage: https://tukaani.org/xz/
Standards-Version: 4.6.1
Vcs-Browser: https://salsa.debian.org/debian/xz-utils
Vcs-Git: https://salsa.debian.org/debian/xz-utils
Testsuite: autopkgtest
Testsuite-Triggers: autoconf, automake, debhelper-compat, gettext, libtool
Build-Depends: debhelper-compat (= 13), dpkg-dev (>= 1.16.2), autoconf (>= 2.64~), automake, libtool (>= 2.2), gettext, autopoint | gettext (<< 0.18-1), autopoint | cvs, po4a
Build-Depends-Indep: doxygen
Build-Conflicts: automake1.4
Package-List:
 liblzma-dev deb libdevel optional arch=any
 liblzma-doc deb doc optional arch=all
 liblzma5 deb libs optional arch=any
 xz-utils deb utils standard arch=any
 xzdec deb utils optional arch=any
Checksums-Sha1:
 8facb914772e5963d86f9cdd781c928009879b3b 1485272 xz-utils_5.4.1.orig.tar.xz
 7c8305fda4dbb47a962858e3e3496da0af715c4b 833 xz-utils_5.4.1.orig.tar.xz.asc
 4bc3ff0ea1ae66f8ed58f0f27c036b6037d4ef7e 87432 xz-utils_5.4.1-0.2.debian.tar.xz
Checksums-Sha256:
 5d9827aa1875b21c288f78864bb26d2650b436ea8d2cad364e4921eb6266a5a5 1485272 xz-utils_5.4.1.orig.tar.xz
 4b0c7707114996092a5f75a98333de2102db83a27218e4903b8fb7c24a8d0233 833 xz-utils_5.4.1.orig.tar.xz.asc
 67eeab55ab3e4b35722d4ec255e0f735b3c61aab0437ab3c8274f5aa77c9c407 87432 xz-utils_5.4.1-0.2.debian.tar.xz
Files:
 47d831c659e94071d5dd384d0d1ed4c6 1485272 xz-utils_5.4.1.orig.tar.xz
 6bc67b7cf68811620ef641ed53ecea3f 833 xz-utils_5.4.1.orig.tar.xz.asc
 bcba51f0621a2346c9da6e63964b18ab 87432 xz-utils_5.4.1-0.2.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZCVGlf/wqkRmzBnme5boFiqM9dEFAmPpSrMACgkQe5boFiqM
9dF3Dg/9FLA5tm1rDB1eTHGqzjy9F5cs8Sp+xyT0DKZvMBZggNu1kQLSZB3c7U75
U1kPu19wa5AdA/UV7kZ4aHR+ez9cKclnz6fIdyKfEi+6mZo4kymbw57CKTAFdwyu
1xFxnD1tI0sV5ehBd2a1YT658UmtzfkBJd5aIEDl68gaoppH9HrCuoZgtnP5IV/a
e8sYwgru/joDO2ak1Cj21H4O1t/EOJjJIZ7iE+lW2mdSg2IH6boGCskY/BAL31rJ
rTZBIbvRrJiBIPL62fjfg/aDxo0vca0prgXWdkYYgvIzdg23WTdPKmzOVkjFvL3M
1i4he38C4U8tmHhDjEes4ivF7NQuyc2eBd5YholIUdQSzbvzq4Ut6B0avr6zceYa
+LQ3iUEKLbwU8XaQ2HYZR0dm/6pFyNHi+VLuHVMNNhCPNJISFuPo41KCpbLxlkPR
gs2u86wYwlWRuBqmgkD/W9ccyTgIxE/iljqlYypenqmAY6XjvmXpuelObXl1hVXO
NYG7KnQsUU5OnauZ8SbkSmKNIgaZTDFw54/aKyV/N7MHfwthnf6gwst/X6w5/SZv
GbUkinJCuApd/epKa6d52t2obua+0ozuGshaNl+Op36ZmZS6lctkHcSCUDDLxwxK
FzsF+ZYP67SFUNjk9ss+zUJk7UNLNfeIvJ2fDM85nvlArUSBBYY=
=ifAj
-----END PGP SIGNATURE-----
