#!/usr/bin/env bash


################################################################################
### Head: Init
##
set -e ## for Exit immediately if a command exits with a non-zero status.
THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_CMD_FILE_NAME="$(basename "$0")"
##
### Tail: Init
################################################################################


################################################################################
### Head: Attribute
##

name="eznixos-adjustment-modeling-wallpaper-collection"
gives="${name}"

##
### Tail: Attribute
################################################################################


################################################################################
### Head: Path
##

THE_PLAN_DIR_PATH="${THE_BASE_DIR_PATH}"
tmpdir="${THE_PLAN_DIR_PATH}/tmp"
srcdir="${tmpdir}/src"
debdir="${tmpdir}/deb"
pkgname="${gives}"
pkgdir="${debdir}/${pkgname}"

##
### Tail: Path
################################################################################


################################################################################
### Head: Util / Debug
##

util_error_echo () {
	echo "$@" 1>&2
}

##
### Head: Util / Debug
################################################################################


################################################################################
### Head: Util / Command
##

is_function_exist () {
	if type -p "$1" > /dev/null; then
		return 0
	else
		return 1
	fi
}

##
### Tail: Util / Command
################################################################################


################################################################################
### Head: Skel / Build Package
##

mod_package_make_prepare () {

	util_error_echo
	util_error_echo "## mod_package_build_prepare"
	util_error_echo

	util_error_echo "mkdir -p ${srcdir}"
	mkdir -p "${srcdir}"

	util_error_echo "mkdir -p ${pkgdir}"
	mkdir -p "${pkgdir}"

	return 0
}


mod_package_make_deb () {

	util_error_echo
	util_error_echo "## mod_package_make_deb"
	util_error_echo

	local debian_dir_path="${pkgdir}/DEBIAN"

	mkdir -p "${debian_dir_path}"

cat > "${debian_dir_path}/control" << EOF
Package: ${pkgname}
Version: 0.1.0
Architecture: all
Description: This is a personal package which build from eznixos-adjustment.
Maintainer: developer <developer@home.work>

EOF


	##
	## start build deb
	##

	cd "${debdir}"

	dpkg -b "${pkgname}"

	cd "${OLDPWD}"


	return 0
}


mod_package_build () {

	mod_package_make_prepare

	is_function_exist "prepare" && prepare
	is_function_exist "build" && build
	is_function_exist "build" && package

	mod_package_make_deb

	return 0
}

##
### Tail: Skel / Build Package
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
	## Main Config
	##

	##cp -rf "${srcdir}/overlay/." "${pkgdir}"


	##
	## /etc/skel/Pictures/Wallpaper
	##

	#return 0

	mod_wallpaper_asset_install_wallpaper_download_asset

	mod_wallpaper_asset_install_wallpaper_copy_from_asset



	return 0
}

##
### Tail: Model / Build Package
################################################################################




################################################################################
### Head: Model / Wallpaper
##

mod_wallpaper_asset_install_wallpaper_default () {

	if ! [ -a "default.jpg" ]; then
		if [ -f "fantasy_art.jpg" ]; then
			echo "cp -f fantasy_art.jpg default.jpg"
			cp -f "fantasy_art.jpg" "default.jpg"
		fi
	fi


	if ! [ -a "default-login.jpg" ]; then
		if [ -f "alfred-kenneally-k_MglpZKg3s-unsplash.medium.jpg" ]; then
			echo "cp -f alfred-kenneally-k_MglpZKg3s-unsplash.medium.jpg default-login.jpg"
			cp -f "alfred-kenneally-k_MglpZKg3s-unsplash.medium.jpg" "default-login.jpg"
		fi
	fi

	if ! [ -a "default-grub.jpg" ]; then
		if [ -f "iron_man.jpg" ]; then
			echo "cp -f iron_man.jpg default-grub.jpg"
			cp -f "iron_man.jpg" "default-grub.jpg"
		fi
	fi

}


