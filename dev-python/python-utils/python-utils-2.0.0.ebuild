# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit distutils-r1 eutils

DESCRIPTION="a collection of small functions and classes which make common patterns shorter and easier"
HOMEPAGE="http://python-utils.readthedocs.org/en/latest/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-python/six
"
RDEPEND="
	${DEPEND}
"

python_prepare_all() {
	epatch "${FILESDIR}"/no-test.patch

	distutils-r1_python_prepare_all
}
