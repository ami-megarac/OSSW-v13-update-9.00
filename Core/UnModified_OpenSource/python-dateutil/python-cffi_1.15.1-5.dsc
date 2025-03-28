-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: python-cffi
Binary: python3-cffi, python3-cffi-backend, python-cffi-doc
Architecture: any all
Version: 1.15.1-5
Maintainer: Debian Python Team <team+python@tracker.debian.org>
Uploaders: Stefano Rivera <stefanor@debian.org>
Homepage: https://cffi.readthedocs.org/
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/python-team/packages/python-cffi
Vcs-Git: https://salsa.debian.org/python-team/packages/python-cffi.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, python3-all-dbg, python3-all-dev, python3-py, python3-pytest, python3-setuptools, virtualenv
Build-Depends: debhelper-compat (= 13), dh-python, dh-sequence-python3, dh-sequence-sphinxdoc <!nodoc>, libffi-dev, python3-all-dev, python3-py <!nocheck>, python3-pycparser <!nocheck>, python3-pytest <!nocheck>, python3-setuptools, python3-sphinx <!nodoc>, virtualenv <!nocheck>
Package-List:
 python-cffi-doc deb doc optional arch=all
 python3-cffi deb python optional arch=all
 python3-cffi-backend deb python optional arch=any
Checksums-Sha1:
 c42a46cd11f6153f299cf10e9c236e8b2a143c21 508501 python-cffi_1.15.1.orig.tar.gz
 c4fc8d85043a82a4fb4da116520e8809379c351f 9776 python-cffi_1.15.1-5.debian.tar.xz
Checksums-Sha256:
 d400bfb9a37b1351253cb402671cea7e89bdecc294e8016a707f6d1d8ac934f9 508501 python-cffi_1.15.1.orig.tar.gz
 4c15e1d6d7956821e8533f07768478393c1604da99565fd323d226d67a6c8571 9776 python-cffi_1.15.1-5.debian.tar.xz
Files:
 f493860a6e98cd0c4178149568a6b4f6 508501 python-cffi_1.15.1.orig.tar.gz
 a477c4ac28f0321295461d648e4cadfb 9776 python-cffi_1.15.1-5.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iIoEARYKADIWIQTumtb5BSD6EfafSCRHew2wJjpU2AUCY6D4wBQcc3RlZmFub3JA
ZGViaWFuLm9yZwAKCRBHew2wJjpU2FjIAQDKZ7L47Q0YqNx0LHqwds19YnYvmjfn
mi0isOQe20VJKAD8DR/nP5Z2ukW2PqYOx8txkkJ5zf0Rw6c19bVVR84hKwc=
=SrjC
-----END PGP SIGNATURE-----
