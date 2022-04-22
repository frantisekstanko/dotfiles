export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git tmux fzf timer zsh-interactive-cd)

if [[ -n "$DISPLAY" && -z "$ZSH_TMUX_AUTOSTART" ]]; then
   ZSH_TMUX_AUTOSTART=true
fi

# ZSH_TMUX_AUTOQUIT=false

ZSH_TMUX_CONFIG=~/.config/tmux/tmux.conf

DISABLE_AUTO_UPDATE=false

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias i3config='nvim ~/.config/i3/config'
alias x='startx'
