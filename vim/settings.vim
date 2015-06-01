" VIM settings - Peter Peerdeman

" Theme
colorscheme monokai
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Indenting
set shiftwidth=4      " The with of an indent
set tabstop=4         " The width of the <TAB> char
set expandtab         " Insert <shiftwidht> spaces instead of tab
set shiftround        " < and > round to shiftwidth

set backspace=2       " Backspace through indent, eol && start
set nobackup          " No backup (~) files
set nojoinspaces      " Don't add space when joining lines
set scrolloff=8       " Keep cursour out of the top/bottom 5 screen lines
set showbreak=\ ↳\ \  " Wrap line symbol

set history=10000     " Remember 10000 commands
set showcmd           " Show partial commands in the cmdline
set laststatus=2      " Always show status line

"!!!unsorted from here
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class
set tags=./tags,./TAGS,tags,TAGS,~/TAGS,~/tags
set ttyfast        " yes, my terminal is fast :)
set undolevels=200    " How much we can undo ... 200 sounds ok
set viminfo='100,f1    " save info over 20 files
set nowrap        " Wrap lines wider then textwidth
set wildmenu        " Show the cmdline completions above the cmdline
set autoread " Reload files when changed externally

" set leader to space (not yet for me though)
" nnoremap <SPACE> <Nop>
" let mapleader=" "

syntax on
syntax enable
set number
"set paste
set mouse=a
set clipboard=unnamed
set pastetoggle=<leader>p

"!!!unsorted till here

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

noremap <leader><Up> :resize +1<cr>
noremap <leader><Down> :resize -1<cr>
noremap <leader><Right> :vertical resize +5<cr>
noremap <leader><Left> :vertical resize -5<cr>

" Easier buffer switching
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l

" Syntastic
let g:syntastic_javascript_checkers=['jscs']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
