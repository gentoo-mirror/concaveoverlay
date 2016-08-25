# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=6

DESCRIPTION='A classic example to use when starting something new'
SLOT=0

HOMEPAGE='http://wiki.gentoo.org/index.php?title=Basic_guide_to_write_Gentoo_Ebuilds'
SRC_URI='http://dev.gentoo.org/~tomwij/files/wiki/hello-world-1.0.tar.gz'
LICENSE="MIT"

KEYWORDS='alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86'

src_install() {
	dobin hello-world
}
