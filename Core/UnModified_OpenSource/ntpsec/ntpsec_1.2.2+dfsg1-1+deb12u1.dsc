-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: ntpsec
Binary: ntpsec, ntpsec-ntpdate, ntpsec-ntpdig, ntpsec-ntpviz, ntpsec-doc, python3-ntp, ntp, ntp-doc, ntpdate, sntp
Architecture: any all
Version: 1.2.2+dfsg1-1+deb12u1
Maintainer: Richard Laager <rlaager@debian.org>
Homepage: https://www.ntpsec.org
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/debian/ntpsec
Vcs-Git: https://salsa.debian.org/debian/ntpsec.git
Build-Depends: asciidoctor, bison, debhelper-compat (= 13), dh-apache2, dh-apparmor, dh-python, docbook-xsl, libbsd-dev, libcap2-dev [linux-any], libssl-dev, netbase, pkg-config, pps-tools [linux-any], python3, python3-dev, python3-gps, systemd, xsltproc, xz-utils
Build-Conflicts: libavahi-compat-libdnssd-dev, libwww-dev, libwww-ssl-dev
Package-List:
 ntp deb oldlibs optional arch=all
 ntp-doc deb oldlibs optional arch=all
 ntpdate deb oldlibs optional arch=all
 ntpsec deb net optional arch=any
 ntpsec-doc deb doc optional arch=all
 ntpsec-ntpdate deb net optional arch=any
 ntpsec-ntpdig deb net optional arch=any
 ntpsec-ntpviz deb net optional arch=any
 python3-ntp deb python optional arch=any
 sntp deb oldlibs optional arch=all
Checksums-Sha1:
 bc8d5a18dcebc470360a640df530849f7d58461e 2317956 ntpsec_1.2.2+dfsg1.orig.tar.xz
 112aba0694f9dec70723acafdee171efc020c41f 57944 ntpsec_1.2.2+dfsg1-1+deb12u1.debian.tar.xz
Checksums-Sha256:
 53e527e3d04d551d41af2d359c2715c2de5f5bfa2a695d4ec1a811b3e9137f63 2317956 ntpsec_1.2.2+dfsg1.orig.tar.xz
 4f3ffb5ce6d93a257ffe4c145ea781b946772ca8394f85e924b830488c1323d2 57944 ntpsec_1.2.2+dfsg1-1+deb12u1.debian.tar.xz
Files:
 2787c8145e6ba35c52967d020b38ade0 2317956 ntpsec_1.2.2+dfsg1.orig.tar.xz
 973b3bf34c39a1f765cae1b0a18a6a68 57944 ntpsec_1.2.2+dfsg1-1+deb12u1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEE1Ot9lOeOTujs4H+U+HlhmcBFhs4FAmTGsz4THHJsYWFnZXJA
ZGViaWFuLm9yZwAKCRD4eWGZwEWGziYnD/4otgu/kZJur7bWsHFvP0I5CltckA6O
nWjCgNg0OzxDu89iiUZQpUeScVbNqY7Yq4O18Quhbxij+bDbY8zhMSUxUz73Mb/q
36CBZnvNmDRY1fNVgjFWc95WwD+CLpfBb+tvAte3y3DWTk8ukHkhtzG7n+mVT2Wr
Ck6XNJK2dsIgiYbNWr5YMifZrShIz6jDCTeJUw5ngK1t067IK7vtxr2SXzzZHbN3
gA9bHlHwUx1IuGV6+IkDufdH/V0IV7BRaw5lZ+3L1ZV4p/kZFva/wkbisg20ujBe
vEyUIVgvq/acN4EkwGOMtd0AVQeqTtvO6C1BeDkFN37kZ709lBIrSBTBeYYvVehJ
TyIaGg2OjoYZzwtU4IWVF1J+pSgKe7T1MEL7sTLG24h87eThtlLbDSNU2qTReMxK
jOSwa+3qme6+W9xDfQLau5+gYE7wzGv1NZwQ7lKqR7RtGvsprUQALDpuVVqwtNUp
Cxx3x+IAkMosFnTvnOcfHwJdkvuSDVwAUHg1QRanzVdTERjPb5w7ciVSy0JQXB4n
w9fJ8e/0jFnld78oST2fpImkUvEz/F1vQ9vOIDpfrfVV71cajeX19SXNe7dRZIGm
RybzrDQ/AMbHANuEVovXyq22Cm44MwrqWNm7IWVaWnPZryVTKQyx9IOjS42+bH0w
B8RXqqLeHYKYgw==
=ddjA
-----END PGP SIGNATURE-----
