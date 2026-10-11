vim.keymap.set('n', '<leader>t', '<Cmd> OverseerToggle<CR>')
vim.keymap.set('n', '<leader>r', '<Cmd> OverseerRun<CR>')
-- vim.keymap.set('n', '<leader>R', '<Cmd> OverseerRestartLast<CR>')

vim.api.nvim_create_user_command("OverseerRestartLast", function()
  local overseer = require("overseer")
  local tasks = overseer.list_tasks({ recent_first = true })
  if vim.tbl_isempty(tasks) then
    vim.notify("No tasks found", vim.log.levels.WARN)
  else
    overseer.run_action(tasks[1], "restart")
  end
end, {})
