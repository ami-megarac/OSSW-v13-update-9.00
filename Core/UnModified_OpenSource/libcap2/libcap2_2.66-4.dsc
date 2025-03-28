-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: libcap2
Binary: libcap2-bin, libcap2, libcap-dev, libpam-cap, libcap2-udeb
Architecture: linux-any
Version: 1:2.66-4
Maintainer: Christian Kastner <ckk@debian.org>
Homepage: https://sites.google.com/site/fullycapable/
Standards-Version: 4.6.1
Vcs-Browser: https://salsa.debian.org/debian/libcap2
Vcs-Git: https://salsa.debian.org/debian/libcap2.git
Testsuite: autopkgtest
Testsuite-Triggers: gcc, libc-dev
Build-Depends: chrpath, debhelper-compat (= 13), gperf (>= 3.1), indent, libpam0g-dev
Package-List:
 libcap-dev deb libdevel optional arch=linux-any
 libcap2 deb libs optional arch=linux-any
 libcap2-bin deb utils important arch=linux-any
 libcap2-udeb udeb debian-installer optional arch=linux-any profile=!noudeb
 libpam-cap deb admin optional arch=linux-any
Checksums-Sha1:
 d440e60686bd542e2a6481986c63ee8de625563e 181592 libcap2_2.66.orig.tar.xz
 70f32bb975da697995f6b2d5543feb770572c2eb 21468 libcap2_2.66-4.debian.tar.xz
Checksums-Sha256:
 15c40ededb3003d70a283fe587a36b7d19c8b3b554e33f86129c059a4bb466b2 181592 libcap2_2.66.orig.tar.xz
 5379eec3a05e40c2485ebe451506883c1f2f99d552c6ded29607080fd278dd7c 21468 libcap2_2.66-4.debian.tar.xz
Files:
 00afd6e13bc94b2543b1a70770bdb41f 181592 libcap2_2.66.orig.tar.xz
 87d4b91e92b732e64902e7f69de4d001 21468 libcap2_2.66-4.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEQZ9+mkfDq5UZ8bCjOZU6N95Os2sFAmRimuIACgkQOZU6N95O
s2s04A//WqZ3k11joJHa0fKchmdTWsYo2YsE8T/+IdqiW7AUUB8Gh6PB7z8lveQT
be7vBRXy67PI6HlxSAN51C3zK0NfH9t2hmj1tNYEEmvh4tGj1+eLhC8aj+THuFn3
i8RLPLCWDwtdKJ9yvaFXKAuzklkH5gRWjHw1D6IJ+Fp19iQyUd+5P08KQ8/2WtmP
oVJysTL36cDU6J+bmXMnAwxYAzTYp2jc6ZF/QJqFyYdDcOYHHZbMDOKPy0bOyJkg
r/u2IH/ZHUynhbP6acZ5e/97YWkSQfBXlMGu0xKNEw2o9Uql3KFd7d/FXgfh+5FF
hubRHS7mYBbCf7PHa3FMjfFbMP7Z3No8pCdfG5cbBb7/tWM10vBD/bf+EIff+nx5
QEN1MlSslhb02Fq5fMXEIaBGkrFySSC7FgW5KvFLcKu8sO10KcVmfeKnS9ndFmfP
zelXTM7RiWiS4ajrSdAi/bOltypx+tWZZr+I4hEI8k0lnF/tjiiGfTlQZJYEHUrN
+V8n3keDoo8B2dqKumZwFKVhjNA0dFg1mV4lcTUg8D9aL8Z6Qsug+/2yALO9tvVT
Rqw8nFUWiVDtqmCxaw2WD+OjT1FstmyR8BpXxPwI2EM0f+SCHHE9aTZ6LUVor4KJ
J5hbVqbjh6FP1ueIy1YHmXfR2NAxr/43cOXfUqcRi00A1GLrzkw=
=pLGF
-----END PGP SIGNATURE-----
