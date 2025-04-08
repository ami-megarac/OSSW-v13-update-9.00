-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: cmake
Binary: cmake, cmake-curses-gui, cmake-data, cmake-doc, cmake-qt-gui
Architecture: any all
Version: 3.31.6-1~bpo12+1
Maintainer: Debian CMake Team <pkg-cmake-team@lists.alioth.debian.org>
Uploaders: Lisandro Damián Nicanor Pérez Meyer <lisandro@debian.org>, Felix Geyer <fgeyer@debian.org>, Timo Röhling <roehling@debian.org>,
Homepage: https://cmake.org/
Description: cross-platform, open-source make system
 CMake is used to control the software compilation process using
 simple platform and compiler independent configuration files. CMake
 generates native makefiles and workspaces that can be used in the
 compiler environment of your choice. CMake is quite sophisticated: it
 is possible to support complex environments requiring system
 configuration, pre-processor generation, code generation, and template
 instantiation.
Standards-Version: 4.7.1
Vcs-Browser: https://salsa.debian.org/cmake-team/cmake
Vcs-Git: https://salsa.debian.org/cmake-team/cmake.git
Testsuite: autopkgtest
Testsuite-Triggers: @builddeps@, bison, cvs, default-jdk, doxygen, flex, gettext, git, hspell, icoutils, imagemagick, libarchive-dev, libarmadillo-dev, libasound2-dev, libboost-dev, libbz2-dev, libcups2-dev, libcurl4-openssl-dev, libexpat1-dev, libfreetype6-dev, libgif-dev, libgnutls28-dev, libgtk2.0-dev, liblzma-dev, libmagick++-dev, libmagickcore-dev, libmagickwand-dev, libopenscenegraph-dev, libphysfs-dev, libprotobuf-dev, libtiff5-dev, libxml2-dev, libxslt1-dev, mercurial, ninja-build, perl, pkg-config, protobuf-compiler, python3-dev, ruby-dev, subversion, swig, zlib1g-dev
Build-Depends: debhelper-compat (= 13), cmake <cross>, git <!nocheck>, libarchive-dev (>= 3.3.3) <!pkg.cmake.bootstrap>, libcppdap-dev <!pkg.cmake.bootstrap>, libcurl4-openssl-dev <!pkg.cmake.bootstrap>, libexpat1-dev <!pkg.cmake.bootstrap>, libjsoncpp-dev <!pkg.cmake.bootstrap>, libncurses-dev <!pkg.cmake.bootstrap !pkg.cmake.nogui>, librhash-dev <!pkg.cmake.bootstrap>, libssl-dev <pkg.cmake.bootstrap>, libuv1-dev (>= 1.10) <!pkg.cmake.bootstrap>, procps [!hurd-any], python3-sphinx:native, python3-sphinxcontrib.qthelp:native, qt6-base-dev <!pkg.cmake.bootstrap !pkg.cmake.nogui>, zlib1g-dev <!pkg.cmake.bootstrap>
Build-Depends-Indep: dh-sequence-sphinxdoc
Package-List:
 cmake deb devel optional arch=any
 cmake-curses-gui deb devel optional arch=any profile=!pkg.cmake.bootstrap,!pkg.cmake.nogui
 cmake-data deb devel optional arch=all
 cmake-doc deb doc optional arch=all profile=!pkg.cmake.bootstrap
 cmake-qt-gui deb devel optional arch=any profile=!pkg.cmake.bootstrap,!pkg.cmake.nogui
Checksums-Sha1:
 bc5d7e6c095c25c2de382d0290655cba0af40a9f 11710589 cmake_3.31.6.orig.tar.gz
 6723e865177baa812e15597ac494a8e91fc7df17 34392 cmake_3.31.6-1~bpo12+1.debian.tar.xz
Checksums-Sha256:
 653427f0f5014750aafff22727fb2aa60c6c732ca91808cfb78ce22ddd9e55f0 11710589 cmake_3.31.6.orig.tar.gz
 b92e8e6c732df992b024148656270135df0b0dfbf7754bf1a77972aff14383d7 34392 cmake_3.31.6-1~bpo12+1.debian.tar.xz
Files:
 a9f42404b21654a29553a61078accd20 11710589 cmake_3.31.6.orig.tar.gz
 cec5c8f19ecdbe243ef2b338f70b432f 34392 cmake_3.31.6-1~bpo12+1.debian.tar.xz
Dgit: 77080ef2415c174154252ed782566a3d1a50b6fe debian archive/debian/3.31.6-1_bpo12+1 https://git.dgit.debian.org/cmake


-----BEGIN PGP SIGNATURE-----

iQJIBAEBCgAyFiEEmwPruYMA35fCsSO/zIxr3RQD9MoFAmfJ0Q8UHHJvZWhsaW5n
QGRlYmlhbi5vcmcACgkQzIxr3RQD9MowiA/+O8R9mzmOuhko3mvni73x+t82Kthr
H2LOvA6L2boTXMZfTTgQJYxkWiI8MC87iJRgDvi24E3HYj1aY0KcZYHYUMDkt5s7
A91U78b9RKfcpWhS33/EFo2r0CzvEzvEh9EIGQNYWRJHlYFrzrQm1mMumn1qyT17
0a0SR2+z9NqxIpHVly6nlTqnYDfoK2pBvgkkJD7lm57QgHagLpnpixBQjZp8zYpG
JniFZAaNW2z3sCupK1QbpaLhQpqmc6GgggwBqWnIvEkJ1B3DvBklmWffjvioS2Pk
xzXxhRJ/lIEGo0nrLLlH/lOWSmD+e1qiB/ZtPggMoo0SY+JrJykO64mg9hY3kikF
cbQO0KGDTeSA/bG8ce4lNsvdaFg6E4CExvf/ZIZg2ssu9ZaG+O8wndFWdikXNhiJ
IsxqPJ+z1pybxnkY2abZeZH0/+S4lDVkfE98hqDhIiNrnCC0C8MEr76O3FNE7NJA
uiMiONDI3EOv411PUJx1crC7wNImcVt2QWPgBRmRM6LQrLtN7H3wFgCw2Z6dz/Ah
ov7hVUGCTWqs5GGPo1rRisZokxF1n0BZZBKmHYx1k97ZWI+RRxOvXRBJV99LTFSY
8vwo37/MNau6F7x0seZ7iFmvZvmJe6QiiMfG+Qz9O5B4N8fZC1g6QY1E2HcjgMXE
fWthAkFbDEUSDYI=
=BOV4
-----END PGP SIGNATURE-----
