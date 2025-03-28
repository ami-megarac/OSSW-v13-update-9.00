-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: net-snmp
Binary: snmpd, snmptrapd, snmp, libsnmp-base, libsnmp40, libnetsnmptrapd40, libsnmp-dev, libsnmp-perl, tkmib
Architecture: any all
Version: 5.9.3+dfsg-2
Maintainer: Craig Small <csmall@debian.org>
Homepage: https://net-snmp.sourceforge.net/
Standards-Version: 4.6.1
Vcs-Browser: https://salsa.debian.org/debian/net-snmp
Vcs-Git: https://salsa.debian.org/debian/net-snmp.git
Testsuite: autopkgtest
Build-Depends: debhelper-compat (= 12), libtool, libwrap0-dev, libssl-dev, perl:any, perl-xs-dev, autoconf, automake, procps, pkg-config, libbsd-dev [kfreebsd-i386 kfreebsd-amd64], libkvm-dev [kfreebsd-i386 kfreebsd-amd64], libsensors-dev [!hurd-i386 !kfreebsd-i386 !kfreebsd-amd64], default-libmysqlclient-dev, libpci-dev
Build-Conflicts: libsnmp-dev
Package-List:
 libnetsnmptrapd40 deb libs optional arch=any
 libsnmp-base deb libs optional arch=all
 libsnmp-dev deb libdevel optional arch=any
 libsnmp-perl deb perl optional arch=any
 libsnmp40 deb libs optional arch=any
 snmp deb net optional arch=any
 snmpd deb net optional arch=any
 snmptrapd deb net optional arch=any
 tkmib deb net optional arch=all
Checksums-Sha1:
 290262e817a0c9fe27565da4bf1a3b4823986b2e 3545096 net-snmp_5.9.3+dfsg.orig.tar.xz
 b46e011e65ff80e72acbfc1044b48b9fa31ae3ff 70072 net-snmp_5.9.3+dfsg-2.debian.tar.xz
Checksums-Sha256:
 b78f93276a80d40726d94956aa7d06fd8752b5c0624af5bbf155cbc33fd521d1 3545096 net-snmp_5.9.3+dfsg.orig.tar.xz
 8ae27b57cebe5688df9c802865cd6fcf349cde9ac758a621b3d0ba9fe446521b 70072 net-snmp_5.9.3+dfsg-2.debian.tar.xz
Files:
 cb1dd152d16ea204e7b026937f152b38 3545096 net-snmp_5.9.3+dfsg.orig.tar.xz
 a0561270faa298995d7106ff5c0de3bb 70072 net-snmp_5.9.3+dfsg-2.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEXT3w9TizJ8CqeneiAiFmwP88hOMFAmOzkoMACgkQAiFmwP88
hOMI1w/+IzYXM0edbUfmZRR3vf0CGqJ1zDHJYw7YIcd7ayAywdYtkJ8N+vH4cev6
3sW7GoLc1nei0dcQtj4VLfVGe3KX+zOTmy3SD+Bv+gmYRQOe17+vr92g3O8Ps34r
fRww96jN+Q81TBsBCg8UXifhwI5DucmSVsR5vREcotT2URrBB3Jf45A9FqZz1BOE
dgjWC0Wm36FSSom3aRnxvMmsX3dp1dEZKdM2f3m5ZDdzQxcaeJaDhzUc5sJnV658
NxVT5TJeBhO+yqcv+U8gqxzpOyVfzT6iVxDsr4+LUGXlJ60NRibara7qD+GMh48n
PnEQe3cqrXcvjEn6+ru8kkNQm5+P7xLywIpWhAYqNeh5rUjEyKyB9WP2lbnqxW0o
kb1Sdq4/tUpdKoyGX0Uz6h2Yu9Ua87ecUyvVdUG5vuPI/FzXrG9c106Iv8TTcr0I
gIEQpHCx6UmviTAxy94MvSBODmpQY9H8acWUgXMTntQVHL/6HHVOT+CLWwqlqDlp
9g4VAPMH+DGEIuwi66wVAYpcvt98lNpPkkTmUUYr4SewS/FiKQvgBuBOTsaCEgJz
9oe+lqmNsiCA6abNUv7T8C3ge/qg3TplsC6bdxlpWpS42zzZMo1m0wCn7bX2+fBz
TXGY392jY8h0B0Tl1OMGMg0PSJvD244G3zLBOMXziM6ne+cde40=
=JRJ2
-----END PGP SIGNATURE-----
