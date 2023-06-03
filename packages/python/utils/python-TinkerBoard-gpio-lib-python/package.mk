# Copyright (C) 2020 Laude Maximilien (https://a404dded.wordpress.com)

PKG_NAME="python-TinkerBoard-gpio-lib-python"
PKG_VERSION="12d03a1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_GIT_CLONE_BRANCH="sbc/tinkerboard/python"
PKG_SITE="https://github.com/TinkerBoard/gpio_lib_python"
PKG_URL="$PKG_SITE.git"
PKG_DEPENDS_TARGET="toolchain Python3 Python2 distutilscross:host"
PKG_SECTION="python"

PKG_TOOLCHAIN="manual"

pre_make_target() {
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
  export LDSHARED="$CC -shared"
}

make_target() {
  : nop
}

makeinstall_target() {
  python setup.py install --root=$INSTALL --prefix=/usr
}

post_makeinstall_target() {
  find $INSTALL/usr/lib -name "*.py" -exec rm -rf "{}" ";"
}
