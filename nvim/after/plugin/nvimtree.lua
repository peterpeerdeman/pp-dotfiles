-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

vim.keymap.set('n', '<leader>n', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>m', vim.cmd.NvimTreeFindFile)
