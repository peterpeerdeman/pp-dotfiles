-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- primeagen inspiration
	use ('wbthomason/packer.nvim')
	use ({
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	})
	use ({
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
    })
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    use ('mbbill/undotree')
    use ('folke/zen-mode.nvim')
    use ({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
    use ('williamboman/mason.nvim')
    use ('williamboman/mason-lspconfig.nvim')
    use ('neovim/nvim-lspconfig')

    -- completion
    use ('hrsh7th/nvim-cmp')
    use ('hrsh7th/cmp-nvim-lsp')
    use ('hrsh7th/cmp-path')
    use ('hrsh7th/cmp-vsnip')

    -- rust
    use ('mrcjkb/rustaceanvim')
    use ('mfussenegger/nvim-dap')

    -- deno
    use ('sigmasd/deno-nvim')

    -- classics
    use ('tpope/vim-fugitive')
    use ('tpope/vim-surround')
    use ('tpope/vim-unimpaired')
    use ('mg979/vim-visual-multi')

    -- I tried, but cant live without my tree
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            --"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    }

    use({
        "rbong/vim-flog",
        lazy = true,
        cmd = { "Flog", "Flogsplit", "Floggit" },
        dependencies = {
            "tpope/vim-fugitive",
        }
    })

    -- linting
    use({
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup()
        end,
    })

    -- running tasks, for instance in node or deno
    use {
        'stevearc/overseer.nvim',
        config = function() require('overseer').setup() end
    }

    -- coloring
    -- use({ 'folke/tokyonight.nvim' })
    -- vim.cmd('colorscheme tokyonight-moon')
    -- vim.cmd('colorscheme tokyonight-day')
    use({ "rose-pine/neovim", as = "rose-pine" })
    -- vim.cmd('colorscheme rose-pine-dawn')
    -- vim.cmd('colorscheme rose-pine-moon')
    vim.cmd('colorscheme rose-pine-main')

end)
