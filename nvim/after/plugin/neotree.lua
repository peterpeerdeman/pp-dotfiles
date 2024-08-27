vim.keymap.set('n', '<leader>n', '<Cmd> Neotree toggle<CR>')
vim.keymap.set('n', '<leader>m', '<Cmd> Neotree reveal<CR>')

require("neo-tree").setup({
    enable_git_status = false,
    hide_dotfiles = false,
    window = {
        width = 30 
    }
})
