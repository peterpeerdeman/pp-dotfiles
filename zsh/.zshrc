# zsh config lives in ~/.config/zsh, order matters (env vars -> PATH -> rest)
for f in env path gpg aliases functions conda; do
  source "$HOME/.config/zsh/$f.zsh"
done
unset f

# starship (prompt)
eval "$(starship init zsh)"

# zoxide (folder completion)
eval "$(zoxide init --cmd cd zsh)"

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
