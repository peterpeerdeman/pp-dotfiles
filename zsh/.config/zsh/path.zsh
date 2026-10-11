# node: put nvm's default version on PATH directly, nvm.sh itself is lazy-loaded (see functions.zsh)
nvm_default=("$NVM_DIR"/versions/node/v${$(<"$NVM_DIR/alias/default" 2>/dev/null)#v}*(N/nOn))

path=(
  $HOME/.cargo/bin
  $HOME/.local/bin                  # own scripts (bin package), pebble
  $HOME/development/flutter/bin
  $PNPM_HOME
  ${nvm_default[1]:+$nvm_default[1]/bin}
  $path
  $ANDROID_HOME/cmdline-tools/latest/bin
  $ANDROID_HOME/platform-tools
)
unset nvm_default
