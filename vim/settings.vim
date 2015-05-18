set nocompatible	" Allow non-vi compatible commands
set autowrite		" Write files before :make and such
set backspace=2		" backspace through ident, eol && start
set cmdheight=1		" The height of the commandline
set cpoptions=aABceFs$	" VI compatible behaviour flags
set formatoptions=tq
set history=10000	" remember 10000 commands
set hlsearch		" higlight all / search matches
set laststatus=2	" Altijd een statusline...
set nobackup		" No backup (~) files
set nojoinspaces	" Don't go adding more spaces then useful.
set scrolloff=8		" keep cursour out of the top/bottom 5 screen lines
set shiftround		" < and > round to shiftwidth
set shiftwidth=4	" The with of an indent
set showbreak=\ \ \ --->\ 	" wrapped line symbol
set showcmd		" Show partial commands in the cmdline
set showmatch		" Show a matched ( with a ) ...
set showmode		" Show the curret mode in the statusline
set smarttab		" <TAB> at ^ does shiftwidth instead of tabstop
set smartindent
set tabstop=4		" The width of the <TAB> char
set expandtab
set statusline=%2n\ %f%y%(\ [%M%R%H%W]%)%=%3c\ %4l/%-4L\ %P\ 
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class
set tags=./tags,./TAGS,tags,TAGS,~/TAGS,~/tags
set ttyfast		" yes, my terminal is fast :)
set undolevels=200	" How much we can undo ... 200 sounds ok
set viminfo='100,f1	" save info over 20 files
set nowrap		" Wrap lines wider then textwidth
set wildmenu		" Show the cmdline completions above the cmdline
set autoread " Reload files when changed externally

" set leader to space (not yet for me though)
" nnoremap <SPACE> <Nop>
" let mapleader=" "

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

syntax on
syntax enable
set number
"set paste
set mouse=a
set clipboard=unnamed
set pastetoggle=<leader>p

if has("terminfo")
  set t_Co=8
  set t_Sf=[3%p1%dm
  set t_Sb=[4%p1%dm
else
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

"highlight Normal     guifg=Grey80       guibg=Black

set background=dark
colorscheme solarized
