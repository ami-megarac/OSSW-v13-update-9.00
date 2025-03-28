-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: hiredis
Binary: libhiredis0.14, libhiredis-dev
Architecture: any
Version: 0.14.1-3
Maintainer: Chris Lamb <lamby@debian.org>
Homepage: https://github.com/redis/hiredis
Standards-Version: 4.6.0
Vcs-Browser: https://salsa.debian.org/lamby/pkg-hiredis
Vcs-Git: https://salsa.debian.org/lamby/pkg-hiredis.git
Testsuite: autopkgtest
Testsuite-Triggers: gcc, libc-dev, pkg-config
Build-Depends: debhelper-compat (= 13), procps <!nocheck>, redis-server [linux-any kfreebsd-any] <!nocheck>
Package-List:
 libhiredis-dev deb libdevel optional arch=any
 libhiredis0.14 deb libs optional arch=any
Checksums-Sha1:
 a422493d601aa36cd14504a6791e7609093af8ed 64372 hiredis_0.14.1.orig.tar.gz
 a84c91f6a6a31abdead2c3609502aeaf4ef5044e 9636 hiredis_0.14.1-3.debian.tar.xz
Checksums-Sha256:
 2663b2aed9fd430507e30fc5e63274ee40cdd1a296026e22eafd7d99b01c8913 64372 hiredis_0.14.1.orig.tar.gz
 be4e12bce6df66cf42c98386d18b7df4841a499d85a1a9cb909cc9104184260d 9636 hiredis_0.14.1-3.debian.tar.xz
Files:
 3e1c541f9df28becb82a611e63e3e939 64372 hiredis_0.14.1.orig.tar.gz
 91d022b1238f86ff047d5882157ba3c6 9636 hiredis_0.14.1-3.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEwv5L0nHBObhsUz5GHpU+J9QxHlgFAmK5jegACgkQHpU+J9Qx
Hljt4A//bFcwEE+REMr9n9mQA1s2Oaq3kNmjfJoGzImV4RXAqFA2c65HbqOq1mEb
oKlyYsUwxzrdCbXFvCNObQeAiRXAgCehJ5NkJril8HoMjd/wBH5CYRjN5l4flH0x
y0+gwqkSUeNRFEt20t5xludgZKBvC+AyKONN3Q0oU9hYB/PtqyMV/rkWXM+MfiTo
wpc301ra+RCZNKdSc5hm+Qy4L8gx+tc7CVcYH6VCQB+olA8VW9+RwJrvCOiaaJeN
iiBnhgt/7HFuxudhuKbHYHvTFhS1ddGORERy1IeJMRmYEZEsV4s4r4Y9l3aOfwae
F04t3l9P3sC5z/OGecAx/ujBKIx1dPRX3koCR5NkUgW1VjrueMNrnqWQaieZI4t+
/OuhT9a5UPCU4OCdAliZ9h2tchFnYzMlrCPQr1ZuKNl13Yt/+y9D20E4ep1wBgqp
5KRdf9qZ0T83s7QfZ+nk1j1hG6iOZIVgcnDAMAurjJNhrPYgHm8UbX6hS7ip6NUH
hhAs4ab1O7Hwt6LR0dNcQE+UJl6s4mG/SFhABv/Gv9S8mJf91/krdIoaQMYE5RI/
o7JDo88WrKAE9scy7czwmwlzfbcI3y/iD8fSdzmDN7v3WdjBPwmL31g+npc9ayYO
NqppeP9a2S6KzNoVy8EQZ0vr1wbJ/A2toqd89fRRudsu/Y6j3u0=
=cJiF
-----END PGP SIGNATURE-----
