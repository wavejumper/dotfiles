#oh my zsh :0
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="simple"
plugins=(git coffee node npm archlinux ruby)

#source
source $ZSH/oh-my-zsh.sh
source /etc/profile.d/clojure.sh

#export
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/home/$USER/bin/bin:/$HOME/adt-bundle-linux-x86_64/sdk/platform-tools:$HOME/adt-bundle-linux-x86_64/sdk/tools:$HOME/.gem/ruby/1.9.1/bin
export LANG=en_US.utf-8

#bind
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line

#alias
alias vim='nocorrect vim'
alias ssh='nocorrect ssh'
alias ncmpcpp='nocorrect ncmpcpp'
alias sudo='nocorrect sudo'
alias ranger.desktop='urxvt -e ranger'
