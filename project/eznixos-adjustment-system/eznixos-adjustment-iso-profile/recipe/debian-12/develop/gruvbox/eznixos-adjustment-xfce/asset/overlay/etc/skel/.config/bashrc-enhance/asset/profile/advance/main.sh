

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
### Head: pre
##

##
## Load: ~/.config/bashrc-enhance/asset/port/asset/component/pre.sh
##

[ -f "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/component/pre.sh" ] && . "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/component/pre.sh"


##
### Tail: pre
################################################################################


################################################################################
### Head: part
##

##
## Load: ~/.config/bashrc-enhance/asset/port/asset/component/part.sh
##

[ -f "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/component/part.sh" ] && . "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/component/part.sh"


##
### Tail: part
################################################################################


################################################################################
### Head: post
##

##
## Load: ~/.config/bashrc-enhance/asset/port/asset/component/post.sh
##

[ -f "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/component/post.sh" ] && . "${__BASHRC_ENHANCE_DIR_PATH__}/asset/port/asset/component/post.sh"


##
### Tail: post
################################################################################
