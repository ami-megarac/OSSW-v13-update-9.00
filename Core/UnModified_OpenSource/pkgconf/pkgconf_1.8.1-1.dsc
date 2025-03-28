-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: pkgconf
Binary: pkgconf, pkgconf-bin, libpkgconf3, libpkgconf-dev, pkg-config
Architecture: any
Version: 1.8.1-1
Maintainer: Andrej Shadura <andrewsh@debian.org>
Homepage: http://pkgconf.org/
Standards-Version: 4.6.0
Vcs-Browser: https://salsa.debian.org/debian/pkgconf
Vcs-Git: https://salsa.debian.org/debian/pkgconf.git
Build-Depends: debhelper-compat (= 13), kyua <!nocheck>, atf-sh <!nocheck>
Package-List:
 libpkgconf-dev deb libdevel optional arch=any
 libpkgconf3 deb libs optional arch=any
 pkg-config deb oldlibs optional arch=any
 pkgconf deb devel optional arch=any
 pkgconf-bin deb devel optional arch=any
Checksums-Sha1:
 5d338fad0c8e2374687f42cadfdd8ebf8ab5dffc 302372 pkgconf_1.8.1.orig.tar.xz
 ae974d9ec03d2b1196d2109b2a0f3789daa5786a 15060 pkgconf_1.8.1-1.debian.tar.xz
Checksums-Sha256:
 644361ada2942be05655d4452eb018791647c31bba429b287f1f68deb2dc6840 302372 pkgconf_1.8.1.orig.tar.xz
 bd9330105d17bf4b9a9d2aaba4a150b35da21b7ba4b45d4bf7e034fa6e53ba2f 15060 pkgconf_1.8.1-1.debian.tar.xz
Files:
 51fad3383640dfc47a92731581dd2917 302372 pkgconf_1.8.1.orig.tar.xz
 3ad430d6d7089cb78665f45007e49ca5 15060 pkgconf_1.8.1-1.debian.tar.xz
Dgit: 2a27c0cc060f1933ffc6efd3d2b3b08f7608bd68 debian archive/debian/1.8.1-1 https://git.dgit.debian.org/pkgconf

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQSD3NF/RLIsyDZW7aHoRGtKyMdyYQUCY80ahQAKCRDoRGtKyMdy
YaOzAQDxs9Mo5TzQsSr1OFx4NoKF4xM3iROejHOihtB6AcPlWwEA2rsVs24El7TJ
VOmpqp/IVgFo9xGC8n42XjXd1MYr3QQ=
=zFgb
-----END PGP SIGNATURE-----