mod_wallpaper_asset_install_wallpaper_copy_from_asset () {

	##
	## /usr/share/backgrounds/ezarcher-adjustment
	##

	install -dm755 "${pkgdir}/usr/share/backgrounds/ezarcher-adjustment"


	cp -rf "${pkgdir}/etc/skel/Pictures/Wallpaper/." "${pkgdir}/usr/share/backgrounds/ezarcher-adjustment/"

}


mod_wallpaper_asset_install_wallpaper_download_asset () {

	##
	## /etc/skel/Pictures/Wallpaper
	##

	install -dm755 "${pkgdir}/etc/skel/Pictures/Wallpaper"

	cd "${pkgdir}/etc/skel/Pictures/Wallpaper"

	mod_wallpaper_asset_install_wallpaper_download_each

	mod_wallpaper_asset_install_wallpaper_default

	cd "${OLDPWD}"

}

mod_wallpaper_asset_install_wallpaper_download_each () {

	mod_wallpaper_asset_install_wallpaper_download_the_fantasy_art

	mod_wallpaper_asset_install_wallpaper_download_the_iron_man

	mod_wallpaper_asset_install_wallpaper_download_the_night_city_art

	mod_wallpaper_asset_install_wallpaper_download_the_k_MglpZKg3s

	mod_wallpaper_asset_install_wallpaper_download_the_z-w-gu-bandageb5f

	mod_wallpaper_asset_install_wallpaper_download_the_Qu_Que_Ling

	mod_wallpaper_asset_install_wallpaper_download_the_Fareeha_Amari

	mod_wallpaper_asset_install_wallpaper_download_the_Amiya

	mod_wallpaper_asset_install_wallpaper_download_the_Xero_Plasma6

}


mod_wallpaper_asset_install_wallpaper_download_the_fantasy_art () {

	##
	## * [fantasy art](https://wallhaven.cc/tag/853)
	## * https://wallhaven.cc/w/9m2y3x
	##

	wget -c 'https://w.wallhaven.cc/full/9m/wallhaven-9m2y3x.jpg' -O 'fantasy_art.jpg'

}


mod_wallpaper_asset_install_wallpaper_download_the_iron_man () {

	##
	## * [iron man](https://www.reddit.com/r/wallpaper/comments/olengo/3840x2160_iron_man/)
	##

	wget -c 'https://i.redd.it/1ai3l6g54kb71.jpg' -O 'iron_man.jpg'

}


mod_wallpaper_asset_install_wallpaper_download_the_night_city_art () {

	##
	## * [night_city_art](https://www.reddit.com/r/wallpaper/comments/odrqc9/night_city_art_5120x2880/)
	##

	wget -c 'https://i.redd.it/4e13bjpl39971.png' -O 'night_city_art.png'

}


mod_wallpaper_asset_install_wallpaper_download_the_k_MglpZKg3s () {

	##
	## * https://unsplash.com/@alken
	## * https://unsplash.com/photos/k_MglpZKg3s
	##

	## Original Size (6000x400)
	wget -c 'https://images.unsplash.com/photo-1581006198514-bf6def95c31e?ixlib=rb-1.2.1&dl=alfred-kenneally-k_MglpZKg3s-unsplash.jpg&q=80&fm=jpg&crop=entropy&cs=tinysrgb' -O 'alfred-kenneally-k_MglpZKg3s-unsplash.original.jpg'

	## Large (2400x1600)
	wget -c 'https://images.unsplash.com/photo-1581006198514-bf6def95c31e?ixlib=rb-1.2.1&dl=alfred-kenneally-k_MglpZKg3s-unsplash.jpg&w=2400&q=80&fm=jpg&crop=entropy&cs=tinysrgb' -O 'alfred-kenneally-k_MglpZKg3s-unsplash.large.jpg'

	## Medium (1920x1280)
	wget -c 'https://images.unsplash.com/photo-1581006198514-bf6def95c31e?ixlib=rb-1.2.1&dl=alfred-kenneally-k_MglpZKg3s-unsplash.jpg&w=1920&q=80&fm=jpg&crop=entropy&cs=tinysrgb' -O 'alfred-kenneally-k_MglpZKg3s-unsplash.medium.jpg'


}


