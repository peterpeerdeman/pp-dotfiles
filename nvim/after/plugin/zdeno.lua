require("deno-nvim").setup {
    server = {
        root_dir = require "lspconfig.util".root_pattern('deno.json', 'deno.jsonc', 'denonvim.tag'),
    },
    dap = {
        adapter = {
            executable = {
                args = {
                    "/Users/peter/pp-dotfiles/nvim/js-debug/src/dapDebugServer.js", "${port}"
                }
            }
        }
    }
}
