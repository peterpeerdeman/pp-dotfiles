local prettierd_fts = {
  "javascript", "typescript", "javascriptreact", "typescriptreact", "svelte",
  "css", "html", "json", "yaml", "markdown", "graphql",
}

local formatters_by_ft = {}
for _, ft in ipairs(prettierd_fts) do
  formatters_by_ft[ft] = { "prettierd" }
end

return {
  { "stevearc/conform.nvim", opts = { formatters_by_ft = formatters_by_ft } },
  { "mason-org/mason.nvim", opts = { ensure_installed = { "prettierd" } } },
}
