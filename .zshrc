ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lambda"
plugins=(git git-flow github redis-cli rsync tmux coffee vi-mode node npm archlinux ruby lein)

source $ZSH/oh-my-zsh.sh
source ~/.nvm/nvm.sh
source /etc/profile

export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:$HOME/bin"
export EDITOR=vim

bindkey -v
bindkey ^R history-incremental-search-backward
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

alias vim='nocorrect vim'
alias ssh='nocorrect ssh'
alias ncmpcpp='nocorrect ncmpcpp'
alias sudo='nocorrect sudo'
alias ranger.desktop='urxvt -e ranger'

xrdb ~/.Xresources
