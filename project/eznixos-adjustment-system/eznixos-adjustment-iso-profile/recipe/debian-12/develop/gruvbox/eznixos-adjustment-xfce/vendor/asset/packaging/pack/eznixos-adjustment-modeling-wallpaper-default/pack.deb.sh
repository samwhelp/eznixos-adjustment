

################################################################################
### Head: Attribute
##

name="eznixos-adjustment-modeling-wallpaper-default"
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

	##
	## ## Link
	##
	## * https://github.com/samwhelp/ezarcher-adjustment/blob/main/project/ezarcher-adjustment-system/ezarcher-adjustment-packaging/pack/core/wallpaper/ezarcher-adjustment-modeling-wallpaper-default/PKGBUILD
	##




	##
	## ## Create
	##
	## * /usr/share/backgrounds/default.jpg
	## * /usr/share/backgrounds/default-login.jpg
	## * /usr/share/backgrounds/default-gurb.jpg
	##


	mod_wallpaper_link_default



	return 0
}

##
### Tail: Model / Build Package
################################################################################




################################################################################
### Head: Model / Wallpaper
##

mod_wallpaper_link_default () {

	mod_wallpaper_link_default_ezarcher_adjustment

	#mod_wallpaper_link_default_xfce

}

mod_wallpaper_link_default_ezarcher_adjustment () {

	install -dm755 "${pkgdir}/usr/share/backgrounds"

	cd "${pkgdir}/usr/share/backgrounds"

	ln -sf eznixos-adjustment/default.jpg default.jpg

	ln -sf eznixos-adjustment/default-login.jpg default-login.jpg

	ln -sf eznixos-adjustment/default-grub.jpg default-grub.jpg

	cd "${OLDPWD}"

}


mod_wallpaper_link_default_xfce () {

	install -dm755 "${pkgdir}/usr/share/backgrounds"

	cd "${pkgdir}/usr/share/backgrounds"

	ln -sf xfce/Butterfly.jpg default.jpg

	ln -sf xfce/Butterfly.jpg default-login.jpg

	ln -sf xfce/Butterfly.jpg default-grub.jpg

	cd "${OLDPWD}"

}

##
### Tail: Model / Wallpaper
################################################################################
