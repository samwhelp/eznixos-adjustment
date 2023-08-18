

################################################################################
##
## ~/.config/bashrc-enhance/asset/port/asset/part/path.sh
##
################################################################################




################################################################################
### Head: Path
##


##
## * https://wiki.archlinux.org/title/environment_variables#Using_shell_initialization_files
##


##
## Util
##

__prepend_path__ () {

	# Check if user id is 1000 or higher
	[ "$(id -u)" -ge 1000 ] || return

	for i in "${@}";
	do
		# Check if the directory exists
		[ -d "${i}" ] || continue

		# Check if it is not already in your $PATH.
		echo "${PATH}" | grep -Eq "(^|:)${i}(:|$)" && continue

		# Then append it to $PATH and export it
		#export PATH="${PATH}:${i}"

		# Then prepend it to $PATH and export it
		export PATH="${i}:${PATH}"

	done
}




##
## Prepend PATH
##

#__prepend_path__ ~/.config/bashrc-enhance/tool/bin/ ~/.config/bashrc-enhance/asset/port/tool/bin

__prepend_path__ \
	"${__BASHRC_ENHANCE_DIR_PATH__}/tool/bin" \
	"${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/tool/bin"




##
## Unload Function
##
unset -f __prepend_path__


##
### Tail: Path
################################################################################
