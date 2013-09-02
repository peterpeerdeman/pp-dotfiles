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
autocmd FileType twig set filetype=htmljinja

" Ruby files:
autocmd FileType ruby,yaml set tabstop=2 shiftwidth=2 softtabstop=2

" opslaan van cursor positie
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
 	\   exe "normal g`\"" |
	\ endif
