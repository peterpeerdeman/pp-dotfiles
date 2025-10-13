# ZSH shortcuts
source $HOME/pp-dotfiles/zsh_environment_variables.sh
source $HOME/pp-dotfiles/zsh_aliases.sh
source $HOME/pp-dotfiles/zsh_scripts.sh
#source $HOME/pp-dotfiles/zsh_conda.sh

# starship (prompt)
eval "$(starship init zsh)"

# zoxide (folder completion)
eval "$(zoxide init --cmd cd zsh)"

# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
