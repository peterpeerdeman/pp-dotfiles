# ZSH shortcuts
source $HOME/pp-dotfiles/zsh_environment_variables.sh
source $HOME/pp-dotfiles/zsh_aliases.sh
source $HOME/pp-dotfiles/zsh_scripts.sh
source $HOME/pp-dotfiles/zsh_conda.sh

export LS_COLORS="${LS_COLORS}:ow=1;34:tw=1;34:st=1;34"

# starship (prompt)
eval "$(starship init zsh)"

# zoxide (folder completion)
eval "$(zoxide init --cmd cd zsh)"

# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# stm
export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin

# pebble
export PATH="/Users/peter/.local/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
