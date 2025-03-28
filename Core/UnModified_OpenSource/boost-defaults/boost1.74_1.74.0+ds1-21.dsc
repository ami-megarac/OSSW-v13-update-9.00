-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: boost1.74
Binary: libboost1.74-dev, libboost1.74-tools-dev, libboost1.74-all-dev, libboost1.74-doc, libboost-atomic1.74.0, libboost-atomic1.74-dev, libboost-chrono1.74.0, libboost-chrono1.74-dev, libboost-container1.74.0, libboost-container1.74-dev, libboost-context1.74.0, libboost-context1.74-dev, libboost-contract1.74.0, libboost-contract1.74-dev, libboost-coroutine1.74.0, libboost-coroutine1.74-dev, libboost-date-time1.74.0, libboost-date-time1.74-dev, libboost-exception1.74-dev, libboost-fiber1.74.0, libboost-fiber1.74-dev, libboost-filesystem1.74.0, libboost-filesystem1.74-dev, libboost-graph1.74.0, libboost-graph1.74-dev, libboost-graph-parallel1.74.0, libboost-graph-parallel1.74-dev, libboost-iostreams1.74.0, libboost-iostreams1.74-dev, libboost-locale1.74.0, libboost-locale1.74-dev, libboost-log1.74.0, libboost-log1.74-dev, libboost-math1.74.0, libboost-math1.74-dev, libboost-mpi1.74.0, libboost-mpi1.74-dev, libboost-mpi-python1.74.0, libboost-mpi-python1.74-dev,
 libboost-nowide1.74.0, libboost-nowide1.74-dev, libboost-numpy1.74.0, libboost-numpy1.74-dev, libboost-program-options1.74.0, libboost-program-options1.74-dev, libboost-python1.74.0, libboost-python1.74-dev, libboost-random1.74.0, libboost-random1.74-dev, libboost-regex1.74.0, libboost-regex1.74-dev, libboost-serialization1.74.0, libboost-serialization1.74-dev, libboost-stacktrace1.74.0, libboost-stacktrace1.74-dev, libboost-system1.74.0, libboost-system1.74-dev, libboost-test1.74.0, libboost-test1.74-dev, libboost-thread1.74.0, libboost-thread1.74-dev, libboost-timer1.74.0, libboost-timer1.74-dev, libboost-type-erasure1.74.0, libboost-type-erasure1.74-dev, libboost-wave1.74.0,
 libboost-wave1.74-dev
