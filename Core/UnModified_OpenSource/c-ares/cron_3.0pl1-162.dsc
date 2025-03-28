-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: cron
Binary: cron, cron-daemon-common
Architecture: any all
Version: 3.0pl1-162
Maintainer: Javier Fernández-Sanguino Peña <jfs@debian.org>
Uploaders: Georges Khaznadar <georgesk@debian.org>
Homepage: https://ftp.isc.org/isc/cron/
Standards-Version: 4.6.1
Vcs-Browser: https://salsa.debian.org/debian/cron
Vcs-Git: https://salsa.debian.org/debian/cron.git
Testsuite: autopkgtest
Testsuite-Triggers: apt, binutils, bsdextrautils, exim4, mailutils, rsyslog
Build-Depends: debhelper-compat (= 13), libpam0g-dev, libselinux1-dev [linux-any], libaudit-dev [linux-any]
Package-List:
 cron deb admin important arch=any
 cron-daemon-common deb admin important arch=all
Checksums-Sha1:
 f8d00de4c7c0eae97bedb4a3ec10ea21d43ece84 59245 cron_3.0pl1.orig.tar.gz
 2426345218e36c5d2db4453f4f79ba26523f0ab6 115032 cron_3.0pl1-162.debian.tar.xz
Checksums-Sha256:
 d931e0688005dfa85cfdb60e19bf0a3848ebfa3ee3415bf2a6ea3ea9e5bcfd21 59245 cron_3.0pl1.orig.tar.gz
 72790571714030f0ba9acd98a14ad1cef835d3cc7056f013f67182adf1a83d3a 115032 cron_3.0pl1-162.debian.tar.xz
Files:
 4c64aece846f8483daf440f8e3dd210f 59245 cron_3.0pl1.orig.tar.gz
 192901ac6a8c01f495638c691bf2e0ec 115032 cron_3.0pl1-162.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQJIBAEBCAAyFiEEM0CzZP9nFT+3zK6FHCgWkHE2rjkFAmQAUZcUHGdlb3JnZXNr
QGRlYmlhbi5vcmcACgkQHCgWkHE2rjn+Tg//ShAePzM0K2KTtkC/OFDgga6EhhdA
CbnupbZ2dBj1Hi9/zUnwbCe+yEZAbtGgqUO4JF4Hy8gkVvI3ubPiXvMfmW6kUJHn
iQcuZzD5UGE1hD6gVfzGrmcEpNAdrHAx+wO6Arh8VSI/Pqp0K79hpfOncb2PP3eE
Z44TwV6z71Vo7a1fs9WBSaIjsf+7dDL6tJx7+WistJJ0a4tpADGRtHEJE/DZgUfF
wbunzmRRsLj9m603iyk3gUA8ITR/tzMOoBOWBDixE7Vye9n9TWDOTgckLOMJYdIA
UjdW963fN14m7sKeUJJQNAA/KlFpXcJNTchS9Du+2xzdwHgp5nFcP1Xh2sy23+nB
z4auc6/Bo4F5hGwS9nxUzziA+qKZ8UjHubxKGT9eYql2Y0SNQwgbipyW7nXisj7s
5Q0Rs5drDHfhlRSXsQfI4pfgQFkGX9zJmXHSdXv+DSqlfF7QrZx6NR6DeFdIVnB4
5uVJnA1Mr4P0uLfCnjLdxzzrx2+BoGRkcY+VMQvVpW1neoWSwbYSSEjA2Np4N5ym
kTLStnxPK9ORKYT3eqUoao135/cA+x3fB0a6cyHi3mHwUPTb9X7aZnUzzIELE3/c
fxt8rekpXdmyB38X+nh2Hl70+T8JRkPWtCo2E2bh+C3bNkEuTvO931cckA/GRAg9
ExnYoO0Znm1GahQ=
=s9dP
-----END PGP SIGNATURE-----
