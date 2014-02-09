fpath=($fpath $HOME/.zsh/func)
typeset -U fpath

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby 2.1.0
