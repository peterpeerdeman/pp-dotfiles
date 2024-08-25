-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use ('wbthomason/packer.nvim')
	use ({
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	})
	use ({
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	})
	use ('theprimeagen/harpoon')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')

	use ('neovim/nvim-lspconfig')
	use ('williamboman/mason.nvim')
	use ('williamboman/mason-lspconfig.nvim')
	use ('hrsh7th/nvim-cmp')
	use ('hrsh7th/cmp-nvim-lsp')
	use ('hrsh7th/cmp-buffer')
	use ('hrsh7th/cmp-path')
	use ('saadparwaiz1/cmp_luasnip')
	use ('L3MON4D3/LuaSnip')
	use ('rafamadriz/friendly-snippets')

	-- use({ 'rose-pine/neovim', as = 'rose-pine' })
	use({ 'folke/tokyonight.nvim' })
	-- vim.cmd('colorscheme rose-pine-moon')
	vim.cmd('colorscheme tokyonight-moon')
	-- vim.cmd('colorscheme rose-pine-dawn')
	-- vim.cmd('colorscheme tokyonight-day')

end)
