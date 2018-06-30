# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=(python2_7 python3_5 python3_6)
PYTHON_REQ_USE='threads(+)'
inherit python-single-r1 waf-utils git-r3

DESCRIPTION="C/C++ language server supporting cross references, completion, diagnostics, semantic highlighting, and more."
HOMEPAGE="https://github.com/cquery-project/cquery"
SRC_URI=""
EGIT_REPO_URI="https://github.com/cquery-project/cquery.git"
EGIT_COMMIT="v${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
