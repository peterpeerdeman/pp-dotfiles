# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="bureau"
#ZSH_THEME="random"
#ZSH_THEME="agnoster"

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
#plugins=(git gitfast zsh-syntax-highlighting fancy-ctrl-z kubectl)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# include private variables if they exist
if [[ -f private_variables.sh && -r private_variables.sh ]]; then
    source private_variables.sh
fi

skip_global_compinit=1

# online/offline shenanigans
# ONLINE='%{%F{green}%}◉'
# OFFLINE='%{%F{red}%}⦿'

# function prompt_online() {
#     if [[ -f ~/.offline ]]; then
#         echo $OFFLINE
#     else
#         echo $ONLINE
#     fi
# }

# function wu () {
#     if [ -z "$2" ]
#     then
#         watch --color --no-title "tput setaf 2; echo 'HTTP status:'; tput setaf 7; curl -sLI $1; tput setaf 2; echo 'TOP status:'; tput setaf 7; ssh root@$1 'top -b -n 1 | head'"
#     else
#         watch --color --no-title "tput setaf 2; echo 'HTTP status:'; tput setaf 7; curl -sLI $1; tput setaf 2; echo 'TOP status:'; tput setaf 7; ssh root@$1 'top -b -n 1 | head'; tput setaf 2; echo '\nExtra (${@:2}):'; tput setaf 7; ssh root@$1 '${@:2}'"
#     fi
# }

# Customize to your needs...
#PROMPT='$(prompt_online)» '
PROMPT='» '

source $HOME/pp-dotfiles/zsh_aliases.sh
source $HOME/pp-dotfiles/zsh_environment_variables.sh
source $HOME/pp-dotfiles/zsh_scripts.sh
#source $HOME/pp-dotfiles/zsh_conda.sh

