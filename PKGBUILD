# Maintainer: Chrysostomus @forum.manjaro.org

pkgname=terminusfix
pkgver=0.1
pkgrel=1
pkgdesc="A simple alias for terminus-font"
arch=(any)
url="https://github.com/Chrysostomus/$pkgname"
license=('MIT')
depends=('bash')
makedepends=('git')
source=("git://github.com/Chrysostomus/$pkgname")
md5sums=('SKIP')

package () {
	cd "$srcdir"
        install -Dm755 "$srcdir/$pkgname/33-TerminusPcfFont.conf" "$pkgdir/etc/fonts/conf.d/33-TerminusPcfFont.conf"
}
