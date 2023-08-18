

################################################################################
##
## ~/.config/bashrc-enhance/asset/port/asset/component/part.sh
##
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
