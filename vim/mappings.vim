" Custom scripts
map <leader>n :NERDTreeToggle<CR>
map <leader>r :CommandTFlush<CR>
map <leader>b :LustyJuggler<CR>
nmap <leader>i :call MassIndent()<CR>

" Redo
"nmap U :redo<CR>
" Use tab for indent
" Note, DO _NOT_ ADD TABS AFTER THE NEXT LINE -> RECURSION WILL
" 	FOLLOW!!!!
"nmap <Tab> ==

"nmap <C-TAB> :call MassIndent()<CR>
"nmap <C-i> :call MassIndent()<CR>
"nmap <C-j> gqap
"nmap <A-LEFT> :bprev<cr>
"nmap <A-RIGHT> :bnext<cr>

function! MassIndent()
	let tmp = line(".")
	0
	exec "normal " . line("$") . "=="
	exe ":" . tmp
	unlet tmp
endfunction
