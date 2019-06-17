#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# source files
[ -f "$HOME/.config/.aliasrc" ] && source "$HOME/.config/.aliasrc"
