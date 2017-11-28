# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=6
inherit rpm

SRC_URI="http://files.digilent.com/Software/Adept2+Runtime/2.16.6/digilent.adept.runtime-${PV}.x86_64.rpm"
DESCRIPTION='Digilent runtime'
SLOT=0
HOMEPAGE='https://reference.digilentinc.com/reference/software/adept/start'
LICENSE='adept-runtime'
KEYWORDS="~amd64"

src_install() {
    dodir /
    cp -R "${WORKDIR}/usr ${WORKDIR}/etc" "${D}/" || die "Install failed!"
}
