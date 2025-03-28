-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: readline
Binary: libreadline8, libreadline8-udeb, lib64readline8, readline-common, readline-common-udeb, libreadline-dev, lib64readline-dev, rlfe, lib32readline8, lib32readline-dev, readline-doc
Architecture: any all
Version: 8.2-1.3
Maintainer: Matthias Klose <doko@debian.org>
Standards-Version: 4.6.1
Build-Depends: debhelper (>= 11), libncurses-dev, lib32ncurses-dev [amd64 ppc64] <!nobiarch>, lib64ncurses-dev [i386 powerpc sparc s390] <!nobiarch>, mawk | awk, texinfo, gcc-multilib [amd64 i386 kfreebsd-amd64 powerpc ppc64 s390 sparc] <!nobiarch>
Package-List:
 lib32readline-dev deb libdevel optional arch=amd64,ppc64 profile=!nobiarch
 lib32readline8 deb libs optional arch=amd64,ppc64 profile=!nobiarch
 lib64readline-dev deb libdevel optional arch=i386,powerpc,s390,sparc profile=!nobiarch
 lib64readline8 deb libs optional arch=i386,powerpc,s390,sparc profile=!nobiarch
 libreadline-dev deb libdevel optional arch=any
 libreadline8 deb libs optional arch=any
 libreadline8-udeb udeb debian-installer optional arch=any profile=!noudeb
 readline-common deb utils optional arch=all
 readline-common-udeb udeb debian-installer optional arch=all profile=!noudeb
 readline-doc deb doc optional arch=all
 rlfe deb utils optional arch=any profile=!cross
Checksums-Sha1:
 97ad98be243a857b639c0f3da2fe7d81c6d1d36e 3043952 readline_8.2.orig.tar.gz
 8fef2c52ad945f1561798fc60249db324066f503 30016 readline_8.2-1.3.debian.tar.xz
Checksums-Sha256:
 3feb7171f16a84ee82ca18a36d7b9be109a52c04f492a053331d7d1095007c35 3043952 readline_8.2.orig.tar.gz
 8cd3c02d6c07b4cf57da607de168a9e347ee05c31857f0f6236fe3df4fc207d9 30016 readline_8.2-1.3.debian.tar.xz
Files:
 4aa1b31be779e6b84f9a96cb66bc50f6 3043952 readline_8.2.orig.tar.gz
 2a9c71d507fc600a5a11e5a321335646 30016 readline_8.2-1.3.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQHEBAEBCgAuFiEEQGIgyLhVKAI3jM5BH1x6i0VWQxQFAmO0lXcQHGJhZ2VAZGVi
aWFuLm9yZwAKCRAfXHqLRVZDFF4VC/9ke2jw3dI1VI5/Prt5OOZkU4Sq+Ynak150
Nb5aqhdrHWcop4Rb111bLRa1r3R1KI41rH6eo08pnvWBfXPE7dGKW9HRXs0S7Uz8
3VkjiRFXX9RLdzaUF7nTS5Q0qQ1oh8V7kEf4ofd0WWkGiAwvRUifDmkytCXCzTTy
WNgB8bcyRO+g19yQ/QdWLBBb7njN6ZFEMveZDFN/dfJ9bmHoYVV/Xeb5jsOLB6XJ
zsGouvu99E0KlNW6bLpAOpNYwt2nWaV4XPujfsWJhldg79voR59IKbneTsqp+SQ5
5NUF0UvMBUdK+oAHJs0ed3Y4a1jW+13tXeKRR1K0OiPfIaPlii1aMXQSSMy6AQMd
OQPg6ZwVgX931FmqQqG7oaW+Ny6/AQM1N7C8ZfzXkNpA+JlhwXLKrcqyBbbsbiwz
2BG5oR2ml+HlqC40vq+UoTMi2HhASJoSxVlbhtRgrTMTTYeprMWSKZMm20wSgY/e
Bxr85qnjnjU8EGofxLVq/nZU39fMtjo=
=mXGO
-----END PGP SIGNATURE-----
