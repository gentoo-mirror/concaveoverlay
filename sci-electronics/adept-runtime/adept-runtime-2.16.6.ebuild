# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit udev

SRC_URI="
amd64? ( http://files.digilent.com/Software/Adept2+Runtime/${PV}/digilent.adept.runtime_${PV}-x86_64.tar.gz )
x86? ( http://files.digilent.com/Software/Adept2+Runtime/${PV}/digilent.adept.runtime_${PV}-i686.tar.gz )
"
DESCRIPTION="Digilent runtime"
SLOT=0
HOMEPAGE="https://reference.digilentinc.com/reference/software/adept/start"
LICENSE="adept-runtime"
KEYWORDS="-* ~amd64 ~x86"

src_unpack() {
	default
	if use amd64; then
		mv "${WORKDIR}/digilent.adept.runtime_${PV}-x86_64" "${S}" || die
	else
		mv "${WORKDIR}/digilent.adept.runtime_${PV}-i686" "${S}" || die
	fi
}

src_install() {
	exeinto /usr/$(get_libdir)/digilent/adept
	if use amd64; then
		doexe lib64/*
		dosbin bin64/dftdrvdtch
	else
		doexe lib/*
		dosbin bin/dftdrvdtch
	fi

	insinto /etc/ld.so.conf.d
	doins digilent-adept-libraries.conf

	insinto /usr/share/digigent/adept/data/firmware
	doins data/firmware/*.HEX
	exeinto /usr/share/digigent/adept/data/firmware
	doexe data/firmware/*.so
	doexe data/firmware/*.so*

	insinto /usr/share/digilent/adept/data
	doins data/jtscdvclist.txt

	insinto /usr/share/digilent/adept/data/xpla3
	doins data/xpla3/*.map

	insinto /usr/share/digilent/adept/data/xbr
	doins data/xbr/*.map

	insinto /etc
	doins digilent-adept.conf

	udev_dorules 52-digilent-usb.rules
}

pkg_postinst() {
	udev_reload
}

pkg_postrm() {
	[[ -z "${REPLACING_VERSIONS}" ]] && udev_reload
}
