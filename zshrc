# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=~/.zsh-custom/plugins
ZSH_THEME=""
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git rails4 brew gem osx ruby rvm bundler cap pow powder rake node npm sublime heroku mac)

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
alias gm='git merge --no-ff'

# rails
alias rst='touch tmp/restart.txt'

# commands starting with % for pasting from web
alias %=' '

# misc
alias reload='source ~/.zshrc'
alias vim='mvim -v'
alias e='subl'

# osx
alias showhidden="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
alias updatedb="sudo /usr/libexec/locate.updatedb"

PATH="~/bin:~/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/local/heroku/bin:/usr/local/lib/node_modules/bin:/usr/local/share/npm/bin:/usr/local/sbin:$PATH"
