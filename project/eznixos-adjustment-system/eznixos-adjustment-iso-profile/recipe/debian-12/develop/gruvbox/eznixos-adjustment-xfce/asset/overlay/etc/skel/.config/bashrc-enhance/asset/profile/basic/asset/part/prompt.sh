

################################################################################
##
## ~/.config/bashrc-enhance/asset/port/asset/part/prompt.sh
##
################################################################################




################################################################################
### Head: Prompt
##


##
## * https://github.com/Bash-it/bash-it
## * https://github.com/Bash-it/bash-it/blob/master/themes/nwinkler/nwinkler.theme.bash
## * https://github.com/Bash-it/bash-it/blob/master/lib/colors.bash
## * https://starship.rs/config/#example
##


##
## Util
##

__prompt_set__ () {

	# Save history
	history -a
	history -c
	history -r


	local first_line_start_sign="┌─────"
	local second_line_start_sign="│"
	local last_line_start_sign="│"


	##
	## ┌─────
	## │ user@host [21:47:39] (~)
	## │
	##

	PS1="${__THE_COLOR_GREEN__}${first_line_start_sign}${__THE_COLOR_RESET_COLOR__}\n${__THE_COLOR_GREEN__}${second_line_start_sign}${__THE_COLOR_RESET_COLOR__} ${__THE_COLOR_GREEN__}\u${__THE_COLOR_RESET_COLOR__}@${__THE_COLOR_RED__}\H${__THE_COLOR_RESET_COLOR__} [${__THE_COLOR_BLUE__}\t${__THE_COLOR_RESET_COLOR__}] (${__THE_COLOR_GREEN__}\w${__THE_COLOR_RESET_COLOR__}) ${__THE_COLOR_RESET_COLOR__}\n${__THE_COLOR_GREEN__}${last_line_start_sign}${__THE_COLOR_RESET_COLOR__} "
	PS2='> '
	PS4='+ '


}




##
## Prompt Set
##

__prompt_set__




##
## Unload Function
##

unset -f __prompt_set__


##
### Tail: Prompt
################################################################################
