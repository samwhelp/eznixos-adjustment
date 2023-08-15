

################################################################################
### Head: Attribute
##

name="eznixos-adjustment-appearance-xfwm-theme-marwaita-all"
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
	## * [Marwaita](https://www.gnome-look.org/p/1239855/)
	## * [Marwaita for Xfwm](https://www.xfce-look.org/p/1877124/)
	## * Gitlab / [marwaita-for-xfwm](https://gitlab.com/wednesbunny/marwaita-for-xfwm)
	## * Gitlab / marwaita-for-xfwm / [themes](https://gitlab.com/wednesbunny/marwaita-for-xfwm/-/tree/main/themes?ref_type=heads)
	##


	install -dm755 "${srcdir}/overlay/usr/share/themes"

	cd "${srcdir}"

	wget -c "https://gitlab.com/wednesbunny/marwaita-for-xfwm/-/archive/main/marwaita-for-xfwm-main.tar.gz" -O "marwaita-for-xfwm-main.tar.gz"

	tar xf marwaita-for-xfwm-main.tar.gz

	cp -rf "${srcdir}/marwaita-for-xfwm-main/themes/." "${srcdir}/overlay/usr/share/themes"

	cd "${OLDPWD}"

}

mod_theme_install () {


	##
	## ## Create
	##
	## * /usr/share/themes
	## * /usr/share/themes/Marwaita-Xfwm
	## * /usr/share/themes/Marwaita-Xfwm-Alt
	## * /usr/share/themes/Marwaita-Xfwm-Color-Dark-Text
	## * /usr/share/themes/Marwaita-Xfwm-Color-Light-Text
	## * /usr/share/themes/Marwaita-Xfwm-Dark
	##




	install -dm755 "${pkgdir}/usr/share/themes"

	cp -rf "${srcdir}/overlay/usr/share/themes/." "${pkgdir}/usr/share/themes"

	return 0

}

##
### Tail: Model / Theme
################################################################################
