# macOS specifics, sourced from .zshrc before path.zsh

# homebrew
path=(/opt/homebrew/bin /opt/homebrew/sbin $path)
zsh_plugins=/opt/homebrew/share

export PNPM_HOME="$HOME/Library/pnpm"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin

path+=("/Applications/YubiKey Manager.app/Contents/MacOS")

alias srt='open -a Sourcetree'
alias yubiadd='killall ssh-agent ; ssh-add -e /usr/local/lib/opensc-pkcs11.so &>/dev/null ; ssh-add -s /usr/local/lib/opensc-pkcs11.so'
