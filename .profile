# ~/.profile: executed by the command interpreter for login shells.

export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="chrome"
export PAGER="less"
export FILE="ranger"
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GEMBIN=$HOME/.gem/ruby/2.7.0/bin
export PATH=$PATH:$GOBIN:$GEMBIN
export SCREENSHOT="flameshot gui"

[ -f ~/.bashrc ] && source "$HOME/.bashrc"
[ -f ~/.config/.file_env ] && source "$HOME/.config/.file_env"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
