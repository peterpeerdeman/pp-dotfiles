#!/bin/bash
# Installs brew dependencies and symlinks the stow packages into $HOME.
# Existing files that would conflict are moved to ~/pp-dotfiles_backup first.
set -euo pipefail

dir="$(cd "$(dirname "$0")" && pwd)"
backup=~/pp-dotfiles_backup
packages=(alacritty bin git lazyvim nvim tmux vim zsh)

cd "$dir"
brew bundle --file="$dir/Brewfile"

for package in "${packages[@]}"; do
    # move real files (not symlinks) that stow would conflict with out of the way
    (cd "$package" && find . -type f -not -name '.DS_Store') | while read -r file; do
        target="$HOME/${file#./}"
        if [ -e "$target" ] && [ ! -L "$target" ]; then
            mkdir -p "$backup/$(dirname "${file#./}")"
            echo "Backing up $target"
            mv "$target" "$backup/${file#./}"
        fi
    done
    echo "Linking $package"
    stow --restow --target="$HOME" "$package"
done
