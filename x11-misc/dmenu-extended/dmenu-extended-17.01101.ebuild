# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
DESCRIPTION='An extension to dmenu for quickly opening files and folders'
SLOT=0
HOMEPAGE='https://github.com/markjones112358/dmenu-extended'
LICENSE='MIT'
SRC_URI="https://github.com/markjones112358/dmenu-extended/archive/v${PV}.tar.gz"
KEYWORDS="alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
RDEPEND='dev-lang/python
	x11-misc/dmenu'

src_install() {
	dobin 'dmenu_extended.py'
	dobin 'dmenu_extended_run'
}