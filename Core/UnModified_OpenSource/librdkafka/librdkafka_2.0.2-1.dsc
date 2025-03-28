-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: librdkafka
Binary: librdkafka1, librdkafka++1, librdkafka-dev
Architecture: any
Version: 2.0.2-1
Maintainer: Faidon Liambotis <paravoid@debian.org>
Uploaders:  Christos Trochalakis <ctrochalakis@debian.org>, ChangZhuo Chen (陳昌倬) <czchen@debian.org>,
Homepage: https://github.com/confluentinc/librdkafka
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/kafka-team/librdkafka
Vcs-Git: https://salsa.debian.org/kafka-team/librdkafka.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, pkg-config
Build-Depends: debhelper-compat (= 13), liblz4-dev, libsasl2-dev, libssl-dev, libzstd-dev, python3, rapidjson-dev, zlib1g-dev
Package-List:
 librdkafka++1 deb libs optional arch=any
 librdkafka-dev deb libdevel optional arch=any
 librdkafka1 deb libs optional arch=any
Checksums-Sha1:
 bf3a847e3a39ced0e83734d91c0ab17c640bf9e8 4257782 librdkafka_2.0.2.orig.tar.gz
 c1fefeab6b58674242dfa8678c1636ac3d981e76 12264 librdkafka_2.0.2-1.debian.tar.xz
Checksums-Sha256:
 f321bcb1e015a34114c83cf1aa7b99ee260236aab096b85c003170c90a47ca9d 4257782 librdkafka_2.0.2.orig.tar.gz
 1a78b7ab2f5098806cfaabf12e80984a5513780c99b1ec37d7cd59535aaef421 12264 librdkafka_2.0.2-1.debian.tar.xz
Files:
 c0120dc32acc129bfb4656fe17568da1 4257782 librdkafka_2.0.2.orig.tar.gz
 c6de5e1eb01a4acf6ce8dd68de594901 12264 librdkafka_2.0.2-1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEqVksUhy5BAd9ZZgAnQteWx7sjw4FAmPkXIEACgkQnQteWx7s
jw7asBAA4A0J9uY4bPW63ZFVHO2SZOOpD97K8QqzDHLbtjbfv4Kd2yuj5OOJgK1s
ItAncXVaFeg6ENElbgkLlZTUVqjtpq+txdwO7exhFS+XWdE0G5y57fsMpCxEEksM
Uee/bxd8dCKGeP0RET/F3iI5CLyN8Cr5J79olz2Kv0FFn8HnEZwW72d7e2oKePJk
tkpUdWe0+gOlpspw5aalmo2vUY0CnlknbqZRjvZWfNDKYuiKaJq38q8gBAaQicJe
KK7SVS5GXG2WvPZfo8D62SSNLRQZGgL+uiw6IxLNwyu/JfKNACbePwXe1Q4vA1WA
KE9NWVuA9Xmwwr6aeLYuMNYk2tqZJaTWMD/XA4z23s2CuBHlLhAGAzSCbSJKbHTF
O5JixNdxPUfFCaL7a2+chzOwgWKWcansHrluuOYd6ehZZKztrHov402NIfyibzKl
Kk0/LBtPLbQ5v7x7riUF2noQ1ukcKCLZFL79x3ziehPLPv3+y6icgcEV8fqLC2Xq
+oqbBIaNfUe/Cc/T2AbH5odE4owHpZ+TZ0sMctyoXZgnqduVlK0m6W6rcsP/84jZ
i9WVUtCStl09erHckhldhPNzC4/FpyITaAYEQPAzzaec8IapZ9t9OKgyF/9jKa1Q
jD37dUjZ5Ap6xlOZpArRE6rzJqYXHuDzeQkoTyibwSVT3s5W5DQ=
=Bsuq
-----END PGP SIGNATURE-----
