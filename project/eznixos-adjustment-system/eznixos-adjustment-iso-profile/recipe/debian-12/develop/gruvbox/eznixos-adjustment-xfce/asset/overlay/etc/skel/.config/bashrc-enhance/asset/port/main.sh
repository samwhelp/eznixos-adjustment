

################################################################################
##
## ~/.config/bashrc-enhance/asset/port/main.sh
##
################################################################################




################################################################################
### Head: check mode
##

##
## If not running interactively, don't do anything
##
[[ $- != *i* ]] && return


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
### Head: attribute / path
##

__BASHRC_ENHANCE_DIR_PATH__="${__BASHRC_ENHANCE_DIR_PATH__:=${HOME}/.config/bashrc-enhance}"

##
### Tail: attribute / path
################################################################################


################################################################################
### Head: attribute / color
##

##
## Load ~/.config/bashrc-enhance/asset/port/asset/part/color.sh
##

[ -f "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/part/color.sh" ] && . "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/part/color.sh"


##
### Tail: attribute / color
################################################################################




################################################################################
### Head: path
##

##
## Load ~/.config/bashrc-enhance/asset/port/asset/part/path.sh
##

[ -f "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/part/path.sh" ] && . "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/part/path.sh"


##
### Tail: path
################################################################################


################################################################################
### Head: alias
##


alias ls='ls --color=auto'


##
## Load ~/.config/bashrc-enhance/asset/port/asset/part/alias.sh
##

[ -f "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/part/alias.sh" ] && . "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/part/alias.sh"


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
## Load ~/.config/bashrc-enhance/asset/port/asset/part/prompt
##

[ -f "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/part/prompt.sh" ] && . "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/part/prompt.sh"


##
### Tail: prompt
################################################################################


################################################################################
### Head: bash-it
##

##
## * https://github.com/Bash-it/bash-it
##

##
## Load ~/.config/bashrc-enhance/port/vendor/bash-it.sh
##

[ -f "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/vendor/bash-it.sh" ] && . "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/vendor/bash-it.sh"


##
### Tail: bash-it
################################################################################


################################################################################
### Head: starship
##

##
## * https://starship.rs/
## * https://github.com/starship/starship
##

##
## Load ~/.config/bashrc-enhance/port/vendor/.starship.sh
##

[ -f "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/vendor/starship.sh" ] && . "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/vendor/starship.sh"



##
### Tail: starship
################################################################################


################################################################################
### Head: fzf
##

##
## * https://wiki.archlinux.org/title/fzf
##

##
## Load ~/.config/bashrc-enhance/asset/port/asset/part/fzf.bash
##

[ -f "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/part/fzf.sh" ] && . "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/part/fzf.sh"


##
### Tail: fzf
################################################################################
