" For default files:
"autocmd BufEnter * set formatoptions=tcql nocindent comments&
"autocmd BufEnter * set ignorecase

" Java source files:
autocmd FileType java	set formatoptions=croql
autocmd FileType java	set sw=4 ts=4 cinoptions=:0(0u0g0 cindent
autocmd FileType java	set noignorecase wrap
autocmd FileType java	set comments=sr:/**,m:\ *\ \ ,el:*/,://,sr:/*,mb:\ \ ,el:*/
autocmd FileType java	set makeprg=compile\ %

" HTML files:
autocmd FileType html,php	set formatoptions=croq sw=2 ts=2 autoindent cindent
autocmd FileType htmp,php	set noignorecase nowrap
"autocmd FileType mail set tw=70 

" Twig files:
au BufRead,BufNewFile *.twig set filetype=htmljinja

" opslaan van cursor positie
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
 	\   exe "normal g`\"" |
	\ endif
