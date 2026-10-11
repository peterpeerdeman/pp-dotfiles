return {
  -- show dotfiles in the explorer, narrow zen window
  {
    "folke/snacks.nvim",
    opts = {
      picker = { sources = { explorer = { hidden = true } } },
      zen = { win = { width = 80 } },
    },
  },

  -- classics
  { "tpope/vim-surround", event = "VeryLazy" },
  { "mg979/vim-visual-multi", event = "VeryLazy" },
  { "tpope/vim-fugitive", cmd = { "Git", "G", "Gdiffsplit", "Gread", "Gwrite" } },
  { "rbong/vim-flog", cmd = { "Flog", "Flogsplit", "Floggit" }, dependencies = { "tpope/vim-fugitive" } },
}
