#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# ignore duplicate commands in bash_history
export HISTCONTROL=ignoredups

# source files
[ -f "$HOME/.config/.aliasrc" ] && source "$HOME/.config/.aliasrc"