mod_wallpaper_asset_install_wallpaper_download_the_z-w-gu-bandageb5f () {

	##
	## * https://guweiz.artstation.com/
	## * https://www.artstation.com/guweiz
	## * https://www.artstation.com/artwork/R33KGX
	##


	wget -c 'https://cdna.artstation.com/p/assets/images/images/028/138/058/large/z-w-gu-bandageb5f.jpg?1593594749&dl=1' -O 'z-w-gu-bandageb5f.jpg'


}

mod_wallpaper_asset_install_wallpaper_download_the_Fareeha_Amari () {


	##
	## Fareeha Amari (overwatch)
	## https://www.artstation.com/artwork/rge66

	wget -c 'https://cdna.artstation.com/p/assets/images/images/011/333/238/large/chen-wang-psb.jpg?1529049321&dl=1' -O 'fareeha-amari.jpg'


	##
	## * https://www.reddit.com/r/unixporn/comments/nvr4eo/awesomewm_new_80s_onedark_theme_new_awpanel_etc/
	## * https://hdqwalls.com/beautiful-biker-anime-girl-5k-wallpaper
	##
	wget -c 'https://images.hdqwalls.com/wallpapers/beautiful-biker-anime-girl-5k-3y.jpg'  -O 'fareeha-amari.5k-3y.jpg'
	wget -c 'https://images.hdqwalls.com/download/beautiful-biker-anime-girl-5k-3y-1366x768.jpg' -O 'fareeha-amari.5k-3y-1366x768.jpg'


	##
	## * https://anime.goodfon.com/art-anime/wallpaper-chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am.html
	##

	## Orginal Size
	## * https://anime.goodfon.com/download/chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am/2100x1340/
	#wget -c 'https://anime.goodfon.com/download/chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am/2100x1340/' -O 'fareeha-amari.2100x1340.jpg'
	#wget -c 'https://img5.goodfon.com/original/2100x1340/2/27/chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am.jpg?d=1' -O 'fareeha-amari.2100x1340.jpg'

	## * https://anime.goodfon.com/download/chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am/1366x768/
	#wget -c 'https://img5.goodfon.com/original/1366x768/2/27/chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am.jpg' -O 'fareeha-amari.1366x768.jpg'



}


mod_wallpaper_asset_install_wallpaper_download_the_Qu_Que_Ling () {

	##
	## 曲·雀翎 (Qu Que Ling)
	## * https://grayraven.tw/info/list_353_1.html
	##

	wget -c 'http://cdnimg01.yingxiong.com/M00/1A/10/ChpCl2CZD0SECU6sAAAAAIlzqu8408.jpg' -O 'Qu_Que_Ling.jpg'

}


mod_wallpaper_asset_install_wallpaper_download_the_Amiya () {

	##
	## 明日方舟 黎明前奏 / 阿米婭 (Amiya)
	## * https://ak.hypergryph.com/anime/
	##

	wget -c 'https://web.hycdn.cn/arknights/anime/official/assets/img/KV.a8b13e.jpg' -O 'Amiya.jpg'

}


mod_wallpaper_asset_install_wallpaper_download_the_Xero_Plasma6 () {

	##
	## Xero-Plasma6
	## * https://github.com/xerolinux/kde-wallpapers/blob/main/usr/share/wallpapers/Xero-Plasma6.jpg
	##

	wget -c 'https://raw.githubusercontent.com/xerolinux/kde-wallpapers/main/usr/share/wallpapers/Xero-Plasma6.jpg' -O 'Xero-Plasma6.jpg'

}

##
### Tail: Model / Wallpaper
################################################################################




################################################################################
### Head: Main
##
__main__ () {

	mod_package_build

}

__main__
##
### Tail: Main
################################################################################
