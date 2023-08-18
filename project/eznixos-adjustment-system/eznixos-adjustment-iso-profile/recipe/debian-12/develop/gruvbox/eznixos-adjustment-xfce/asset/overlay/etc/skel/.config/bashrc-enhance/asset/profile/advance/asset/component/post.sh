

################################################################################
##
## ~/.config/bashrc-enhance/asset/port/asset/component/post.sh
##
################################################################################




################################################################################
### Head: post
##

##
## Define Function: __load__post__
##

__load__post__ () {

	local post_dir_path="${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/post"

	local script_file_path


	for script_file_path in "${post_dir_path}"/*.sh; do

		##
		## check file not exist for empty dir
		##

		##[ ! -e ${script_file_path} ] && continue;

		if [ ! -e ${script_file_path} ]; then
			continue
		fi


		##
		## load: ~/.config/bashrc-enhance/asset/port/asset/post/*.sh
		##

		. "${script_file_path}"


	done


}


##
## Run Function: __load__post__
##

__load__post__


##
## Unload Function: __load__post__
##

unset -f __load__post__


##
### Tail: post
################################################################################
