PKG_NAME="odroidgoa-sleep"
PKG_VERSION=""
PKG_SHA256=""
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_DEPENDS_TARGET="systemd"
PKG_SITE=""
PKG_URL=""
PKG_LONGDESC="Sleep configuration"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
	mkdir -p $INSTALL/usr/lib/systemd/system-sleep/
	cp 99-dwc2-reload.sh $INSTALL/usr/lib/systemd/system-sleep/
	chmod +x $INSTALL/usr/lib/systemd/system-sleep/99-dwc2-reload.sh
}
