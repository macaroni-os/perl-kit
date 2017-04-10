# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DIST_AUTHOR=TLINDEN
DIST_VERSION=1.40
inherit perl-module

DESCRIPTION="Commandline interface to http://dict.leo.org/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	virtual/perl-Carp
	dev-perl/HTML-TableParser
	virtual/perl-DB_File"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"

src_prepare() {
	einfo "Renaming leo to Leo"
	mv "${S}/"{l,L}eo || die
	sed -i "s/'leo'/'Leo'/" "${S}/"Makefile.PL || die
	sed -i "s/^leo$/Leo/" "${S}/"MANIFEST || die
	perl-module_src_prepare
}

pkg_postinst() {
	elog "We renamed leo to Leo"
	elog "due to conflicts with app-editors/leo"
}
