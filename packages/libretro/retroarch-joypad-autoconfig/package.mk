PKG_NAME="retroarch-joypad-autoconfig"
PKG_VERSION="b64b14be7d5a5da4000fe2db03fd1ba67f7adca3"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/libretro/retroarch-joypad-autoconfig"
PKG_URL="$PKG_SITE.git"
PKG_DEPENDS_TARGET="toolchain retroarch"
PKG_PRIORITY="optional"
PKG_SECTION="libretro"
PKG_SHORTDESC="RetroArch joypad autoconfig files"
PKG_LONGDESC="RetroArch joypad autoconfig files"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

configure_target() {
  cd $PKG_BUILD
}

makeinstall_target() {
  make install INSTALLDIR="$INSTALL/etc/retroarch-joypad-autoconfig" DOC_DIR="$INSTALL/etc/doc/."

  #Place Working configs
  cp -Pr "${PKG_DIR}"/joypad_configs/* "${INSTALL}"/etc/retroarch-joypad-autoconfig/  
}