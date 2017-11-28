# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6

inherit rpm

SRC_URI="http://files.digilent.com/Software/Waveforms2015/${PV}/digilent.waveforms_${PV}.x86_64.rpm"
DESCRIPTION='Digilent runtime'
SLOT=0
HOMEPAGE='https://reference.digilentinc.com/reference/software/adept/start'
LICENSE='waveforms'
KEYWORDS="~amd64"
RDEPEND="sci-electronics/adept-runtime"
DEPEND="${RDEPEND}"

src_unpack() {
    rpm_src_unpack ${A}
    mv usr ${S}
}

src_install() {
    dobin bin/*
    dodoc -r share/doc/digilent.waveforms
    doheader -r include/digilent

    into /usr/share/man/man1
    doman share/man/man1/*

    into /usr/lib
    dolib.so lib/*.so
    dolib.so lib/*.so.*

    into /usr/lib/digilent/waveforms/audio
    dolib.so lib/digilent/waveforms/audio/*.so

    into /usr/lib/digilent/waveforms/imageformats
    dolib.so lib/digilent/waveforms/imageformats/*.so

    into /usr/lib/digilent/waveforms/mediaservice
    dolib.so lib/digilent/waveforms/mediaservice/*.so

    into /usr/lib/digilent/waveforms/platforms
    dolib.so lib/digilent/waveforms/platforms/*.so

    into /usr/lib/digilent/waveforms/qtlibs
    dolib.so lib/digilent/waveforms/qtlibs/*.so.*

    exeinto /usr/lib/digilent/waveforms
    doexe lib/digilent/waveforms/*

    insinto /usr/share/applications
    doins share/applications/*

    insinto /usr/share
    doins -r share/digilent
    doins -r share/lintian
    doins -r share/mime
}
