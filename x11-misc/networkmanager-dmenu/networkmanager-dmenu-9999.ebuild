# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7
inherit git-r3
EGIT_REPO_URI="https://github.com/firecat53/networkmanager-dmenu.git"
DESCRIPTION='small script to manage NetworkManager connections with dmenu instead of nm-applet'
SLOT=0
HOMEPAGE='https://github.com/firecat53/nmcli-dmenu'
LICENSE='MIT'
KEYWORDS="alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
RDEPEND='dev-lang/python
         dev-python/pygobject
         x11-misc/dmenu'

src_install() {
	dobin 'networkmanager_dmenu'
}
