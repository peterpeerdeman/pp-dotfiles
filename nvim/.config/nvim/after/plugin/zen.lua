vim.keymap.set("n", "<leader>zz", function()
    require("zen-mode").setup {
        window = {
            width = 80,
            options = { 
                number = false,
                relativenumber = false,
            }
        },
        plugins = {
            tmux = { enabled = true }, -- disables the tmux statusline
            -- alacritty = { enabled = true, font = "30" }
        }
    }
    require("zen-mode").toggle()
end)
