return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- diagnostics in a float on hover (see autocmds.lua) instead of inline text
      diagnostics = {
        virtual_text = false,
        update_in_insert = true,
        float = { border = "rounded", source = true, header = "", prefix = "" },
      },
    },
  },
}
