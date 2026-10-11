-- Keymaps are automatically loaded on the VeryLazy event
-- LazyVim defaults: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local map = vim.keymap.set

map("n", "U", "<cmd>redo<cr>", { desc = "Redo" })

-- resize panes (LazyVim also has <C-arrows>)
map("n", "<leader><Up>", "<cmd>resize +1<cr>", { desc = "Increase Window Height" })
map("n", "<leader><Down>", "<cmd>resize -1<cr>", { desc = "Decrease Window Height" })
map("n", "<leader><Left>", "<cmd>vertical resize -5<cr>", { desc = "Decrease Window Width" })
map("n", "<leader><Right>", "<cmd>vertical resize +5<cr>", { desc = "Increase Window Width" })

-- primeagen: move lines in visual mode (LazyVim also has <A-j>/<A-k>)
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Down", silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Up", silent = true })

-- primeagen: keep cursor in place
map("n", "J", "mzJ`z", { desc = "Join Lines" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up" })
map("n", "n", "nzzzv", { desc = "Next Search Result" })
map("n", "N", "Nzzzv", { desc = "Prev Search Result" })

-- primeagen: yank to clipboard
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to Clipboard" })
map("v", "<leader>Y", '"+Y', { desc = "Yank Line to Clipboard" })

-- primeagen: project view / files / search (LazyVim: <leader>e, <leader>ff, <leader>sg)
map("n", "<leader>pv", function() Snacks.explorer() end, { desc = "Explorer" })
map("n", "<leader>m", function() Snacks.explorer.reveal() end, { desc = "Reveal in Explorer" })
map("n", "<leader>pf", function() LazyVim.pick("files")() end, { desc = "Find Files" })
map("n", "<leader>ps", function() Snacks.picker.grep({ search = vim.fn.input("Grep > ") }) end, { desc = "Grep" })
map("n", "<C-p>", function() LazyVim.pick("files")() end, { desc = "Find Files" })

-- format (LazyVim: <leader>cf)
map({ "n", "v" }, "<leader>F", function() LazyVim.format({ force = true }) end, { desc = "Format" })

-- zen (LazyVim: <leader>uz)
map("n", "<leader>zz", function() Snacks.zen() end, { desc = "Zen Mode" })

-- overseer (LazyVim: <leader>o*)
map("n", "<leader>t", "<cmd>OverseerToggle<cr>", { desc = "Task List" })
map("n", "<leader>r", "<cmd>OverseerRun<cr>", { desc = "Run Task" })

-- debugging, F-keys next to LazyVim's <leader>d*
map("n", "<F5>", function() require("dap").continue() end, { desc = "Debug: Continue" })
map("n", "<F10>", function() require("dap").step_over() end, { desc = "Debug: Step Over" })
map("n", "<F11>", function() require("dap").step_into() end, { desc = "Debug: Step Into" })
map("n", "<F12>", function() require("dap").step_out() end, { desc = "Debug: Step Out" })
map("n", "<leader>dL", function()
  require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end, { desc = "Log Point" })
