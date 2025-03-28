-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (native)
Source: cdebconf
Binary: cdebconf, cdebconf-gtk, libdebconfclient0, libdebconfclient0-dev, cdebconf-udeb, cdebconf-priority, libdebconfclient0-udeb, cdebconf-text-udeb, cdebconf-newt-udeb, cdebconf-gtk-udeb
Architecture: any all
Version: 0.270
Maintainer: Debian Install System Team <debian-boot@lists.debian.org>
Uploaders:  Colin Watson <cjwatson@debian.org>, Cyril Brulebois <kibi@debian.org>
Standards-Version: 3.9.7
Vcs-Browser: https://salsa.debian.org/installer-team/cdebconf
Vcs-Git: https://salsa.debian.org/installer-team/cdebconf.git
Build-Depends: debhelper-compat (= 13), po-debconf, libslang2-dev, libnewt-dev, libtextwrap-dev, libreadline-dev (>= 8.1.2-1.1), libdebian-installer4-dev | libdebian-installer-dev, libglib2.0-dev, libgtk2.0-dev <!pkg.cdebconf.nogtk>, libcairo2-dev <!pkg.cdebconf.nogtk>, libselinux1-dev [linux-any] | libselinux-dev [linux-any], dh-autoreconf, dh-exec
Package-List:
 cdebconf deb utils optional arch=any
 cdebconf-gtk deb admin optional arch=any profile=!pkg.cdebconf.nogtk
 cdebconf-gtk-udeb udeb debian-installer optional arch=any profile=!pkg.cdebconf.nogtk
 cdebconf-newt-udeb udeb debian-installer optional arch=any
 cdebconf-priority udeb debian-installer standard arch=all
 cdebconf-text-udeb udeb debian-installer optional arch=any
 cdebconf-udeb udeb debian-installer standard arch=any
 libdebconfclient0 deb libs optional arch=any
 libdebconfclient0-dev deb libdevel optional arch=any
 libdebconfclient0-udeb udeb debian-installer optional arch=any
Checksums-Sha1:
 c0a1c522ae5a06bccd99ad39560509a9c9d5285f 284336 cdebconf_0.270.tar.xz
Checksums-Sha256:
 c27ef57f7dc8a2e7e9651cd0e964f543677bb314a1cf9bc1019736818e342638 284336 cdebconf_0.270.tar.xz
Files:
 4354c0a6e2cd7ddeaa1a8c5f3a23e484 284336 cdebconf_0.270.tar.xz

-----BEGIN PGP SIGNATURE-----

iQJEBAEBCgAuFiEEtg6/KYRFPHDXTPR4/5FK8MKzVSAFAmRsj0cQHGtpYmlAZGVi
aWFuLm9yZwAKCRD/kUrwwrNVIH0xD/9OHswjK4sZ1MU1PStbWQhgp6IYm/QsjPoE
ePgYhl8s+XJUmHgcHpz2FPj2B0c3X/fX52bzIsiYE5tzAvywLiAKYGsSVhPFUBMf
xnwUIBAhpQO4R2ZZEHDy8fYx1DrXSjnTF6P0z8hVIwwrecJw6LU9Ba/0vrmk7z7h
pvoPhVrlbc2XUaW6Ixnz84gEq+WmI5Tl2Gz+ZJTcEYesnCXYTCTe7KXDMsVR2sQ4
XXmH8p3E0OHjID+8XiPHXI1E8DR/s1wnpfgMElA5K8ia+Ua3l7xmdf8tcDamJtDd
B9g1TK56T8G7GZaXkO5yzC/nRwsHbS+hbj6iT7kOPpDryOviNgmzfqjTCpjaBRnA
aeCD7aL3H0YzIJs3/ZH6uo6EqVPPMGm2/AfQA6VVEFuwFMr8Wa69A8mcpMFicwaf
aUUqnQTeFlz2Uu9bQ4wN3qqXo3wsI9xbbGWdxOmZCaU5bAm+Q03OxtTNLECPqEzK
WN8NL8wP6d/A8ha4Fce4titAc2t3JYC7CPPJrWunfnmHb7MlcVE0+28EBsEHiGxj
6fM7Z54EH3noWvlnjstlvwJndwPlxbVIGTxisAicjjYTVFyE58LCTrIfsUrkbP8x
wzTn6ciJJ/rM+bZ919yG/uSruEPDKdRBYQAbfPf+iPqilCyfOXAalbW3KNIS2fIW
mjPf5HPQNA==
=GgUD
-----END PGP SIGNATURE-----
