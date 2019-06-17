# ~/.profile: executed by the command interpreter for login shells.

export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="chrome"
export PAGER="less"
export FM="ranger"

# Parameters for less: F - quit if not full screen, R - display colors, X - disable termcap
#export LESS="-XR"

# Add the scripts folder to the path
#export PATH=$HOME/.scripts:$PATH

[ -f ~/.bashrc ] && source "$HOME/.bashrc"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
