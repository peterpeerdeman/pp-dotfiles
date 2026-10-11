# Linux (Arch / Omarchy) specifics, sourced from .zshrc before path.zsh

zsh_plugins=/usr/share/zsh/plugins

export PNPM_HOME="$HOME/.local/share/pnpm"
export ANDROID_HOME="$HOME/Android/Sdk"
export STM32_PRG_PATH="$HOME/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin"

alias open='xdg-open'
alias yubiadd='killall ssh-agent ; ssh-add -e /usr/lib/opensc-pkcs11.so &>/dev/null ; ssh-add -s /usr/lib/opensc-pkcs11.so'
