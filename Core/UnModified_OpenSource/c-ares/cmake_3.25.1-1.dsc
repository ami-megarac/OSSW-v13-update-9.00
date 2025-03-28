-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: cmake
Binary: cmake, cmake-data, cmake-curses-gui, cmake-qt-gui, cmake-doc
Architecture: any all
Version: 3.25.1-1
Maintainer: Debian CMake Team <pkg-cmake-team@lists.alioth.debian.org>
Uploaders:  Lisandro Damián Nicanor Pérez Meyer <lisandro@debian.org>, Felix Geyer <fgeyer@debian.org>, Timo Röhling <roehling@debian.org>,
Homepage: https://cmake.org/
Description: cross-platform, open-source make system
 CMake is used to control the software compilation process using
 simple platform and compiler independent configuration files. CMake
 generates native makefiles and workspaces that can be used in the
 compiler environment of your choice. CMake is quite sophisticated: it
 is possible to support complex environments requiring system
 configuration, pre-processor generation, code generation, and template
 instantiation.
Standards-Version: 4.6.1
Vcs-Browser: https://salsa.debian.org/cmake-team/cmake
Vcs-Git: https://salsa.debian.org/cmake-team/cmake.git
Testsuite: autopkgtest
Testsuite-Triggers: @builddeps@, bison, cvs, default-jdk, doxygen, flex, gettext, git, hspell, icoutils, imagemagick, libarchive-dev, libarmadillo-dev, libasound2-dev, libboost-dev, libbz2-dev, libcups2-dev, libcurl4-openssl-dev, libexpat1-dev, libfreetype6-dev, libgif-dev, libgnutls28-dev, libgtk2.0-dev, liblzma-dev, libmagick++-dev, libmagickcore-dev, libmagickwand-dev, libopenscenegraph-dev, libphysfs-dev, libprotobuf-dev, libtiff5-dev, libxml2-dev, libxslt1-dev, mercurial, ninja-build, perl, pkg-config, protobuf-compiler, python3-dev, ruby-dev, subversion, swig, zlib1g-dev
Build-Depends: debhelper-compat (= 13), cmake <cross>, freebsd-glue [kfreebsd-any], libarchive-dev (>= 3.3.3) <!pkg.cmake.bootstrap>, libcurl4-openssl-dev <!pkg.cmake.bootstrap> | libcurl-ssl-dev <!pkg.cmake.bootstrap>, libexpat1-dev <!pkg.cmake.bootstrap>, libjsoncpp-dev <!pkg.cmake.bootstrap>, libncurses5-dev <!pkg.cmake.bootstrap !pkg.cmake.nogui>, librhash-dev <!pkg.cmake.bootstrap>, libssl-dev <pkg.cmake.bootstrap>, libuv1-dev (>= 1.10) <!pkg.cmake.bootstrap>, procps [!hurd-any], python3-sphinx:native, python3-sphinxcontrib.qthelp:native, qtbase5-dev <!pkg.cmake.bootstrap !pkg.cmake.nogui>, zlib1g-dev <!pkg.cmake.bootstrap>
Build-Depends-Indep: dh-sequence-sphinxdoc
Package-List:
 cmake deb devel optional arch=any
 cmake-curses-gui deb devel optional arch=any profile=!pkg.cmake.bootstrap,!pkg.cmake.nogui
 cmake-data deb devel optional arch=all
 cmake-doc deb doc optional arch=all profile=!pkg.cmake.bootstrap
 cmake-qt-gui deb devel optional arch=any profile=!pkg.cmake.bootstrap,!pkg.cmake.nogui
Checksums-Sha1:
 6cc13d2b3d2c8fecfb2486e0e521d42ab45188d0 10561054 cmake_3.25.1.orig.tar.gz
 13e8c1ea9cb1034aeca488ab344ff6e2a2b70313 32496 cmake_3.25.1-1.debian.tar.xz
Checksums-Sha256:
 1c511d09516af493694ed9baf13c55947a36389674d657a2d5e0ccedc6b291d8 10561054 cmake_3.25.1.orig.tar.gz
 0b9ef6b8e74dc4dfd757f43ac3ae0b2abde0745d58d0a43f81bcbd78c1a68035 32496 cmake_3.25.1-1.debian.tar.xz
Files:
 521a03b1c36412463eda0348bebf4765 10561054 cmake_3.25.1.orig.tar.gz
 a2ff7132310bcda9aa9d89753486175b 32496 cmake_3.25.1-1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQHIBAEBCgAyFiEEJvtDgpxjkjCIVtam+C8H+466LVkFAmOHv3UUHHJvZWhsaW5n
QGRlYmlhbi5vcmcACgkQ+C8H+466LVkgeQwAzHGFD7JHjGEGYvSydmN/B+MVFb1p
1VTB8xmEj9bDbEcfPliSBVgtwMfqvMM41U69TdamcOnqMtp20LDxEahOsVpIxErC
JPgmU2T9PVkXGTuNx/wTqzgvymZ6NlqkwbRofwz2riJ5qAjbSM2EV077QaNDscCy
TC6K4smVzx02ROHhQpK/EJKPmUittATNu++7ebDEyS3sz70bX9iO/OtTCDc+1MGM
NSg4BPKxCAYnhvP16BaaP0hZlr/PnFBrizGLgbib8FwCdQ07z9fSdH7S0DeLoiLy
SJfer9+efiSsdg6k0LmNCgXBBoLeaNyk0LflWoO95hstu9ax/T0qS+yYviZV8qVj
t+ye7K7m/kSO/i8IVR4eEkXnF+9uD/CFaAk7lpE5L88Vx2PTw7uOGMkbuEsrdNHn
6kKglSbnvOV+vp59veBnbh2oQ88jLz+K4dV1yuHxjrio+FnBfbuGo9OKiaelu+Xl
iuqA4DYpFIhaRNLieF+vT2Iu+Pw8FXhiJANY
=J93l
-----END PGP SIGNATURE-----
