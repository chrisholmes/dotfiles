#!/bin/zsh -i
autoload -U compinit
compinit
autoload bashcompinit
bashcompinit

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

alias ideas="vim ~/.ideas.md"

export EDITOR=vim
bindkey -e

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home/"

alias gs='git status'
alias gci='git commit'
alias grb='git rebase'
alias gco='git checkout'
alias gl='git l'

alias vi='vim'
cdpath=(~ ~/ida)

export DISPLAY=:0
eval "$(rbenv init -)"
