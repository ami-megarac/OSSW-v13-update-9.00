-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: nss-pam-ldapd
Binary: nslcd, pynslcd, libnss-ldapd, libpam-ldapd, nslcd-utils
Architecture: any all
Version: 0.9.12-4
Maintainer: Arthur de Jong <adejong@debian.org>
Homepage: https://arthurdejong.org/nss-pam-ldapd/
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/debian/nss-pam-ldapd
Vcs-Git: https://salsa.debian.org/debian/nss-pam-ldapd.git
Testsuite: autopkgtest
Testsuite-Triggers: expect, ldap-utils, netbase, slapd
Build-Depends: debhelper-compat (= 13), libkrb5-dev, libldap2-dev, libsasl2-dev, po-debconf (>= 0.5.0), docbook2x, docbook-xml, libpam0g-dev, dh-python, python3, python3-daemon, python3-ldap, python3-pyasn1, python3-pyasn1-modules
Package-List:
 libnss-ldapd deb admin optional arch=any
 libpam-ldapd deb admin optional arch=any
 nslcd deb admin optional arch=any
 nslcd-utils deb admin optional arch=all
 pynslcd deb admin optional arch=all
Checksums-Sha1:
 cf02d70939ae545171d5571e7550da9e9e3fe27c 791983 nss-pam-ldapd_0.9.12.orig.tar.gz
 64c2396e3a51aeab296e0405592495a1a4f62a8f 866 nss-pam-ldapd_0.9.12.orig.tar.gz.asc
 a783ac1b1cf1df72c5c3764a144342edb125f684 112864 nss-pam-ldapd_0.9.12-4.debian.tar.xz
Checksums-Sha256:
 c6d661e74693cbf531a790631ca93b73f291fb23cc39465b09deb8da2bfb0e14 791983 nss-pam-ldapd_0.9.12.orig.tar.gz
 4dc7d27f5e846577b8770b2b48cd6ceda3e2411b7674008e0273b6958d20e503 866 nss-pam-ldapd_0.9.12.orig.tar.gz.asc
 e674b06e11d9dc5cda8067d7cf085051198bbda37308aee1274b71527c1d7eef 112864 nss-pam-ldapd_0.9.12-4.debian.tar.xz
Files:
 cc30ee0ab91d6c94b7a343ae09b5dc69 791983 nss-pam-ldapd_0.9.12.orig.tar.gz
 5f46a95524e0e55cbaccaf63138278d4 866 nss-pam-ldapd_0.9.12.orig.tar.gz.asc
 c2f18773ca9a45a4f7f4730b205c5f55 112864 nss-pam-ldapd_0.9.12-4.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEERS7Cy2XPaMKhrb9fKot0aBDgr8EFAmRNGIoACgkQKot0aBDg
r8GmfRAAl0RxEkznVL6QcA0+H+n8yO60+Vb2XK+DZbmmZbkucYniZXyhU+5DW4sU
ZOby2zVuwf9rHoBYS5NcuuKbOdnzYdeNWGdch5LLBuo2Q9EMkmisSU+hf9DlJQIf
UJrWF3oPnza5JVFeF9we3xpGd8cCgokeKb2717jQCa+mEG+DaqsWZKuzdFD4RmGC
5EFOIkUIrRfhL6dUaYip6bvvvQCZ1TXGmn9jiaCSYHe9MdL9ggQd0BmSJq2eQfP2
tCqmVcWGMhGTg8RojUM6oIinmwdkn2LoSkNAMfB9i0fmIAZXxJHDb8Dz67jFzHQ8
V99/ACyKIgBrecJSNQoLWCd1pm62fRDa7IaihZXqhDRqMHF95B5SDc1Mnii9S4dT
H8KUBOZ4t6dki73FIT/1pCnu7WFdqDW2X04Gi9rVWRdL63J7I8yHFKwuzQCYyoq8
zbvfjAdqIAzpW1GYzkknkCse8QHJ/O6EwGrXgUFn+2TZUppxSzYuB9tderIXKS2K
vA0vZIsVZl0Q4/vpemJ2Yh/+wWiWWEmR6EHzG9iVMIieEUyCf5ehwxVle9QdyLrb
8FaWMWqIcp95bjOUm4i4PTtsF/3WViKKqrLCHmIYy8YfV3f1X5tR1gtotqcZmlaz
nDhBdxXUoWxIpNlJz0dWKNTKTJXdIzyyjIfLwOuwe5x2GkuhP9o=
=6rAX
-----END PGP SIGNATURE-----