Architecture: any all
Version: 1.74.0+ds1-21
Maintainer: Debian Boost Team <team+boost@tracker.debian.org>
Uploaders:  Steve M. Robbins <smr@debian.org>, Giovanni Mascellani <gio@debian.org>, Anton Gladky <gladk@debian.org>
Homepage: https://www.boost.org/
Standards-Version: 4.5.1
Vcs-Browser: https://salsa.debian.org/debian/boost
Vcs-Git: https://salsa.debian.org/debian/boost.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, clang, cmake, html2text, libgraph-easy-perl, mpi-default-dev, python3-minimal
Build-Depends: debhelper-compat (= 12), dpkg-dev (>= 1.16.1~), dctrl-tools, chrpath, zlib1g-dev, libbz2-dev, liblzma-dev, libzstd-dev, libicu-dev (>= 63.1), mpi-default-dev, bison, flex, docbook-to-man, help2man, xsltproc, doxygen, docbook-xsl, docbook-xml, texlive-latex-base, ghostscript, dh-python, g++ (>= 4:5-0), python3, python3-all-dev (>= 3.1), python3-numpy
Build-Depends-Indep: graphviz
Build-Conflicts: libopenmpi-dev (= 1.3.2-2)
Package-List:
 libboost-atomic1.74-dev deb libdevel optional arch=any
 libboost-atomic1.74.0 deb libs optional arch=any
 libboost-chrono1.74-dev deb libdevel optional arch=any
 libboost-chrono1.74.0 deb libs optional arch=any
 libboost-container1.74-dev deb libdevel optional arch=any
 libboost-container1.74.0 deb libs optional arch=any
 libboost-context1.74-dev deb libdevel optional arch=i386,hurd-i386,kfreebsd-i386,amd64,kfreebsd-amd64,armel,armhf,arm64,mips,mipsel,mips64el,powerpc,ppc64el,riscv64,s390x
 libboost-context1.74.0 deb libs optional arch=i386,hurd-i386,kfreebsd-i386,amd64,kfreebsd-amd64,armel,armhf,arm64,mips,mipsel,mips64el,powerpc,ppc64el,riscv64,s390x
 libboost-contract1.74-dev deb libdevel optional arch=any
 libboost-contract1.74.0 deb libs optional arch=any
 libboost-coroutine1.74-dev deb libdevel optional arch=i386,hurd-i386,kfreebsd-i386,amd64,kfreebsd-amd64,armel,armhf,arm64,mips,mipsel,mips64el,powerpc,ppc64el,riscv64,s390x
 libboost-coroutine1.74.0 deb libs optional arch=i386,hurd-i386,kfreebsd-i386,amd64,kfreebsd-amd64,armel,armhf,arm64,mips,mipsel,mips64el,powerpc,ppc64el,riscv64,s390x
 libboost-date-time1.74-dev deb libdevel optional arch=any
 libboost-date-time1.74.0 deb libs optional arch=any
 libboost-exception1.74-dev deb libdevel optional arch=any
 libboost-fiber1.74-dev deb libdevel optional arch=i386,hurd-i386,kfreebsd-i386,amd64,kfreebsd-amd64,armel,armhf,arm64,mips,mipsel,mips64el,powerpc,ppc64el,riscv64,s390x
 libboost-fiber1.74.0 deb libs optional arch=i386,hurd-i386,kfreebsd-i386,amd64,kfreebsd-amd64,armel,armhf,arm64,mips,mipsel,mips64el,powerpc,ppc64el,riscv64,s390x
 libboost-filesystem1.74-dev deb libdevel optional arch=any
 libboost-filesystem1.74.0 deb libs optional arch=any
 libboost-graph-parallel1.74-dev deb libdevel optional arch=any
 libboost-graph-parallel1.74.0 deb libs optional arch=any
 libboost-graph1.74-dev deb libdevel optional arch=any
 libboost-graph1.74.0 deb libs optional arch=any
 libboost-iostreams1.74-dev deb libdevel optional arch=any
 libboost-iostreams1.74.0 deb libs optional arch=any
 libboost-locale1.74-dev deb libdevel optional arch=any
 libboost-locale1.74.0 deb libs optional arch=any
 libboost-log1.74-dev deb libdevel optional arch=any
 libboost-log1.74.0 deb libs optional arch=any
 libboost-math1.74-dev deb libdevel optional arch=any
 libboost-math1.74.0 deb libs optional arch=any
 libboost-mpi-python1.74-dev deb libdevel optional arch=any
 libboost-mpi-python1.74.0 deb libs optional arch=any
 libboost-mpi1.74-dev deb libdevel optional arch=any
 libboost-mpi1.74.0 deb libs optional arch=any
 libboost-nowide1.74-dev deb libdevel optional arch=any
 libboost-nowide1.74.0 deb libs optional arch=any
 libboost-numpy1.74-dev deb libdevel optional arch=any
 libboost-numpy1.74.0 deb libs optional arch=any
 libboost-program-options1.74-dev deb libdevel optional arch=any
 libboost-program-options1.74.0 deb libs optional arch=any
 libboost-python1.74-dev deb libdevel optional arch=any
 libboost-python1.74.0 deb libs optional arch=any
 libboost-random1.74-dev deb libdevel optional arch=any
 libboost-random1.74.0 deb libs optional arch=any
 libboost-regex1.74-dev deb libdevel optional arch=any
 libboost-regex1.74.0 deb libs optional arch=any
 libboost-serialization1.74-dev deb libdevel optional arch=any
 libboost-serialization1.74.0 deb libs optional arch=any
 libboost-stacktrace1.74-dev deb libdevel optional arch=any
 libboost-stacktrace1.74.0 deb libs optional arch=any
 libboost-system1.74-dev deb libdevel optional arch=any
 libboost-system1.74.0 deb libs optional arch=any
 libboost-test1.74-dev deb libdevel optional arch=any
 libboost-test1.74.0 deb libs optional arch=any
 libboost-thread1.74-dev deb libdevel optional arch=any
 libboost-thread1.74.0 deb libs optional arch=any
 libboost-timer1.74-dev deb libdevel optional arch=any
 libboost-timer1.74.0 deb libs optional arch=any
 libboost-type-erasure1.74-dev deb libdevel optional arch=any
 libboost-type-erasure1.74.0 deb libs optional arch=any
 libboost-wave1.74-dev deb libdevel optional arch=any
 libboost-wave1.74.0 deb libs optional arch=any
 libboost1.74-all-dev deb libdevel optional arch=any
 libboost1.74-dev deb libdevel optional arch=any
 libboost1.74-doc deb doc optional arch=all
 libboost1.74-tools-dev deb libdevel optional arch=any
