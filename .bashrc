#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# ignore duplicate commands in bash_history
export HISTCONTROL=ignoredups

# term that enables clear
export TERM=xterm-256color

# source files
[ -f $HOME/.config/.aliasrc ] && source $HOME/.config/.aliasrc
[ -f $HOME/.config/.functionrc ] && source $HOME/.config/.functionrc

# completion
[ -f /usr/share/bash-completion/bash_completion ] && source /usr/share/bash-completion/bash_completion
# restore to default certain commands
for cmd in $(complete | egrep -v '(-d -G)' | awk '{print $(NF)}' | egrep -v '(_minimal)'); do
    compopt -o bashdefault $cmd
done
