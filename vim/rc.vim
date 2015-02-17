" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" The settings file
source <sfile>:h/settings.vim

" Key mappings
source <sfile>:h/mappings.vim

" Auto commands (templates, fileype specific settings)
source <sfile>:h/autocmds.vim

set runtimepath^=~/.vim/bundle/ctrlp.vim
