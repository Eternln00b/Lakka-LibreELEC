# Copyright (C) 2020 Laude Maximilien (https://a404dded.wordpress.com)

PKG_NAME="wiringPiTinkerBoard"
PKG_VERSION="57d4c4b"
PKG_ARCH="any"
PKG_LICENSE="LGPLv3"
PKG_GIT_CLONE_BRANCH="sbc/tinkerboard/c"
PKG_SITE="https://github.com/TinkerBoard/gpio_lib_c"
PKG_URL="$PKG_SITE.git"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="GPIO Interface library for the Asus Tinker board"
PKG_LONGDESC="GPIO Interface library for the Asus Tinker board"
PKG_TOOLCHAIN="manual"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  mkdir -p $SYSROOT_PREFIX/usr/lib/
  mkdir -p $SYSROOT_PREFIX/usr/include/
  mkdir -p $INSTALL/usr/lib/

  cp wiringPi/*.h $SYSROOT_PREFIX/usr/include/
  make -C wiringPi CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS" V=1 static
}

makeinstall_target() {
  cp -v wiringPi/libwiringPi.a* $INSTALL/usr/lib/
  cp -v wiringPi/libwiringPi.a* $SYSROOT_PREFIX/usr/lib/
}