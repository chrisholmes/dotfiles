#!/bin/zsh -i
autoload -U compinit
compinit

# correction
setopt correctall

# prompt
autoload -U promptinit
promptinit
alias ll="ls -lG"
alias ls="ls -G"

export HISTSIZE=2000
export TERM=screen-256color

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
alias chruby-reload="source /usr/local/opt/chruby/share/chruby/chruby.sh" 

alias ideas="vim ~/.ideas.md"

setopt promptsubst
autoload -Uz promptinit
promptinit
prompt grb
