# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6

SRC_URI="http://files.digilent.com/Software/Adept2+Runtime/2.16.6/digilent.adept.runtime_${PV}-x86_64.tar.gz"
DESCRIPTION='Digilent runtime'
SLOT=0
HOMEPAGE='https://reference.digilentinc.com/reference/software/adept/start'
LICENSE='adept-runtime'
KEYWORDS="~amd64"
S=${WORKDIR}/digilent.adept.runtime_2.16.6-x86_64

src_install() {
    dolib lib64/*
    dosbin bin64/dftdrvdtch

    insinto /etc/ld.so.conf.d
    doins digilent-adept-libraries.conf

    exeinto /usr/share/digilent/adept/data/firmware
    doins data/firmware/*.HEX
    doexe data/firmware/*.so

    insinto /usr/share/digilent/adept/data
    doins data/jtscdvclist.txt

    insinto /usr/share/digilent/adept/data/xpla3
    doins data/xpla3/*.map

    insinto /usr/share/digilent/adept/data/xbr
    doins data/xbr/*.map

    insinto /etc
    doins digilent-adept.conf

    insinto /etc/udev/rules.d
    doins 52-digilent-usb.rules
}
