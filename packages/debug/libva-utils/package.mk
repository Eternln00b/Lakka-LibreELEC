# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libva-utils"
PKG_VERSION="2.13.0"
PKG_SHA256="128333faa9792a3b87586a80bfb70859dcdd81847ec9a722f785a601a48e1731"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/01org/libva-utils"
PKG_URL="https://github.com/intel/libva-utils/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="Libva-utils is a collection of tests for VA-API (VIdeo Acceleration API)"
PKG_TOOLCHAIN="meson"

if [ "${DISPLAYSERVER}" = "x11" ]; then
  PKG_DEPENDS_TARGET="toolchain libva libdrm libX11"
  DISPLAYSERVER_LIBVA="-Dx11=true"
elif [ "${DISTRO}" = "Lakka" ]; then
  PKG_DEPENDS_TARGET="toolchain libva libdrm libX11"
  DISPLAYSERVER_LIBVA="-Dx11=true"
else
  PKG_DEPENDS_TARGET="toolchain libva libdrm"
  DISPLAYSERVER_LIBVA="-Dx11=false"
fi

PKG_MESON_OPTS_TARGET="-Ddrm=true \
                       ${DISPLAYSERVER_LIBVA} \
                       -Dwayland=false \
                       -Dtests=false"

