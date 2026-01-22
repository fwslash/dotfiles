# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH config
ZSH_THEME="parrot"
plugins=(git)

## Configure zsh-vi-mode keybindings (must be before sourcing oh-my-zsh)
#function zvm_after_init() {
#  # Bind ESC+. to insert last word from previous command
#  # First unbind it in case there's a conflict
#  bindkey -M viins -r '\e.'
#  bindkey -M vicmd -r '\e.'
#
#  # Now bind to insert-last-word
#  bindkey -M viins '\e.' insert-last-word
#  bindkey -M vicmd '\e.' insert-last-word
#
#  # Also bind ALT+. as an alternative (in case ESC is being intercepted)
#  bindkey -M viins '^[.' insert-last-word
#}

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

export PGGSSENCMODE=disable
