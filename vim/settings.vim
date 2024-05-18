" VIM settings - Peter Peerdeman

" Theme
"colorscheme tokyonight     " dark theme
colorscheme onedark     " dark theme
"colorscheme monokai     " dark theme
"colorscheme mayansmoke   " light theme
"colorscheme night_owl_light   " light theme

" Indenting
function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/Users/peter/development/peterpeerdeman.github.io'
    set tabstop=2 shiftwidth=2
  else
    set tabstop=4 shiftwidth=4 
  endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()

" set shiftwidth=2        " The with of an indent
" set tabstop=2           " The width of the <TAB> char
" set shiftwidth=4        " The with of an indent
" set tabstop=4           " The width of the <TAB> char
set expandtab           " Insert <shiftwidht> spaces instead of tab
set shiftround          " < and > round to shiftwidth

" Editing
set backspace=2         " Backspace through indent, eol && start
set nobackup            " No backup (~) files
set nojoinspaces        " Don't add space when joining lines
set scrolloff=8         " Keep cursour out of the top/bottom 5 screen lines
set showbreak=\ ↳\ \    " Wrap line symbol

" Directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Visual / Toolbars
"set nowrap              " Don't wrap lines wider then textwidth
set showcmd             " Show partial commands in the cmdline
set laststatus=2        " Always show status line
set wildmenu            " Show the cmdline completions above the cmdline
set number              " Show line numbers
set listchars=tab:▸\ ,trail:· "show tabs and trailspaces
set list                " ?

" Generic Settings
set history=10000       " Remember 10000 commands
set autoread            " Reload files when changed externally
set mouse=a             " Enable mouse for each mode
set splitright          " split files to the right side
set exrc                " load local .vimrc files
set clipboard=unnamed   " use mac system clipboard

" CoC
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

" coc
"
command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:coc_global_extensions = [ 'coc-tsserver' ]
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
    let g:coc_global_extensions += ['coc-prettier']
endif
" if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
"     let g:coc_global_extensions += ['coc-eslint']
" endif
inoremap <silent><expr> <c-@> coc#refresh()
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" ale
let g:ale_linters = {
\   'javascript': ['cspell', 'deno', 'eslint', 'fecs', 'flow', 'flow_ls', 'jscs', 'standard', 'tsserver', 'xo'],
\}

let g:ale_fixers = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'javascript': ['prettier'],
            \}

" NERDTree
let g:NERDTreeWinSize = 30

" Airline
let g:airline_theme = 'base16'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 0
let g:airline_detect_crypt=0
let g:airline_detect_whitespace = 0
let g:airline#extensions#hunks#enabled = 0

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Ack
let g:ack_mappings = {
              \  'v':  '<C-W><CR><C-W>L<C-W>p<C-W>J<C-W>p',
              \ 'gv': '<C-W><CR><C-W>L<C-W>p<C-W>J' }

" Snipmate
let g:snipMate = { 'snippet_version' : 1 }

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --vimgrep'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
