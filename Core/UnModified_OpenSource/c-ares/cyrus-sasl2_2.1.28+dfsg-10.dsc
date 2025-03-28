-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: cyrus-sasl2
Binary: sasl2-bin, cyrus-sasl2-doc, libsasl2-2, libsasl2-modules, libsasl2-modules-db, libsasl2-modules-ldap, libsasl2-modules-otp, libsasl2-modules-sql, libsasl2-modules-gssapi-mit, libsasl2-dev, libsasl2-modules-gssapi-heimdal
Architecture: any all
Version: 2.1.28+dfsg-10
Maintainer: Debian Cyrus Team <team+cyrus@tracker.debian.org>
Uploaders: Fabian Fagerholm <fabbe@debian.org>, Ondřej Surý <ondrej@debian.org>, Bastian Germann <bage@debian.org>, Adam Conrad <adconrad@0c3.net>
Homepage: https://www.cyrusimap.org/sasl/
Standards-Version: 4.3.0.1
Vcs-Browser: https://salsa.debian.org/debian/cyrus-sasl2
Vcs-Git: https://salsa.debian.org/debian/cyrus-sasl2.git
Testsuite: autopkgtest
Testsuite-Triggers: krb5-admin-server, krb5-kdc, krb5-user, ldap-utils, slapd
Build-Depends: chrpath, debhelper-compat (= 12), default-libmysqlclient-dev <!pkg.cyrus-sasl2.nosql>, docbook-to-man, groff-base, heimdal-multidev <!pkg.cyrus-sasl2.nogssapi>, krb5-multidev <!pkg.cyrus-sasl2.nogssapi>, libdb-dev, libcrypt-dev, libkrb5-dev <!pkg.cyrus-sasl2.nogssapi>, libldap2-dev <!pkg.cyrus-sasl2.noldap>, libpam0g-dev, libpod-pom-view-restructured-perl:native, libpq-dev <!pkg.cyrus-sasl2.nosql>, libsqlite3-dev, libssl-dev, po-debconf, python3-sphinx-rtd-theme:native
Build-Conflicts: heimdal-dev
Package-List:
 cyrus-sasl2-doc deb doc optional arch=all
 libsasl2-2 deb libs optional arch=any
 libsasl2-dev deb libdevel optional arch=any
 libsasl2-modules deb libs optional arch=any
 libsasl2-modules-db deb libs optional arch=any
 libsasl2-modules-gssapi-heimdal deb libs optional arch=any profile=!pkg.cyrus-sasl2.nogssapi
 libsasl2-modules-gssapi-mit deb libs optional arch=any profile=!pkg.cyrus-sasl2.nogssapi
 libsasl2-modules-ldap deb libs optional arch=any profile=!pkg.cyrus-sasl2.noldap
 libsasl2-modules-otp deb libs optional arch=any
 libsasl2-modules-sql deb libs optional arch=any profile=!pkg.cyrus-sasl2.nosql
 sasl2-bin deb utils optional arch=any
Checksums-Sha1:
 8b00d7de5bcbcab525463f12e23c4b813ebed244 797472 cyrus-sasl2_2.1.28+dfsg.orig.tar.xz
 9c09c90c17a7df21acaf1e9398f31b67e022666c 97056 cyrus-sasl2_2.1.28+dfsg-10.debian.tar.xz
Checksums-Sha256:
 a15886d7da5958bd27f35b7c871dd872f6dc5b9917c9b6b15e3de014c7dab3d9 797472 cyrus-sasl2_2.1.28+dfsg.orig.tar.xz
 8c94a1c1982a1603d13ef055b0d2511054db4a43cbb1224702f31e5d985136b1 97056 cyrus-sasl2_2.1.28+dfsg-10.debian.tar.xz
Files:
 7d9a1f3f8dbc2731eed6e8e177a927be 797472 cyrus-sasl2_2.1.28+dfsg.orig.tar.xz
 fb2414989371b492294d6f80dd9c2965 97056 cyrus-sasl2_2.1.28+dfsg-10.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQHEBAEBCgAuFiEEQGIgyLhVKAI3jM5BH1x6i0VWQxQFAmN9PkoQHGJhZ2VAZGVi
aWFuLm9yZwAKCRAfXHqLRVZDFDCXDADatKF2PVRS1CjHYdmoT89tREAdlRTmkces
QUizdKQaUYTIKwc1BGOkVcB8rAErUze9vAHemx9p/qTlztLGtmyrO9/ZIjkkHOvG
Hug7kyBwGC6EyblT+BeCJlh6mW58uYIfvAhHA/g8TOvDAUEsIR7OHBRxVp2sVJeP
5f3cxDjR6q/1/nyXxvnSfYNlmyyoQ+tuaHkuEaX1YATBO11gHtkJGl2Av4Mv3U1B
4bUJxvxtxJcF+wcMtgdcgDsAu/0a+aCDrMEokC4n5S4lUuY4P2RY8pWdsw42UAbq
fRTOavwD4MrblZkZmVA+8rCHzfHeMz7p5zlXySa8Yaa9SWI550uL3yR3qLRbDgzb
WEGm8MFq8Hb6luDTsVToJrMZbt4hs9MrWCMh8Q1mLU1EZHsxguNx+tGznfWReIMC
10f0gTQmgQo5IiyOAR/pQBpWgGQ19eoU29RaeDL276fgpjn8TR7dPPUMO/y/ujoB
QUiMM3sEXzQ2+rqlaqQqXJWtKQ8mVlo=
=yz5x
-----END PGP SIGNATURE-----
