# Mainatiner: ThanosApostolou <forum@manjaro.org>

pkgname=manjaro-lxde-xfce4-notifyd
pkgver=0.1
pkgrel=1
pkgdesc="Xfce4-notifyd-config desktop entry which is shown under Lxde"
url=" "
arch=('i686' 'x86_64')
license=('GPL2')
depends=('xfce4-notifyd')
source=('manjaro-lxde-xfce4-notifyd-config.desktop')
sha256sums=('99902b9b4ccd2b5bbe5d5dcc963c89da81fe8cf96514a98d965b48ce7cb1d033')

package() {
	cd $srcdir
	install -Dm644 manjaro-lxde-xfce4-notifyd-config.desktop $pkgdir/usr/share/applications/manjaro-lxde-xfce4-notifyd-config.desktop
}
