# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=""

plugins=(git rails3 brew gem osx ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source ~/.localrc

# My theme
source ~/.zsh-custom/themes/keper.zsh-theme

# cd
alias ..='cd ..'

# ls
alias ls="ls -FG"
alias l="ls -lAh"
alias ll="ls -l"
alias la='ls -A'

# git
alias branch="git branch 2>/dev/null | grep '*' | sed 's/\* //'"
alias gl='git pull'
alias gp='git push'
alias gP='git push origin `branch`'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gsmu="git submodule update --init"

# rails
alias sc='script/console'
alias ss='script/server'
alias sg='script/generate'
alias tlog='tail -f log/development.log'
alias rst='touch tmp/restart.txt'

# commands starting with % for pasting from web
alias %=' '

# misc
alias reload='source ~/.zshrc'
alias vim='mvim -v'

# osx
alias showhidden="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
