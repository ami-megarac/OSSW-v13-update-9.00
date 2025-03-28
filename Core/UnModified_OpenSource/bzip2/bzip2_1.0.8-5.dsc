-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: bzip2
Binary: libbz2-1.0, libbz2-dev, bzip2, bzip2-doc
Architecture: any all
Version: 1.0.8-5
Maintainer: Anibal Monsalve Salazar <anibal@debian.org>
Uploaders: Santiago Ruano Rincón <santiago@debian.org>, Anthony Fok <foka@debian.org>
Homepage: https://sourceware.org/bzip2/
Standards-Version: 4.6.0
Vcs-Browser: https://salsa.debian.org/debian/bzip2
Vcs-Git: https://salsa.debian.org/debian/bzip2.git
Testsuite: autopkgtest
Testsuite-Triggers: @builddeps@, build-essential
Build-Depends: debhelper-compat (= 13)
Build-Depends-Indep: texinfo, docbook-xml, docbook2x, xsltproc
Package-List:
 bzip2 deb utils standard arch=any
 bzip2-doc deb doc optional arch=all
 libbz2-1.0 deb libs important arch=any
 libbz2-dev deb libdevel optional arch=any
Checksums-Sha1:
 bf7badf7e248e0ecf465d33c2f5aeec774209227 810029 bzip2_1.0.8.orig.tar.gz
 a5cb36a3535f07f70a9143542ba918e8c032763e 26787 bzip2_1.0.8-5.debian.tar.bz2
Checksums-Sha256:
 ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269 810029 bzip2_1.0.8.orig.tar.gz
 d68c6eba11d70e14319e24ef1451880a03023b2b75364646adb117086db36039 26787 bzip2_1.0.8-5.debian.tar.bz2
Files:
 67e051268d0c475ea773822f7500d0e5 810029 bzip2_1.0.8.orig.tar.gz
 343ef1f61095c9c352d555642bd91196 26787 bzip2_1.0.8-5.debian.tar.bz2

-----BEGIN PGP SIGNATURE-----

iQJEBAEBCAAuFiEEFCQhsZrUqVmW+VBy6iUAtBLFms8FAmGp1u0QHGZva2FAZGVi
aWFuLm9yZwAKCRDqJQC0EsWaz2asD/4tmep3dTiPaXr/kfpkT4k9/Ay/iWQmW/tH
+DEZfPbZKfoFsakDIivdVpzxMWXBtj89/Tq/a6d/kV/XRojAwslXrU+7Dn730BFr
XBNX56SXlySFTmcffJHQgkzP79vwMDGwKXgXHKvU7wfzl/RzQUVP2vlqkpxAhHKi
tdw37x27cf6Ed2SO0g8I0hkilmuxs1DxClL98tDOTmKbxiDFGCEJmz3kTWf2hItn
g5A4Kl/gQrkSJjUvYo2LCnMYtSIuI1b4iExBvyrMCGjnej4NTi6sDCZcgfpVfucZ
seC5hhttTqBNiFdNwMKQT+RhM7978N5xlGv3W40IcKbnC7bcMikaja2rjWsgZELt
tciDWATotj1KGFlvwoaI6ls41eLWTTj824tA5gefrYIQ7G099JozTiRvSieG/4bX
nBzUBjkHAGZaD6v7o9lMAFnCW+xRHivMo8ODA0EJcSUmGoRr5KLoF/42h3m0DLNR
2tlWBRLbrn4u44KsPS17MhjCqTOZsbwelCak6K4zBPJCKv7qHjppp56wZsPGFLSp
FUzumE4S2YlP8LLgKBngaARZjiNwx7paBnQhi+7u7+TD3JIc7Uq3/WVGBvJTlwhQ
JgiXqiGfIndjGkAMHrXkGrjkuAxJGWmyrW8j3MWrNg8SW0QjOkuBFO1Iu6y+tyG0
KqWl64qUTA==
=j/7j
-----END PGP SIGNATURE-----
