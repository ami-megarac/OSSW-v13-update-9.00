-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: pciutils
Binary: pciutils, libpci-dev, libpci3, pciutils-udeb, libpci3-udeb
Architecture: any
Version: 1:3.9.0-4
Maintainer: Guillem Jover <guillem@debian.org>
Homepage: https://mj.ucw.cz/sw/pciutils/
Standards-Version: 4.6.2
Vcs-Browser: https://git.hadrons.org/cgit/debian/pkgs/pciutils.git
Vcs-Git: https://git.hadrons.org/git/debian/pkgs/pciutils.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, pkg-config
Build-Depends: debhelper-compat (= 13), debhelper (>= 13.10), pci.ids (>= 0.0~2019.11.10-2) <!noudeb>, pkgconf | pkg-config, libkmod-dev [linux-any], libudev-dev (>= 196) [linux-any], zlib1g-dev
Package-List:
 libpci-dev deb libdevel optional arch=any
 libpci3 deb libs optional arch=any
 libpci3-udeb udeb debian-installer optional arch=any profile=!noudeb
 pciutils deb admin standard arch=any
 pciutils-udeb udeb debian-installer optional arch=any profile=!noudeb
Checksums-Sha1:
 b9f3003b6e494cb68cb88b0e5cb088bfa1479c52 908219 pciutils_3.9.0.orig.tar.gz
 ebd722ab3159274d1d5c1a6e6396b6ba26a7dbde 228 pciutils_3.9.0.orig.tar.gz.asc
 8d6ed524bf2de99eae6bd6f205e8484e178a98a6 19704 pciutils_3.9.0-4.debian.tar.xz
Checksums-Sha256:
 8953a785b2e3af414434b8fdcbfb75c90758819631001e60dd3afb89b22b2331 908219 pciutils_3.9.0.orig.tar.gz
 e1f32991072cc621d99a2437a923af09951cf1ad95e578a359b4e486cf641d58 228 pciutils_3.9.0.orig.tar.gz.asc
 8fa19682a52543b1d4f613099ead5bdf0eee42b84003626625801bb05ed564a5 19704 pciutils_3.9.0-4.debian.tar.xz
Files:
 357496ae1652aac66cad0d2de2d831d0 908219 pciutils_3.9.0.orig.tar.gz
 beb6d1dc52bfd61441a6b04319ccf872 228 pciutils_3.9.0.orig.tar.gz.asc
 4a03667872bb4440bdca018bae5ac925 19704 pciutils_3.9.0-4.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEETz509DYFDBD1aWV0uXK/PqSuV6MFAmPHNPkACgkQuXK/PqSu
V6OqsQ//cXpFrSmg5ovspRqGgX84SWglubA/0WmaSR+OUCikeVJpSvmaFDHp+4+d
HPh2KUMIZXgOBF3v2EHk/pGXraeQc7Fj5S3Y4tV7EpQL8M+LXw52wn8l6I3AnvKd
D2+i24RX2ffeFOHvVsNbUD6hKP9NtO73HcsZrInBk2B7Nh8KVctW0iYRpKnSqveg
SgeiRJn5AbjC1aUE7W/MyWgSytRWLH1TW9Jl7/CEF7EHqsmI80hOrovhUOTZKwrt
ejJhfMBQhItVBiMMOC6I9oksTt3cyo9qFJE1EaO1FBk0CJ83fgf4MPpbtXQxS4t/
8+4rIex4rj+vp4uHhBzb1LtIKjXWp3cgUkg9rbyoG3vvFUWwAR4oC1A0htRNO85d
w0KGW7yVFeTW64QClJ9dyYh8qWDESQYem/83Ywex7Jx+B+yfP4d+Z+x9uoQgRAmZ
O+RB86yLXfeN7IRhYwO7j0YThjZ+NQuwf1WH7wiPwd3JLdNK17BmKZP9z9l2tPAX
Jxf9lqF3hOlsbUOKS02IkKb2fjtyE78Y97VcfNV6idhT3gQJLCKNtMBGgQXVGOXL
J5CVWLTh+1qrBl7KURd8pVcNCBiOneHzVzmvySxyB4suCmpZJOpZ9gYB0Q/hDE1u
eX2RxHEC45gseyVwYWBjLXYswyvKtrsTirtt7Edao1UKTJ3BIlY=
=WI7x
-----END PGP SIGNATURE-----
