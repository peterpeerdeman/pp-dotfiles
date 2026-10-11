# pp-dotfiles

My collection of dotfiles I have gathered over the years and like to use. Every top-level folder is a [GNU stow](https://www.gnu.org/software/stow/) package that mirrors the layout of the home directory.

| package     | links                                    |
| ----------- | ---------------------------------------- |
| `alacritty` | `~/.config/alacritty`                    |
| `bin`       | `~/.local/bin/*` (small shell scripts)   |
| `git`       | `~/.gitconfig`, `~/.config/git/ignore`   |
| `nvim`      | `~/.config/nvim`                         |
| `lazyvim`   | `~/.config/lazyvim` (LazyVim trial, `lv`) |
| `tmux`      | `~/.tmux.conf`, `~/.tmux`                |
| `vim`       | `~/.vimrc` (plugin-free fallback vim)    |
| `zsh`       | `~/.zshrc`, `~/.config/zsh`              |

## installation

Install [homebrew](https://brew.sh), then:

```
git clone <this repo> ~/pp-dotfiles
~/pp-dotfiles/install.sh
```

The install script runs `brew bundle` with the `Brewfile`, moves conflicting files to `~/pp-dotfiles_backup` and stows all packages. A single package can be (re)linked with `stow -t ~ <package>` from the repo folder.

## Credits

- vimsettings: Base set by Pieter Hijma
- install script: MICHAEL SMALLEY http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
