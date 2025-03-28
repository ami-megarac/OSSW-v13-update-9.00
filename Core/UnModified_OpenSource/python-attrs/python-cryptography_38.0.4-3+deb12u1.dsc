-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: python-cryptography
Binary: python3-cryptography, python-cryptography-doc
Architecture: any all
Version: 38.0.4-3+deb12u1
Maintainer: Tristan Seligmann <mithrandi@debian.org>
Uploaders: Debian Python Team <team+python@tracker.debian.org>, Sandro Tosi <morph@debian.org>,
Homepage: https://cryptography.io/
Standards-Version: 4.6.1
Vcs-Browser: https://salsa.debian.org/python-team/packages/python-cryptography
Vcs-Git: https://salsa.debian.org/python-team/packages/python-cryptography.git
Testsuite: autopkgtest
Testsuite-Triggers: python3-all, python3-cffi, python3-cryptography-vectors, python3-hypothesis, python3-iso8601, python3-pretend, python3-pyasn1-modules, python3-pytest, python3-pytest-benchmark, python3-pytest-subtests, python3-tz
Build-Depends: cargo, debhelper-compat (= 13), dh-sequence-python3, dh-sequence-sphinxdoc <!nodoc>, dpkg-dev (>= 1.17.14), librust-asn1-0.12-dev, librust-asn1-derive-0.12-dev, librust-chrono-0.4-dev, librust-indoc-dev, librust-ouroboros-0.15-dev, librust-paste-dev, librust-pem-1.0-dev, librust-pyo3-0.17-dev, librust-pyo3-macros-0.17-dev, libssl-dev, pybuild-plugin-pyproject, python3-all-dev, python3-cffi, python3-cryptography-vectors (<< 38.0.5~) <!nocheck>, python3-cryptography-vectors (>= 38.0.4~) <!nocheck>, python3-doc <!nodoc>, python3-hypothesis <!nocheck>, python3-iso8601 <!nocheck>, python3-pretend <!nocheck>, python3-pytest <!nocheck>, python3-pytest-benchmark <!nocheck>, python3-pytest-subtests <!nocheck>, python3-setuptools, python3-setuptools-rust, python3-six, python3-sphinx <!nodoc>, python3-sphinx-rtd-theme <!nodoc>, python3-tz <!nocheck>
Package-List:
 python-cryptography-doc deb doc optional arch=all profile=!nodoc
 python3-cryptography deb python optional arch=any
Checksums-Sha1:
 b78bfafc114088c11298d69367b9f98a3bbb41db 599786 python-cryptography_38.0.4.orig.tar.gz
 aecb408cfb72c3224ed7c0da7c82acda5c0df43e 488 python-cryptography_38.0.4.orig.tar.gz.asc
 ddf884f814adc63f729926c60f1d6def7941810c 23644 python-cryptography_38.0.4-3+deb12u1.debian.tar.xz
Checksums-Sha256:
 175c1a818b87c9ac80bb7377f5520b7f31b3ef2a0004e2420319beadedb67290 599786 python-cryptography_38.0.4.orig.tar.gz
 09ddc5bab3140faba2fe03980b6d167d2ff1980ed55d0fa8399caa7a42d765ff 488 python-cryptography_38.0.4.orig.tar.gz.asc
 e5a11f3dd11175f14250ff5a46ee244e8f879c307d04dc82d902873097e6454e 23644 python-cryptography_38.0.4-3+deb12u1.debian.tar.xz
Files:
 2b8b23b955b43994f222f78faf17713b 599786 python-cryptography_38.0.4.orig.tar.gz
 7b235f46357e0f9192f0a13028978ba5 488 python-cryptography_38.0.4.orig.tar.gz.asc
 b87628ef4e94c822995d96254430437f 23644 python-cryptography_38.0.4-3+deb12u1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOvp1f6xuoR0v9F3wiNJCh6LYmLEFAmcTueMACgkQiNJCh6LY
mLEOmg/8DlKpY7c4T1B5UXsA1EIE/1NhDPBzma3Y2EMDwv1WV8lOM8NlEYZyxF2Z
np+1ppl8NroY/O4taz8WDXUWPYUjiWTgcU7co/yy7YwHJDJPdud3UbpApiJTDDwp
ugjQo1ddoguebh3GNYcmd8F4JrwWUY/zYTFI8W3CV8uCzrs3zvhVVwivxVxX2jZj
wFhikBabix7k3zIQQo/DebvoL96HeyMBobzf7OcRe9nPeibDexs7J6fN8UOWqDEk
7AZPyD+Q8RMfbpXBzVnvLEu+nJQHyd3LWpDOQJDbZRWBjxOk5ev/jTrplGSgESIt
Qs88aq2U4BBuC/WlLFBjxpXFonCB/5GIAbI2rFbn8obTvPYBQpSKUBKbLb0XcHBp
goz6bYGXxo1vx7aSUAA05WKyY70EQe0Igiyatsr9Lrfet4pKpkepcXXPG0g9VsPk
bw74vhBYKoWUb3PlQ6DXFUSMzWr7SgjmXEA3Oc1YWyFipe5km4saXreSq0h9pV78
kOEzenvPgvtqN+GcVkxEClbJWnC9Vf/cVpTin3Td2iUuMyHNdAqf6NdHks7an2GO
6484EDvmxqbafpDkiKGmxrY1dJInIy13o8L2UlSs8kFFSBL/qNlUNhyuN6y4Sfix
goyaz47/ZGcvKQU5sCeDxGJxJuWYxGqLeyncbwDjT3X95RQGNCA=
=3c22
-----END PGP SIGNATURE-----
