# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"
#ZSH_THEME="kolo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#git aliases
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

#vim aliases
#alias vim='mvim -v'
#alias vim=vi

#other aliases
alias u='cd ..'
alias la='ls -la'

alias s='cd ~/development/web/scripta'
alias p='cd ~/development/web/peterpeerdeman/'
alias w='cd ~/development/rails/wisdoms/'
alias b='cd ~/development/bnp/'
alias lfy='cd ~/development/lfy/'
alias tfs='cd ~/development/tfs/'
alias fw='cd ~/development/frankwatching-backend/'
alias bln='cd ~/development/bundlin/'

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# include private variables if they exist

if [[ -f private_variables.sh && -r private_variables.sh ]]; then
    source private_variables.sh
fi

skip_global_compinit=1

# Customize to your needs...

#PROMPT='%{%f%b%k%}$(build_prompt) 
#» '

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### new git
export PATH="/usr/local/git/bin:$PATH"

export ANSIBLE_HOSTS="~/ansible_hosts"

PATH="/usr/local/bin:$PATH"

PATH="/Users/peter/adt-bundle-mac-x86_64-20140624/sdk/tools":$PATH
PATH="/Users/peter/adt-bundle-mac-x86_64-20140624/sdk/platform-tools":$PATH
PATH="$HOME/development/play/activator-1.2.10-minimal":$PATH


#ruby stuff
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#android stuff
PATH=$PATH:$HOME/android-sdk-macosx/tools
ANDROID_HOME=/Users/peter/android-sdk-macosx/platform-tools

# play stuff
