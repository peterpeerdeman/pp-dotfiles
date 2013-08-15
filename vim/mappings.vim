" Redo
nmap U :redo<CR>
" Use tab for indent
" Note, DO _NOT_ ADD TABS AFTER THE NEXT LINE -> RECURSION WILL
" 	FOLLOW!!!!
nmap <Tab> ==

"nmap <C-q> :call MassIndent()<CR>
"nmap <C-TAB> :call MassIndent()<CR>
nmap <C-i> :call MassIndent()<CR>
nmap <C-j> gqap
nmap <A-LEFT> :bprev<cr>
nmap <A-RIGHT> :bnext<cr>


function! MassIndent()
	let tmp = line(".")
	0
	exec "normal " . line("$") . "=="
	exe ":" . tmp
	unlet tmp
endfunction

" Build program
nmap M :make<CR>

nmap <Esc>1 :1buffer<CR>
nmap <Esc>2 :2buffer<CR>
nmap <Esc>3 :3buffer<CR>
nmap <Esc>4 :4buffer<CR>
nmap <Esc>5 :5buffer<CR>
nmap <Esc>6 :6buffer<CR>
nmap <Esc>7 :7buffer<CR>
nmap <Esc>8 :8buffer<CR>
nmap <Esc>9 :9buffer<CR>
nmap <Esc>0 :buffers<CR>
