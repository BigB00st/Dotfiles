# ~/.profile: executed by the command interpreter for login shells.

export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="chrome"
export PAGER="less"
export FILE="ranger"
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

[ -f ~/.bashrc ] && source "$HOME/.bashrc"
[ -f ~/.config/.file_env ] && source "$HOME/.config/.file_env"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
