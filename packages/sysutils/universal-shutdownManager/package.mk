# Copyright (C) 2021 Laude Maximilien (https://a404dded.wordpress.com)

PKG_NAME="universal-shutdownManager"
PKG_VERSION="1.0"
PKG_ARCH="arm"
PKG_URL=""
PKG_DEPENDS_TARGET="Python3 Python2 python-TinkerBoard-gpio-lib-python"
PKG_SECTION="system"
PKG_SHORTDESC="TinkerBoard-safeshutdown: TinkerBoard safe shutdown script"
PKG_LONGDESC="TinkerBoard safe shutdown script compatibles with retroflag boxes"
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_TOOLCHAIN="manual"

make_target() {
  : # nothing
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp $PKG_DIR/scripts/* $INSTALL/usr/bin
  chmod +x $INSTALL/usr/bin/shutdownManager
}

post_install() {
  enable_service AsusTinkerBoard_safe_shutdown.service
}
