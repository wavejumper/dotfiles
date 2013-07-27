#oh my zsh :0
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lambda"
plugins=(git git-flow github redis-cli rsync tmux coffee vi-mode node npm archlinux ruby lein)

#source
source $ZSH/oh-my-zsh.sh
source /etc/profile.d/clojure.sh

#export
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/home/$USER/bin/bin:/$HOME/adt-bundle-linux-x86_64/sdk/platform-tools:$HOME/adt-bundle-linux-x86_64/sdk/tools:$HOME/.gem/ruby/1.9.1/bin
export LANG=en_US.utf-8
export EDITOR=vim

#bind
#bindkey "^[[7~" beginning-of-line
#bindkey "^[[8~" end-of-line
bindkey -v
bindkey ^R history-incremental-search-backward
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

#alias
alias vim='nocorrect vim'
alias ssh='nocorrect ssh'
alias ncmpcpp='nocorrect ncmpcpp'
alias sudo='nocorrect sudo'
alias ranger.desktop='urxvt -e ranger'
alias mount_pi="mount -t nfs -o nolock 192.168.0.16:/drive ~/pi"

