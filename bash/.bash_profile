# PS1
## Basic prompt colors.
yello=$(tput setaf 11)
maroon=$(tput setaf 9)
green=$(tput setaf 82)

export PS1="\[\e[$yello\]\t\[\e[m\] \[\e[$maroon\]\W\[\e[m\] > "
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# To silence warning about not using zshell
export BASH_SILENCE_DEPRECATION_WARNING=1

# Java aliases
alias j20="export JAVA_HOME=$(/usr/libexec/java_home -v 20); java -version"
alias j19="export JAVA_HOME=$(/usr/libexec/java_home -v 19); java -version"
alias j18="export JAVA_HOME=$(/usr/libexec/java_home -v 18); java -version"
alias j17="export JAVA_HOME=$(/usr/libexec/java_home -v 17); java -version"
alias j16="export JAVA_HOME=$(/usr/libexec/java_home -v 16); java -version"
alias j15="export JAVA_HOME=$(/usr/libexec/java_home -v 15); java -version"
alias j14="export JAVA_HOME=$(/usr/libexec/java_home -v 14); java -version"
alias j13="export JAVA_HOME=$(/usr/libexec/java_home -v 13); java -version"
alias j12="export JAVA_HOME=$(/usr/libexec/java_home -v 12); java -version"
alias j11="export JAVA_HOME=$(/usr/libexec/java_home -v 11); java -version"
alias j10="export JAVA_HOME=$(/usr/libexec/java_home -v 10); java -version"
alias j9="export JAVA_HOME=$(/usr/libexec/java_home -v 9); java -version"
alias j8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8); java -version"
alias j7="export JAVA_HOME=$(/usr/libexec/java_home -v 1.7); java -version"

# Vim
alias vim="nvim"

# Evals
eval $(/opt/homebrew/bin/brew shellenv)

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source "$HOME/.bash-git-prompt/gitprompt.sh"
fi

# Run tmux at start
if [[ -z "$TMUX" ]]; then
    if tmux has-session 2>/dev/null; then
        exec tmux attach
    else
        exec tmux
    fi
fi

alias ls='ls -F -G'
alias la='ls -A'
alias l='ls -C'
alias ll='ls -lah'
