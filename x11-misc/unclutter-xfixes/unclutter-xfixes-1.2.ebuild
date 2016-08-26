# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
DESCRIPTION='a rewrite of unclutter using the x11-xfixes extension'
SLOT=0
HOMEPAGE='https://github.com/Airblader/unclutter-xfixes'
LICENSE='MIT'
SRC_URI="https://github.com/Airblader/unclutter-xfixes/archive/v${PV}.tar.gz"
KEYWORDS="alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
RDEPEND='dev-libs/libev
        x11-libs/libX11
        x11-libs/libXfixes
        x11-libs/libXi
'
DEPEND="${RDEPEND}"
S="$WORKDIR/unclutter-xfixes-${PV}"

src_install() {
	make
	dobin unclutter
}
