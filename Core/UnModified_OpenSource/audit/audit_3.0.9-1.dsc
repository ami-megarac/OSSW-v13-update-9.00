-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: audit
Binary: auditd, libauparse0, libauparse-dev, libaudit1, libaudit-common, libaudit-dev, python3-audit, golang-redhat-audit-dev, audispd-plugins
Architecture: linux-any all
Version: 1:3.0.9-1
Maintainer: Laurent Bigonville <bigon@debian.org>
Homepage: https://people.redhat.com/sgrubb/audit/
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/debian/audit
Vcs-Git: https://salsa.debian.org/debian/audit.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, pkg-config, python3-all
Build-Depends: debhelper-compat (= 12), dh-python <!nopython>, dpkg-dev (>= 1.16.1~), libcap-ng-dev, libkrb5-dev, libldap2-dev <!pkg.audit.noldap>, libwrap0-dev, linux-libc-dev (>= 5.9~), python3-all-dev:any <!nopython>, libpython3-all-dev <!nopython>, swig
Build-Depends-Indep: golang-go
Package-List:
 audispd-plugins deb admin optional arch=linux-any profile=!pkg.audit.noldap
 auditd deb admin optional arch=linux-any
 golang-redhat-audit-dev deb golang optional arch=all
 libaudit-common deb libs optional arch=all
 libaudit-dev deb libdevel optional arch=linux-any
 libaudit1 deb libs optional arch=linux-any
 libauparse-dev deb libdevel optional arch=linux-any
 libauparse0 deb libs optional arch=linux-any
 python3-audit deb python optional arch=linux-any profile=!nopython
Checksums-Sha1:
 84b22c1b79fc4708c6ad9db0097c77979dd8b3d7 1210655 audit_3.0.9.orig.tar.gz
 b37cd324c007ff4e87b8a3828d34d059b9ef662e 18784 audit_3.0.9-1.debian.tar.xz
Checksums-Sha256:
 fd9570444df1573a274ca8ba23590082298a083cfc0618138957f590e845bc78 1210655 audit_3.0.9.orig.tar.gz
 b80d2685b79a617098a3389f41356ffd77d8d62d59bee03b189e31dd9b81580e 18784 audit_3.0.9-1.debian.tar.xz
Files:
 b10d29cc8454316eb0ec34f4c0345c2d 1210655 audit_3.0.9.orig.tar.gz
 ecb1b2bca779de28f2d68b47894d05d8 18784 audit_3.0.9-1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQFFBAEBCAAvFiEEmRrdqQAhuF2x31DwH8WJHrqwQ9UFAmPkvr0RHGJpZ29uQGRl
Ymlhbi5vcmcACgkQH8WJHrqwQ9W4dQf+ONoWcNqawGzjubp061aMPcRGpsBT5sXk
foy4jkX3I8rxzn35p55pWZU80mR2bDJqszyPaAPKnhuS09YJrAq+y+fJzAggTCz5
Vplnb1DM+gcXC0a/eOBBiFvF3QMIPcExSVGoYK0ZDO0xEFfDqUTYisR/AeuePHdc
WualxG0LbUn+0oSU6Su2qdN0O8kRBQmrpcOROant5TC1Kz613tm3e+ZDFqXDkwgi
87AyFOb3nXRWGOu3Mp1lufGjDslBhtGwa14wbbUaTfzoUcjiwdRUCikJpPZ8tlMD
3HjbF0+zZvA/A8PvnYDRBIdC6l28AssqB1zk5SJ406Yr+k6CESjjQQ==
=qRwe
-----END PGP SIGNATURE-----
