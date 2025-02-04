# Copyright (c) 2020 The Fyde Innovations. All rights reserved.
# Distributed under the license specified in the root directory of this project.

EAPI="5"

DESCRIPTION="A simple script to edit config.txt in efi partition"
HOMEPAGE="https://fydeos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"
S=${WORKDIR}

src_install() {
  exeinto /usr/share/edit-pi-config
  doexe ${FILESDIR}/edit-pi-config
  dosym /usr/share/edit-pi-config/edit-pi-config /usr/sbin/edit-pi-config
}
