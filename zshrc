# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=~/.zsh-custom/plugins
ZSH_THEME=""

plugins=(git rails3 brew gem osx ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source ~/.localrc

# My theme
source ~/.zsh-custom/themes/keper.zsh-theme

# cd
alias ..='cd ..'
alias ...='cd ../..'

# git
alias gP='git push origin $(current_branch)'
alias gsmu="git submodule update --init"

# rails
alias rst='touch tmp/restart.txt'

# commands starting with % for pasting from web
alias %=' '

# misc
alias reload='source ~/.zshrc'
alias vim='mvim -v'

# osx
alias showhidden="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
