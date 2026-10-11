-- extra debug configurations on top of the dap.core, lang.rust and lang.typescript extras
return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
      local dap = require("dap")

      dap.adapters.codelldb = dap.adapters.codelldb or {
        type = "server",
        port = "${port}",
        executable = {
          command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
          args = { "--port", "${port}" },
        },
      }

      dap.configurations.rust = dap.configurations.rust or {}
      vim.list_extend(dap.configurations.rust, {
        {
          name = "Debug executable",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
        },
        {
          name = "Remote GDB",
          type = "codelldb",
          request = "launch",
          program = function()
            vim.fn.jobstart("cargo embed")
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
          end,
          cwd = "${workspaceFolder}",
          setupCommands = {
            { text = "target remote localhost:1337" },
          },
        },
      })

      dap.configurations.typescript = dap.configurations.typescript or {}
      table.insert(dap.configurations.typescript, {
        type = "pwa-node",
        request = "launch",
        name = "Launch file (deno)",
        runtimeExecutable = "deno",
        runtimeArgs = { "run", "--inspect-wait", "--allow-all" },
        program = "${file}",
        cwd = "${workspaceFolder}",
        attachSimplePort = 9229,
      })
    end,
  },
}
