" Delete some useless menus
source <sfile>:h/simple_menu.vim

set mouse=a

" Let the syntax and filetypes be autoloaded
" let myfiletypefile = expand("<sfile>:h") . "/filetypes.vim"
" let mysyntaxfile   = expand("<sfile>:h") . "/syntax.vim"

" The settings file
source <sfile>:h/settings.vim

" Key mappings
source <sfile>:h/mappings.vim

" Auto commands (templates, fileype specific settings)
source <sfile>:h/autocmds.vim

autocmd BufRead *.as set filetype=actionscript
