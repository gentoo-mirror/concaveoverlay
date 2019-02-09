EAPI=7
DESCRIPTION="portable FPGA place and route tool"
HOMEPAGE="https://github.com/YosysHQ/nextpnr"

inherit git-r3 cmake-utils

# SRC_URI="https://github.com/YosysHQ/$PN/archive/$GIT_COMMIT.tar.gz -> $P.tar.gz"
EGIT_REPO_URI="https://github.com/YosysHQ/nextpnr.git"
LICENSE=ISC
SLOT=0
IUSE="ice40 ecp5"

DEPEND="ice40? ( sci-electronics/icestorm 
	         >=sci-electronics/yosys-0.8 )
	ecp5? ( sci-electronics/prjtrellis 
	        >sci-electronics/yosys-0.8 )
	dev-qt/qtcore:5
	dev-libs/boost"
