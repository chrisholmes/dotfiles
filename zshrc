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
# bindkey -e

alias gs='git status'
alias gci='git commit'
alias grb='git rebase'
alias gco='git checkout'
alias gl='git l'
alias m='git checkout master'

alias vim='nvim'
alias vi='vim'

export DISPLAY=:0

bindkey -v
export KEYTIMEOUT=1

if [[ “$OSTYPE” == “darwin”* ]]; then
  . /usr/local/opt/asdf/asdf.sh
  . /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

  export PATH=“/usr/local/sbin:$PATH”
  export HOMEBREW_NO_AUTO_UPDATE=1
  export PROJECTS_HOME=${HOME}/projects
  export PATH=“/usr/local/opt/coreutils/libexec/gnubin/:$PATH”
  export PATH=“$(brew —prefix qt@5.5)/bin:$PATH”
  export PROJECTS_HOME=${HOME}/projects

  # Wasmer
  export WASMER_DIR=“/Users/christopher.holmes/.wasmer”
  [ -s “$WASMER_DIR/wasmer.sh” ] && source “$WASMER_DIR/wasmer.sh”      
fi

alias bex='bundle exec'
