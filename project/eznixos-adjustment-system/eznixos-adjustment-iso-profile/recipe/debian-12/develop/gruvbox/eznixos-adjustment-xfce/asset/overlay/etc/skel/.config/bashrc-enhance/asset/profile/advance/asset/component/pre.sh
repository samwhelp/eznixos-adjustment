

################################################################################
##
## ~/.config/bashrc-enhance/asset/port/asset/component/pre.sh
##
################################################################################




################################################################################
### Head: pre
##

##
## Define Function: __load__pre__
##

__load__pre__ () {

	local pre_dir_path="${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/pre"

	local script_file_path


	for script_file_path in "${pre_dir_path}"/*.sh; do

		##
		## check file not exist for empty dir
		##

		##[ ! -e ${script_file_path} ] && continue;

		if [ ! -e ${script_file_path} ]; then
			continue
		fi


		##
		## load: ~/.config/bashrc-enhance/asset/port/asset/pre/*.sh
		##

		. "${script_file_path}"


	done


}


##
## Run Function: __load__pre__
##

__load__pre__


##
## Unload Function: __load__pre__
##

unset -f __load__pre__


##
### Tail: pre
################################################################################
