local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n", 
  "<leader>A", 
  function()
    -- vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    vim.lsp.buf.codeAction() -- if you don't want grouping.
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set(
  "n", 
  "<C-space>", 
  function()
    vim.cmd.RustLsp('renderDiagnostic')
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set( "n", "<leader>R", "<Cmd> RustLsp runnables<CR>")
vim.keymap.set( "n", "<leader>D", "<Cmd> RustLsp debuggables<CR>")

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.cmd([[
    set signcolumn=yes
    autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
