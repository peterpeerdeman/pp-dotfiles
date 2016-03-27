" Java source files:
autocmd FileType java    set formatoptions=croql
autocmd FileType java    set sw=4 ts=4 cinoptions=:0(0u0g0 cindent
autocmd FileType java    set noignorecase wrap
autocmd FileType java    set comments=sr:/**,m:\ *\ \ ,el:*/,://,sr:/*,mb:\ \ ,el:*/
autocmd FileType java    set makeprg=compile\ %

" Javascript files
" autocmd FileType javascript call JavaScriptFold()

" HTML files:
autocmd FileType html,php    set formatoptions=croq sw=4 ts=4 autoindent cindent
autocmd FileType htmp,php    set noignorecase nowrap

" SCSS files:
autocmd FileType scss setlocal shiftwidth=2 tabstop=2

" Twig files:
autocmd FileType twig set filetype=htmljinja

" Ruby files:
autocmd FileType ruby,eruby,yaml set tabstop=2 shiftwidth=2 softtabstop=2

" Saving cursor position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal g`\"" |
    \ endif
