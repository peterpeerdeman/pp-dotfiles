-- Vimspector options
--
-- require("config.vimspector").setup()

-- vim.g.python3_host_prog = '/Users/peter/pp-dotfiles/nvim/venv/bin/python'
-- vim.g.vimspector_base_dir = '/Users/peter/.local/share/nvim/site/pack/packer/opt/vimspector'

vim.cmd([[
    let g:vimspector_sidebar_width = 85
    let g:vimspector_bottombar_height = 15
    let g:vimspector_terminal_maxwidth = 70

]])

-- Vimspector
vim.cmd([[
    nmap <F9> <cmd>call vimspector#Launch()<cr>
    nmap <F5> <cmd>call vimspector#StepOver()<cr>
    nmap <F8> <cmd>call vimspector#Reset()<cr>
    nmap <F11> <cmd>call vimspector#StepOver()<cr>
    nmap <F12> <cmd>call vimspector#StepOut()<cr>
    nmap <F10> <cmd>call vimspector#StepInto()<cr>
]])

vim.keymap.set('n', 'Db', ':call vimspector#ToggleBreakpoint()<cr>')
vim.keymap.set('n', 'Dw', ':call vimspector#AddWatch()<cr>')
vim.keymap.set('n', 'De', ':call vimspector#Evaluate()<cr>')
