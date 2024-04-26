# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH config
ZSH_THEME="parrot"
plugins=(git zsh-vi-mode)
source $ZSH/oh-my-zsh.sh

# aliases
alias vim="nvim"

# GO
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin

# BREW
if [[ -x "$(command -v brew)" ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
fi

bindkey -M viins '\e.' insert-last-word

