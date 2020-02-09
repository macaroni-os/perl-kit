# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DIST_AUTHOR=TODDR
DIST_VERSION=1.14
inherit perl-module

DESCRIPTION="IO::Tty and IO::Pty modules for Perl"

SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ppc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE=""

DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"

src_test() {
	perl-module_src_test
}
