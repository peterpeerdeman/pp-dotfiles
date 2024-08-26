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
vim.keymap.set("n", "<leader><Left>", function() vim.cmd [[vertical resize -5]] end)
vim.keymap.set("n", "<leader><Right>", function() vim.cmd [[vertical resize +5]] end)

-- primeagen: move lines in V mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- primeagen: keep cursors in place
vim.keymap.set("n", "J", "mzJ`z") -- joining lines
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- moving down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- moving up
vim.keymap.set("n", "n", "nzzzv") -- searching front
vim.keymap.set("n", "N", "Nzzzv") -- searching back

-- primeagen: yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+Y")
