# ~/.profile: executed by the command interpreter for login shells.

export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="chrome"
export PAGER="less"
export FM="qtfm"

[ -f ~/.bashrc ] && source "$HOME/.bashrc"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
