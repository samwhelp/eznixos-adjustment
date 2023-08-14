

mod_copy_deb_to_repository () {

	local repository_dir_path="${packscriptdir}/../../../overlay/opt/vendor/deb"

	##ls "${repository_dir_path}"

	if ! [ -d "${repository_dir_path}" ]; then
		return
	fi

	cp -a "${debdir}"/*.deb "${repository_dir_path}/"

}


mod_copy_deb_to_repository
