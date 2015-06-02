" Redo
nmap U :redo<CR>

" Easy access to commands
nmap <space> :

" Plugins
map <leader>n :NERDTreeToggle<CR>
map <leader>b :LustyJuggler<CR>
nmap <leader>i :call MassIndent()<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Resize panes
noremap <leader><Up> :resize +1<cr>
noremap <leader><Down> :resize -1<cr>
noremap <leader><Right> :vertical resize +5<cr>
noremap <leader><Left> :vertical resize -5<cr>

" Quick JSON prettify
map <Leader>j !python -m json.tool

" Easier buffer switching
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l
