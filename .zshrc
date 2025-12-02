# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH config
ZSH_THEME="parrot"
plugins=(git zsh-vi-mode)

# Configure zsh-vi-mode keybindings (must be before sourcing oh-my-zsh)
function zvm_after_init() {
  # Use copy-earlier-word instead for proper cycling behavior
  autoload -Uz copy-earlier-word
  zle -N copy-earlier-word
  bindkey -M viins '\e.' copy-earlier-word
  bindkey -M vicmd '\e.' copy-earlier-word
}

source $ZSH/oh-my-zsh.sh

# aliases
alias vim=nvim

# BREW
if [[ -x "$(command -v brew)" ]]; then
  export GOROOT="$(brew --prefix golang)/libexec"
  eval $(/opt/homebrew/bin/brew shellenv)
fi
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
