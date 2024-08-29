local builtin = require('telescope.builtin')

-- primeagen archive
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- primeagen
--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})

-- telescope originals
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
