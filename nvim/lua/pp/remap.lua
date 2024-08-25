vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Custom: Redo
vim.keymap.set("n", "U", vim.cmd.redo)

-- Custom: Easier buffer switching
vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-l>", "<C-W>l")

-- Custom: Resize panes
vim.keymap.set("n", "<leader><Up>", function() vim.cmd [[resize +1]] end)
vim.keymap.set("n", "<leader><Down>", function() vim.cmd [[resize -1]] end)
vim.keymap.set("n", "<leader><Right>", function() vim.cmd [[vertical resize +5]] end)
vim.keymap.set("n", "<leader><Left>", function() vim.cmd [[vertical resize -5]] end)
