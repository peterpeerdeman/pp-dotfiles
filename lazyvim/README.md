# LazyVim trial

Runs next to the old config: `vim` (= `NVIM_APPNAME=lazyvim nvim`) starts LazyVim, `ovim` the old config, with its own plugins in `~/.local/share/lazyvim`. Press `<space>` and wait to see every key in which-key.

## What changed

| what                     | old (nvim)                 | LazyVim                                  |
| ------------------------ | -------------------------- | ---------------------------------------- |
| harpoon add / menu       | `<leader>a` / `<C-e>`      | `<leader>H` / `<leader>h`                |
| harpoon files 1-4        | `<C-j>` `<C-k>` `<leader>l` `<leader>h` | `<leader>1` .. `<leader>9`  |
| window down / up         | -                          | `<C-j>` / `<C-k>`                        |
| file tree toggle / reveal| `<leader>n` / `<leader>m`  | `<leader>e` (root) / `<leader>E` (cwd)   |
| undo tree                | `<leader>u`                | `<leader>su`                             |
| breakpoint / conditional | `<leader>b` / `<leader>B`  | `<leader>db` / `<leader>dB`              |
| log point                | `<leader>lp`               | `<leader>dL`                             |
| dap repl / run last      | `<leader>dr` / `<leader>dl`| `<leader>dr` / `<leader>dl` (same)       |
| dap scopes / frames      | `<leader>ds` / `<leader>df`| `<leader>du` (DAP UI)                    |
| git status               | `<leader>gs` (fugitive)    | `<leader>gg` (lazygit), `:Git` still works|
| git blame                | `<leader>gb`               | `<leader>gb` (blame line)                |
| live grep                | `<leader>fg`               | `<leader>sg` or `<leader>/`              |
| help tags                | `<leader>fh`               | `<leader>sh`                             |
| code action              | `A`, `<F4>`, `<leader>A`   | `<leader>ca`, rust: `<leader>cR`         |
| rename                   | `<F2>`                     | `<leader>cr`                             |
| format                   | `<F3>`                     | `<leader>cf` (`<leader>F` kept)          |
| implementation / type    | `gi` / `go`                | `gI` / `gy`                              |
| signature help           | `gs`                       | `gK` (insert mode `<C-k>`)               |
| zen                      | `<leader>zz`               | `<leader>uz` (`<leader>zz` kept)         |
| tasks                    | `<leader>t` / `<leader>r`  | `<leader>o*` (both kept)                 |
| lazy plugin manager      | -                          | `<leader>l`                              |

`A` is plain vim "append at end of line" again.

## Kept as before

`U` redo, visual `J`/`K` move lines, `J`/`<C-d>`/`<C-u>`/`n`/`N` keep cursor centered, `<leader>y` clipboard yank, `<C-p>`/`<leader>pf` find files, `<leader>ps` grep prompt, `<leader>pv` explorer, `<leader><arrows>` resize, `<F5>` `<F10>` `<F11>` `<F12>` debugging, rust `<C-space>` render diagnostic and `<leader>R`/`<leader>D` runnables/debuggables, `K`, `gd`, `gD`, `gr`, `<leader>ff`, `<leader>fb`, `<C-h>`/`<C-l>`.

Options: 4-space tabs, no relative numbers, block cursor, `scrolloff=8`, no search highlight, diagnostics in a hover float instead of inline, prettierd formatting on save, rose-pine.

## Layout

- `lua/config/lazy.lua`: LazyVim + enabled extras (`:LazyExtras` to browse more)
- `lua/config/{options,keymaps,autocmds}.lua`: own settings on top of LazyVim
- `lua/plugins/*.lua`: colorscheme, lsp diagnostics, prettierd, extra dap configs, surround/visual-multi/fugitive/flog
