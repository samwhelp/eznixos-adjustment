

################################################################################
### Head: Attribute
##

name="eznixos-adjustment-appearance-grub-theme-darkmatter-remix"
gives="${name}"
pkgver="0.1"
pkgrel="1"
arch="all"
description="This is a personal package which build from eznixos-adjustment."
maintainer="developer <developer@home.work>"

##
### Tail: Attribute
################################################################################




################################################################################
### Head: Model / Build Package
##

prepare () {

	util_error_echo
	util_error_echo "## prepare"
	util_error_echo

	mod_theme_download

	return 0
}

build () {

	util_error_echo
	util_error_echo "## build"
	util_error_echo

	return 0
}

package () {

	util_error_echo
	util_error_echo "## package"
	util_error_echo


	mod_theme_install


	return 0
}

##
### Tail: Model / Build Package
################################################################################




################################################################################
### Head: Model / Theme
##



mod_theme_download () {

	##
	## ## Link
	##
	## * https://github.com/samwhelp/grub-theme-remix/tree/grub-theme-darkmatter-remix
	##


	install -dm755 "${srcdir}/overlay/usr/share/grub/themes"

	cd "${srcdir}"

	wget -c "https://github.com/samwhelp/grub-theme-remix/archive/refs/heads/grub-theme-darkmatter-remix.tar.gz" -O "grub-theme-remix-grub-theme-darkmatter-remix.tar.gz"

	tar xf grub-theme-remix-grub-theme-darkmatter-remix.tar.gz

	cp -rf "${srcdir}/grub-theme-remix-grub-theme-darkmatter-remix/." "${srcdir}/overlay/usr/share/grub/themes/grub-theme-darkmatter-remix"

	cd "${OLDPWD}"

}

mod_theme_install () {


	##
	## ## Create
	##
	## * /usr/share/grub/themes
	## * /usr/share/grub/themes/grub-theme-darkmatter-remix
	##


	install -dm755 "${pkgdir}/usr/share/grub/themes"

	cp -rf "${srcdir}/overlay/usr/share/grub/themes/." "${pkgdir}/usr/share/grub/themes"

	return 0

}

##
### Tail: Model / Theme
################################################################################
