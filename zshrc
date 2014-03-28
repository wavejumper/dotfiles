ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lambda"
plugins=(git git-flow github redis-cli rsync tmux coffee vi-mode node npm archlinux ruby lein vagrant)

source $ZSH/oh-my-zsh.sh

bindkey -v
bindkey ^R history-incremental-search-backward
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

source ~/.nvm/nvm.sh
source /etc/profile

export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:$HOME/bin:$HOME/.gem/ruby/2.1.0/bin"
export EDITOR=vim
export BROWSER=firefox

alias mpd='mpd ~/.mpd.conf & mpdscribble'
alias vim='nocorrect vim'
alias ssh='nocorrect ssh'
alias ncmpcpp='nocorrect ncmpcpp'
alias sudo='nocorrect sudo'
alias ranger.desktop='urxvt -e ranger'
alias android_mount='jmtpfs ~/mtp'
alias android_umount='fusermount -u ~/mtp'
alias startx='ssh-agent startx'
alias add_keys='ssh-add ~/.ssh/github ; ssh-add ~/.ssh/bitbucket ; ssh-add ~/.ssh/pi ; ssh-add ~/.ssh/maestro '
alias tunnel='ssh -D 8080 -f -C -q -N wavejumper@crux.whatbox.ca'
alias chromium='chromium-dev -Denable_hidpi=1 -Duse_aura=1'

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

xrdb ~/.Xresources
nvm use default
