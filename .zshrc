#!/bin/zsh -i
autoload -U compinit
compinit

# correction
setopt correctall

# prompt
setopt promptsubst
autoload -Uz promptinit
promptinit
prompt grb

alias ll="ls -lG"
alias ls="ls -G"

export HISTSIZE=2000
export TERM=screen-256color

alias chruby-reload="source /usr/local/opt/chruby/share/chruby/chruby.sh" 

alias ideas="vim ~/.ideas.md"

export EDITOR=vim
