

mod_copy_deb_to_package () {

	mkdir -p "${packagedir}"

	cp -rf "${debdir}"/*.deb "${packagedir}"

}


mod_copy_deb_to_package
