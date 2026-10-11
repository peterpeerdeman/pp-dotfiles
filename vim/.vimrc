" Fallback vim config without plugins (daily driver is nvim)
set nocompatible
syntax on
filetype plugin indent on
silent! colorscheme habamax

" Indenting
set tabstop=4 shiftwidth=4 softtabstop=4
set expandtab           " Insert spaces instead of tabs
set shiftround          " < and > round to shiftwidth
set autoindent

" Editing
set backspace=indent,eol,start
set nojoinspaces        " Don't add space when joining lines
set scrolloff=8         " Keep cursor away from the top/bottom screen lines
set showbreak=\ ↳\ \    " Wrap line symbol
set encoding=utf-8
set hidden
set autoread            " Reload files when changed externally
set clipboard=unnamed   " Use mac system clipboard
set mouse=a
set history=10000

" Search
set incsearch hlsearch ignorecase smartcase

" Visual
set number
set showcmd
set laststatus=2
set wildmenu
set splitright
set listchars=tab:▸\ ,trail:·
set list

" Keep swap and undo files out of the working directory
let s:cache = expand('~/.cache/vim')
for s:dir in ['swap', 'undo']
  if !isdirectory(s:cache . '/' . s:dir)
    call mkdir(s:cache . '/' . s:dir, 'p', 0700)
  endif
endfor
let &directory = s:cache . '/swap//'
let &undodir = s:cache . '/undo//'
set undofile
set nobackup nowritebackup

" Netrw as file tree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25

" Mappings
nnoremap U :redo<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader><Up> :resize +1<CR>
nnoremap <leader><Down> :resize -1<CR>
nnoremap <leader><Right> :vertical resize +5<CR>
nnoremap <leader><Left> :vertical resize -5<CR>
nnoremap <leader>n :Lexplore<CR>
nnoremap <leader>m :Lexplore %:p:h<CR>
nnoremap <leader>j :%!python3 -m json.tool<CR>

augroup pp
  autocmd!
  autocmd FileType yaml,ruby,eruby,scss setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType markdown setlocal spell
  " Restore cursor position
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
augroup END
