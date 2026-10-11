# pp-dotfiles

My collection of dotfiles I have gathered over the years and like to use. Every top-level folder is a [GNU stow](https://www.gnu.org/software/stow/) package that mirrors the layout of the home directory.

| package     | links                                    |
| ----------- | ---------------------------------------- |
| `alacritty` | `~/.config/alacritty`                    |
| `bin`       | `~/.local/bin/*` (small shell scripts)   |
| `git`       | `~/.gitconfig`, `~/.config/git/ignore`   |
| `nvim`      | `~/.config/nvim`                         |
| `lazyvim`   | `~/.config/lazyvim` (LazyVim, `vim`) |
| `tmux`      | `~/.tmux.conf`, `~/.tmux`                |
| `vim`       | `~/.vimrc` (plugin-free fallback vim)    |
| `zsh`       | `~/.zshrc`, `~/.config/zsh`              |
| `macos`     | OS specifics, only stowed on macOS       |
| `linux`     | OS specifics, only stowed on Linux       |

Everything OS specific (homebrew paths, `/Applications`, SourceTree, ...) lives in `macos/` or `linux/`. The shared configs load it through an optional `os` file: `~/.config/zsh/os.zsh`, `~/.config/git/os`, `~/.config/tmux/os.conf` and `~/.config/alacritty/os.toml`.

## installation

On macOS install [homebrew](https://brew.sh) first, then:

```
git clone <this repo> ~/pp-dotfiles
~/pp-dotfiles/install.sh
```

The install script installs dependencies (`brew bundle` with the `Brewfile` on macOS, `pacman` with `packages.arch` on Arch / Omarchy), stows the matching OS package, moves conflicting files to `~/pp-dotfiles_backup` and stows all other packages. A single package can be (re)linked with `stow -t ~ <package>` from the repo folder.

## Credits

- vimsettings: Base set by Pieter Hijma
- install script: MICHAEL SMALLEY http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
