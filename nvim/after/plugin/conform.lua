local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettierd" },
        svelte = { "prettierd" },
        css = { "prettierd" },
        html = { "prettierd" },
        json = { "prettierd" },
        yaml = { "prettierd" },
        markdown = { "prettierd" },
        graphql = { "prettierd" },
        -- lua = { "stylua" },
        -- python = { "isort", "black" },
    },
})

vim.keymap.set({ "n", "v" }, "<leader>f", function()
    conform.format({
        lsp_fallback = true,
        async = false,
        -- timeout_ms = 1000,
    })
end, { desc = "Format file or range (in visual mode)" })
