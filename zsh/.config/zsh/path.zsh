# keep PATH entries unique
typeset -U path

# node: put nvm's default version on PATH directly, nvm.sh itself is lazy-loaded (see functions.zsh)
nvm_default=("$NVM_DIR"/versions/node/v${$(<"$NVM_DIR/alias/default")#v}*(N/nOn))

path=(
  $HOME/.cargo/bin
  $HOME/.local/bin                  # own scripts (bin package), pebble
  $HOME/development/flutter/bin
  $PNPM_HOME
  ${nvm_default[1]:+$nvm_default[1]/bin}
  /opt/homebrew/bin
  /opt/homebrew/sbin
  $path
  "/Applications/YubiKey Manager.app/Contents/MacOS"
  $ANDROID_HOME/cmdline-tools/latest/bin
  $ANDROID_HOME/platform-tools
)
unset nvm_default
