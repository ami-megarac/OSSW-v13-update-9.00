-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: libselinux
Binary: selinux-utils, libselinux1, libselinux1-dev, libselinux1-udeb, ruby-selinux, python3-selinux
Architecture: linux-any
Version: 3.4-1
Maintainer: Debian SELinux maintainers <selinux-devel@lists.alioth.debian.org>
Uploaders: Laurent Bigonville <bigon@debian.org>, Russell Coker <russell@coker.com.au>
Homepage: https://selinuxproject.org
Standards-Version: 4.6.0
Vcs-Browser: https://salsa.debian.org/selinux-team/libselinux
Vcs-Git: https://salsa.debian.org/selinux-team/libselinux.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, pkg-config, python3-all
Build-Depends: debhelper-compat (= 13), dh-python <!nopython>, file, gem2deb <!noruby>, libsepol-dev (>= 3.4), libpcre2-dev, pkg-config, python3-all-dev <!nopython>, swig <!nopython> <!noruby>
Package-List:
 libselinux1 deb libs optional arch=linux-any
 libselinux1-dev deb libdevel optional arch=linux-any
 libselinux1-udeb udeb debian-installer optional arch=linux-any
 python3-selinux deb python optional arch=linux-any profile=!nopython
 ruby-selinux deb ruby optional arch=linux-any profile=!noruby
 selinux-utils deb admin optional arch=linux-any
Checksums-Sha1:
 1fff75ad31eca7979740af01279d868ca8cbd249 210061 libselinux_3.4.orig.tar.gz
 7ae55f4ca91e3409e9c85b2c3a1e6201d7b1b4b8 833 libselinux_3.4.orig.tar.gz.asc
 3271ff5cc2cb8ed0ee0ba7637ca6c5735c97ca39 29416 libselinux_3.4-1.debian.tar.xz
Checksums-Sha256:
 77c294a927e6795c2e98f74b5c3adde9c8839690e9255b767c5fca6acff9b779 210061 libselinux_3.4.orig.tar.gz
 5c370bdef7b756697445e6838ba1b2d934f668b244461e36e245f589ec994a24 833 libselinux_3.4.orig.tar.gz.asc
 046ace4ad0092104bdfb0c6e5187131910216c89b8b81a4bce3c2067615c9196 29416 libselinux_3.4-1.debian.tar.xz
Files:
 11d0be95e63fbe73a34d1645c5f17e28 210061 libselinux_3.4.orig.tar.gz
 ae2ee1e3bb723f57e74b21ac57aa94b2 833 libselinux_3.4.orig.tar.gz.asc
 1587c87b12258d98b5aaead3f519fdd4 29416 libselinux_3.4-1.debian.tar.xz
Ruby-Versions: all

-----BEGIN PGP SIGNATURE-----

iQFFBAEBCAAvFiEEmRrdqQAhuF2x31DwH8WJHrqwQ9UFAmKbNxYRHGJpZ29uQGRl
Ymlhbi5vcmcACgkQH8WJHrqwQ9X1cQf/Xzh/xIoHQl0l1Z3xfmIw0Jiim3/GAbZ4
J3Nz2reaC9ColQZeeM5O34jZ2R2QzvSempq0COAXDQkJWyshCFTxazUF6eiA+Phq
riClCgdDx5uhWJzvQXTReadk8W/H9fNBqAysIm/NdiVQENU5OHSyCXXs4YRdQYqs
UjN84SPOAisljdlUV5gPmP5nZ1Ipjp496E9kpLa5DJtBw753SOhyT/VDofNlqcJH
+UtK8xV2xIY4T4SzM2k2FjadIyyYbJ2sAIqzeRN82M4NkoIGFf6TaF5YYkFGuL7E
VdyN5k3KadW6rznQ7BVZm/Fw5Pk1dnQVv/FOSwAQhMW/baJnf9tlQA==
=+OGJ
-----END PGP SIGNATURE-----
