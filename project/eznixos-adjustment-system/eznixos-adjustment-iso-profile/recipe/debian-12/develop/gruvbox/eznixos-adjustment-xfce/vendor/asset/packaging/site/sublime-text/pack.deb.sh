

################################################################################
### Head: Attribute
##

name="sublime-text"
gives="${name}"
pkgver="4152"
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

	mod_sublime_text_download

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

	cp -rf "${srcdir}"/*.deb "${debdir}"

	return 0
}

##
### Tail: Model / Build Package
################################################################################




################################################################################
### Head: Model / sublime-text
##

mod_sublime_text_download () {

	##
	## ## Link
	##
	## * https://pacstall.dev/packages/sublime-text-deb
	## * https://github.com/pacstall/pacstall-programs/blob/master/packages/sublime-text-deb/sublime-text-deb.pacscript
	##

	local deb_file_name="${name}_build-${pkgver}_amd64.deb"
	local url="https://download.sublimetext.com/${deb_file_name}"
	local save_file_path="${srcdir}/${deb_file_name}"

	wget -c "$url" -O "${save_file_path}"

}

##
### Tail: Model / sublime-text
################################################################################
