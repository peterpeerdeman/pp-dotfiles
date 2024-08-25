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
	use ('theprimeagen/harpoon')
	use ('mbbill/undotree')
	use ({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	use ('neovim/nvim-lspconfig')
	use ('hrsh7th/cmp-nvim-lsp')
	use ('hrsh7th/nvim-cmp')

    -- classics
	use ('tpope/vim-fugitive')
	use ('tpope/vim-surround')
	use ('tpope/vim-unimpaired')
	use ('mg979/vim-visual-multi')

    -- colorings
	use({ 'folke/tokyonight.nvim' })
	vim.cmd('colorscheme tokyonight-moon')
	-- vim.cmd('colorscheme tokyonight-day')

end)
