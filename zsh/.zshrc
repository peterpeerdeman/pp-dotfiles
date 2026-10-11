# keep PATH entries unique
typeset -U path

# zsh config lives in ~/.config/zsh, order matters (env vars -> OS specifics -> PATH -> rest)
# os.zsh comes from the macos or linux stow package
for f in env os path gpg aliases functions conda; do
  [[ -r "$HOME/.config/zsh/$f.zsh" ]] && source "$HOME/.config/zsh/$f.zsh"
done
unset f

# starship (prompt)
eval "$(starship init zsh)"

# zoxide (folder completion)
eval "$(zoxide init --cmd cd zsh)"

# zsh-autosuggestions, zsh_plugins is set in os.zsh
source "$zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
unset zsh_plugins
