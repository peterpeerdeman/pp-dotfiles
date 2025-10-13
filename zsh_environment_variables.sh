# LANG
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# homebrew arm64
export PATH="/opt/homebrew/bin:$PATH"

# YUBIKEY
export PATH="$PATH:/Applications/YubiKey Manager.app/Contents/MacOS"
alias yubiadd='killall ssh-agent ; ssh-add -e /usr/local/lib/opensc-pkcs11.so &>/dev/null ; ssh-add -s /usr/local/lib/opensc-pkcs11.so'

#GPG
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
gpg-connect-agent UPDATESTARTUPTTY /bye > /dev/null

# bin
#export PATH="/usr/local/bin:$PATH"

# homebrew sbin
#export PATH="/usr/local/sbin:$PATH"

# NODE
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/peter/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# android stuff
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# flutter
export PATH="/Users/peter/development/flutter/bin:$PATH"

# golang stuff
# export GOOS=darwin
# export GOARCH=arm64

# python stuff
# export PATH="/Users/peter/.local/bin:$PATH"

