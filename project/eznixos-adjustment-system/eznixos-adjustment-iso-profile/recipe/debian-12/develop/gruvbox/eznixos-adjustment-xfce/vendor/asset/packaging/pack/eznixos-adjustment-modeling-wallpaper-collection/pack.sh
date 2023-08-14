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
### Head: Path
##

THE_PLAN_DIR_PATH="${THE_BASE_DIR_PATH}"
tmpdir="${THE_PLAN_DIR_PATH}/tmp"
srcdir="${tmpdir}/src"
debdir="${tmpdir}/deb"
packscript="${THE_PLAN_DIR_PATH}/pack.deb.sh"

##
### Tail: Path
################################################################################


################################################################################
### Head: Load pack.deb.sh
##

. "${packscript}"

##
### Tail: Load pack.deb.sh
################################################################################


################################################################################
### Head: Path
##

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
### Head: Main
##
__main__ () {

	mod_package_build

}

__main__
##
### Tail: Main
################################################################################
