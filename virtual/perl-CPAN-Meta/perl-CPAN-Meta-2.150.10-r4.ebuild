# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Virtual for ${PN#perl-}"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	|| ( =dev-lang/perl-5.32* =dev-lang/perl-5.30* ~perl-core/${PN#perl-}-${PV} )
	dev-lang/perl:=
	!<perl-core/${PN#perl-}-${PV}
	!>perl-core/${PN#perl-}-${PV}-r999
	>=virtual/perl-CPAN-Meta-YAML-0.11.0
	>=virtual/perl-JSON-PP-2.271.30
	>=virtual/perl-Parse-CPAN-Meta-1.441.400
"
# see bug 519974
