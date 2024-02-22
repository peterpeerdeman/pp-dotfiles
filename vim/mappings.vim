" Custom: Redo
nmap U :redo<CR>

" Custom: Quick JSON prettify
map <Leader>j !python -m json.tool

" Custom: Easier buffer switching
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l

" Custom: Resize panes
noremap <leader><Up> :resize +1<cr>
noremap <leader><Down> :resize -1<cr>
noremap <leader><Right> :vertical resize +5<cr>
noremap <leader><Left> :vertical resize -5<cr>

" NERDTree
map <leader>n :NERDTreeToggle<CR>
map <leader>m :NERDTreeFind<CR>


" coc
nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <silent> <leader>d :<C-u>CocList diagnostics<cr>
nnoremap <silent> <leader>s :<C-u>CocList -I symbols<cr>
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

"vim-go
let g:go_doc_keywordprg_enabled = 0
map <leader>ds :GoDebugStart<cr>
map <leader>dt :GoDebugStop<cr>
map <leader>db :GoDebugBreakpoint<cr>
