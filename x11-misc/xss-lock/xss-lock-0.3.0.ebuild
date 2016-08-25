# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
DESCRIPTION="use external locker as X screen saver"
SLOT=0
HOMEPAGE="https://bitbucket.org/raymonad/xss-lock"
LICENSE="MIT"
SRC_URI="https://bitbucket.org/raymonad/xss-lock/get/v${PV}.tar.gz"
KEYWORDS="alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
MY_TAGHASH='94aec045ffd6'
S="$WORKDIR/raymonad-${PN}-${MY_TAGHASH}"

src_install() {
	cmake -DCMAKE_INSTALL_PREFIX='.' -DMAKE-BUILD_TYPE=Release
	make
	make install
	dobin bin/${PN}
}
