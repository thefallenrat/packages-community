# Maintainer : Chrysostomus

pkgname=breeze-maia-gtk3
pkgver=1
pkgrel=1
pkgdesc="Breeze theme with maia colors, gtk3-only version"
arch=('any')
url="https://www.gnome.org/"
license=('LGPL')
source=("git://github.com/Chrysostomus/breeze-maia.git")
sha256sums=('SKIP')
makedepends=('git')

package() {
	cd "$srcdir"
	install -dm655 "$pkgdir/usr/share/themes/"
	cp -r "$srcdir/breeze-maia/Breeze-Maia" "$pkgdir/usr/share/themes/"
	cp -r "$srcdir/breeze-maia/Breeze-Maia-Dark" "$pkgdir/usr/share/themes/"
}
