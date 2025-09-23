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

export HISTSIZE=20000

alias ideas="vim ~/.ideas.md"

export EDITOR=nvim
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

alias bex='bundle exec'

if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
  # # append completions to fpath
  fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
  # initialise completions with ZSH's compinit
  autoload -Uz compinit && compinit

  . "$(brew --prefix)/share/zsh/site-functions"

  export PATH="/usr/local/sbin:$PATH"
  export HOMEBREW_NO_AUTO_UPDATE=1
  export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin/:$PATH"
  # source $HOME/.docker/init-zsh.sh || true # Added by Docker Desktop
  export PATH="$(brew --prefix sqlite)/bin:$PATH"
fi

. ~/.asdf/plugins/java/set-java-home.zsh



# Created by `pipx` on 2025-06-03 08:23:01
export PATH="$PATH:$HOME/.local/bin"

# Worktree functions
fpath=(~/.zsh/func $fpath)
autoload -Uz worktree_create worktree_cleanup worktree_list

# Worktree aliases
alias wt='worktree_create'
alias wtc='worktree_cleanup'
alias wtl='worktree_list'
