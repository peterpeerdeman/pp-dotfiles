-- Autocmds are automatically loaded on the VeryLazy event
-- LazyVim defaults: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- show diagnostics in a float on hover instead of inline
vim.api.nvim_create_autocmd("CursorHold", {
  group = vim.api.nvim_create_augroup("pp_diagnostic_float", { clear = true }),
  callback = function()
    vim.diagnostic.open_float(nil, { focusable = false })
  end,
})

-- rust: rustaceanvim helpers (LazyVim: <leader>cR code action, <leader>dr debuggables)
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("pp_rust_keys", { clear = true }),
  pattern = "rust",
  callback = function(ev)
    local function map(lhs, cmd, desc)
      vim.keymap.set("n", lhs, function() vim.cmd.RustLsp(cmd) end, { buffer = ev.buf, desc = desc })
    end
    map("<C-space>", "renderDiagnostic", "Render Diagnostic")
    map("<leader>R", "runnables", "Rust Runnables")
    map("<leader>D", "debuggables", "Rust Debuggables")
  end,
})

-- mdx is highlighted as markdown
vim.filetype.add({ extension = { mdx = "mdx" } })
vim.treesitter.language.register("markdown", "mdx")

vim.api.nvim_create_user_command("OverseerRestartLast", function()
  local overseer = require("overseer")
  local tasks = overseer.list_tasks({ recent_first = true })
  if vim.tbl_isempty(tasks) then
    vim.notify("No tasks found", vim.log.levels.WARN)
  else
    overseer.run_action(tasks[1], "restart")
  end
end, {})
