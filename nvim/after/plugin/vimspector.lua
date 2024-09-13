-- Vimspector options
require("config.vimspector").setup()

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

vim.keymap.set('n', 'Db', '<Cmd> vimspector#ToggleBreakpoint()<cr>')
vim.keymap.set('n', 'Dw', '<Cmd> vimspector#AddWatch()<cr>')
vim.keymap.set('n', 'De', '<Cmd> vimspector#Evaluate()<cr>')
