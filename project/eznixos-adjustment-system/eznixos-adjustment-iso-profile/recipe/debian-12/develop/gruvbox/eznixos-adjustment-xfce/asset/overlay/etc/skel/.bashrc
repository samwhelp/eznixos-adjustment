

################################################################################
##
## ~/.bashrc
##
################################################################################




################################################################################
### Head: note
##

##
## ~/.bashrc: executed by bash(1) for non-login shells.
## see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
## for examples
##

##
### Tail: note
################################################################################




################################################################################
### Head: check mode
##

##
## If not running interactively, don't do anything
##

case $- in
	*i*) ;;
	*) return;;
esac

##
### Tail: check mode
################################################################################




################################################################################
### Head: ignoreeof
##

##
## * Search: [bash ctrl d](https://www.google.com/search?q=bash+ctrl+d)
## * https://www.gnu.org/software/bash/manual/bash.html#index-end_002dof_002dfile-_0028usually-C_002dd_0029
## * https://www.gnu.org/software/bash/manual/bash.html#index-IGNOREEOF
##

## disable `ctrl + d` to exit
set -o ignoreeof


##
### Tail: ignoreeof
################################################################################




################################################################################
### Head: debian bashrc
##

##
## Load: ~/.bashrc.debian.bash
##

[ -f ~/.bashrc.debian.bash ] && . ~/.bashrc.debian.bash


##
### Tail: debian bashrc
################################################################################





################################################################################
### Head: alias
##


alias ls='ls --color=auto'


##
### Tail: alias
################################################################################


################################################################################
### Head: prompt
##


#PS1='[\u@\h \W]\$ '

#PS1='\u@\H [\t] (\w) \n $ '

#PS1='\n\u@\H [\t] (\w) \n $ '


#PS1='┌───────────────────>\n│ \u@\H [\t] (\w)\n└─> '

#PS1='┌─────\n│ \u@\H [\t] (\w)\n└───── '

#PS1='│\n│ \u@\H [\t] (\w)\n│ '

#PS1='┌────────────────────\n│ \u@\H [\t] (\w)\n│ '

PS1='┌─────\n│ \u@\H [\t] (\w)\n│ '


##
### Tail: prompt
################################################################################


################################################################################
### Head: bashrc-enhance
##

##
## Load: ~/.config/bashrc-enhance/port/main.sh
##

__BASHRC_ENHANCE_DIR_PATH__="${HOME}/.config/bashrc-enhance"

[ -f "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/main.sh" ] && . "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/main.sh"

##
### Tail: bashrc-enhance
################################################################################
