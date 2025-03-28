-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: cryptsetup
Binary: cryptsetup, cryptsetup-bin, cryptsetup-ssh, cryptsetup-initramfs, cryptsetup-suspend, cryptsetup-run, libcryptsetup12, libcryptsetup-dev, cryptsetup-udeb, libcryptsetup12-udeb
Architecture: linux-any all
Version: 2:2.6.1-4~deb12u2
Maintainer: Debian Cryptsetup Team <pkg-cryptsetup-devel@alioth-lists.debian.net>
Uploaders: Jonas Meurer <jonas@freesources.org>, Guilhem Moulin <guilhem@debian.org>
Homepage: https://gitlab.com/cryptsetup/cryptsetup
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/cryptsetup-team/cryptsetup
Vcs-Git: https://salsa.debian.org/cryptsetup-team/cryptsetup.git -b debian/latest
Testsuite: autopkgtest
Testsuite-Triggers: bsdextrautils, btrfs-progs, dmsetup, dosfstools, e2fsprogs, expect, fdisk, gcc, genext2fs, initramfs-tools-core, jq, keyutils, kmod, libdevmapper-dev, libjson-perl, linux-image-686-pae, linux-image-amd64, linux-image-arm64, linux-image-armmp-lpae, linux-image-generic, lvm2, mdadm, netcat-openbsd, openssh-client, openssh-server, openssl, procps, qemu-efi-aarch64, qemu-efi-arm, qemu-system, qemu-system-arm, qemu-system-x86, sharutils, sshpass, udev, xxd, zstd
Build-Depends: asciidoctor <!nodoc>, autoconf, automake (>= 1:1.12), autopoint, debhelper-compat (= 13), dh-strip-nondeterminism, docbook-xml <!nodoc>, docbook-xsl <!nodoc>, gettext, jq <!nocheck>, libargon2-dev, libblkid-dev, libdevmapper-dev, libjson-c-dev, libpopt-dev, libselinux1-dev, libsepol-dev, libssh-dev, libssl-dev, libtool, pkg-config, po-debconf, procps <!nocheck>, uuid-dev, xsltproc <!nodoc>, xxd <!nocheck>
Package-List:
 cryptsetup deb admin optional arch=linux-any
 cryptsetup-bin deb admin optional arch=linux-any
 cryptsetup-initramfs deb admin optional arch=all
 cryptsetup-run deb oldlibs optional arch=all
 cryptsetup-ssh deb admin optional arch=linux-any
 cryptsetup-suspend deb admin optional arch=linux-any
 cryptsetup-udeb udeb debian-installer optional arch=linux-any profile=!noudeb
 libcryptsetup-dev deb libdevel optional arch=linux-any
 libcryptsetup12 deb libs optional arch=linux-any
 libcryptsetup12-udeb udeb debian-installer optional arch=linux-any profile=!noudeb
Checksums-Sha1:
 0d4c4329fff5bcdebbcfc26573821e4e6a4af82d 11488981 cryptsetup_2.6.1.orig.tar.gz
 1f92a2a628dd715224fd8231daff9500f3ec40bd 158256 cryptsetup_2.6.1-4~deb12u2.debian.tar.xz
Checksums-Sha256:
 b8adeb071bb396a1a8515f1d54b4cc8901a536d0da3f5970971beb2ec8427c17 11488981 cryptsetup_2.6.1.orig.tar.gz
 67da0f0002ab9799fb25d4455d581123b159b4bf3482719240a88891bdfa1856 158256 cryptsetup_2.6.1-4~deb12u2.debian.tar.xz
Files:
 2a55f71777b0cb6197cde7f57822b51f 11488981 cryptsetup_2.6.1.orig.tar.gz
 9673a11de9d9ead0952fdafb5e06204d 158256 cryptsetup_2.6.1-4~deb12u2.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEERpy6p3b9sfzUdbME05pJnDwhpVIFAmWAOBQACgkQ05pJnDwh
pVJwtBAApkHJs2rSTrYzhuQ6CYuvF4PQuxYCX4DlaaTeSgWMYhSHSNrqfy0/hy+c
GcoYDqFJA9QwK91np/hxPZX1pSv73xxlz1QD4+UiKt7B21Ia8yBM8r17vrkHj35n
24F44XmrQ1oI5mcFs2e+PPlexF/uqRHJDm3kCUwnTX+SU/peX7F5gwxe2p1jmHXT
JiWjOgcAiuOog9St3Yt5SdZvNcHTr9+kxCs5vL8Qtr+3xoDFEWCx45lh+as+vLp6
p3UNenJdSaF2MLS1KCLSWtOysf3WZWNAscLC+I0h4jTKYJq9rtp9f+CEwSsWlZO4
sS/ClkU905c0fHtOtajzpPPVc+PXRjmQXVGE6pVJOBVhLp+Kd5lcQoVU2gEv8aWg
QyV9RWb+Cc3apkCjSNUMZS4IWpGs9+SOPpsuSCV6Kiab7XX9RfLa795yCIK/TLe0
iBmbz6kjpkzEYzU7n6lzMRYzf5MXbYNwzDVb2sSqQqAZjU/HRTlorpIxm9AYBh/n
bu27t+nV8blshb4rbEicM8k/g2i+g4mlcs+sSDH1q3fJAHPR1VVh9csSlmh+sDbC
xyM4dqUPPVcDI/7qBvG9tyy1n4ROhvelHArmIUMqKuzHGDj3csn3m8Fjfao4QYPt
9SLi6AjEHZlqm50cHJV9nCOONQgz/ZFWjcjyflhDBgk8smY4hoA=
=u/P/
-----END PGP SIGNATURE-----
