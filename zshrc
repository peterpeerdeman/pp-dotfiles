# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="bureau"
#ZSH_THEME="random"
#ZSH_THEME="agnoster"

#git aliases
alias remove-merged-branches='git branch --merged | grep -v "\*" | grep -v master | xargs -n 1 git branch -d'
alias srt='open -a SourceTree $1'
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

#other aliases
alias u='cd ..'
alias la='ls -la'
alias ta='tmux attach'

# online/offline shenanigans
ONLINE='%{%F{green}%}◉'
OFFLINE='%{%F{red}%}⦿'

function prompt_online() {
  if [[ -f ~/.offline ]]; then
    echo $OFFLINE
  else
    echo $ONLINE
  fi
}
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gitfast zsh-syntax-highlighting fancy-ctrl-z)

source $ZSH/oh-my-zsh.sh
source ~/ansible/hacking/env-setup -q

# include private variables if they exist
if [[ -f private_variables.sh && -r private_variables.sh ]]; then
    source private_variables.sh
fi

skip_global_compinit=1

# Customize to your needs...
#PROMPT='$(prompt_online)» '

# z folder indexing
. ~/pp-dotfiles/shellscripts/z.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export ANSIBLE_HOSTS="~/ansible_hosts"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

PATH="/usr/local/bin:$PATH"

# node stuff
export NODE_PATH=/opt/lib/node_modules

#ruby stuff
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# spark stuff
PATH=$PATH:/Users/peter/development/laravel/spark-installer
alias composer="php /usr/local/bin/composer.phar"

# android stuff
PATH=$PATH:$HOME/android-sdk-macosx/tools
PATH=$PATH:$HOME/android-sdk-macosx/platform-tools
ANDROID_HOME=/Users/peter/android-sdk-macosx/platform-tools
export PATH="/usr/local/sbin:$PATH"

#passwords
randompassword() {openssl rand -base64 32}