Checksums-Sha1:
 9bded155ed927b5bc1cbe05fc1fd0176d9c7412a 60678948 boost1.74_1.74.0+ds1.orig.tar.xz
 7582fcd82ef6f66955c13233ec16dff6fa3d4522 373640 boost1.74_1.74.0+ds1-21.debian.tar.xz
Checksums-Sha256:
 192f5df504d282cb81288f88232d8af45b64a9ab531e1c7cf8ae955f16f6bb28 60678948 boost1.74_1.74.0+ds1.orig.tar.xz
 6549dab4824c781e0510272ac352f9e0367d4d47c16c94989e5ec7447fd8f0d8 373640 boost1.74_1.74.0+ds1-21.debian.tar.xz
Files:
 1394c19c58a017e195b3f54c7f38b0a5 60678948 boost1.74_1.74.0+ds1.orig.tar.xz
 b1a83749d0e1d5a3003196e10c965449 373640 boost1.74_1.74.0+ds1-21.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEu71F6oGKuG/2fnKF0+Fzg8+n/wYFAmRnJ4kACgkQ0+Fzg8+n
/waRrw//YF6AfB0+ye6vu/Gi56BrQNlargAE+3JzN5ko5PGr2gJKq5PmEi0sVFU2
Cq/ptiq++W7xxpU3koKot8wpp8cOwGnUXrU6/1PMbNIpR7HhyddWMTU6ALsAcWY3
yw/3r1pcUhWORBQZzm2/ThAXm/Z+4bs4KYuLjUlbIQhUcTI5aGVZ3VNTIe5Qe/rB
yw2iSrrRHLabAruX6IbXZIfK9FmqykmwGyqSAqnGTrftN8L6KN9bCAS0tsYJOAWG
u/FRCjCxLzgwqp5Agwof/vf3oybTPehW3zXAZYRbRuTAh38Ss/1+iKz/ZO5wqxgU
UrzCiQ+Bgf61x4+2XanGuWZEeT2jVBR0oD9zvr32yip8T3+37u+vpyx1V1PJadvG
Cyd5rdc0n0o9qneKMwKXiGYthMsqTwumwV3jo3LgtTAiLYfsKrSsT0jq44qA8P6D
OE9UjESOUvwZSvdBHkMS+zw+pCzk+MxFmLLVcvLzB/1EVV0e2Fe1PNOqUjKqUEmS
+FiGpTn4IFUC2Zor6DDHLU0a1ORVI5hUG4EtkGtgGUlfhMnmDPDy962I4ODyBcAw
cTYVJQft3A79SxV2k54/qy9/MQOlkA0U6emeqcqJd+pqNkxJvUrJminO2LcYW7lt
yUyYO4VBGuTJM8bYCqowl4oYK2YKVxPOt6ZEHGChvUwWKQi0Bhs=
=CWl3
-----END PGP SIGNATURE-----
