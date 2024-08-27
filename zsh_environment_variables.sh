export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

PATH="/usr/local/bin:$PATH"

# zoxide
eval "$(zoxide init --cmd cd zsh)"


# node stuff
export NODE_PATH=/opt/lib/node_modules

# android stuff
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# flutter
export PATH="/Users/peter/development/flutter/bin:$PATH"

# golang stuff
export GOOS=darwin
export GOARCH=arm64

# python stuff
export PATH="/Users/peter/.local/bin:$PATH"
