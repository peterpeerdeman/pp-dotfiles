# passwords
randompassword() { openssl rand -base64 32 }

# git: delete local branches that are merged into the current branch
remove-merged-branches() {
  git branch --merged | grep -vE '^\*|^ *(master|main)$' | xargs -n 1 git branch -d
}

# nvm is slow to load, so only source it on first use
nvm() {
  unfunction nvm
  source "$NVM_DIR/nvm.sh"
  source "$NVM_DIR/bash_completion"
  nvm "$@"
}
