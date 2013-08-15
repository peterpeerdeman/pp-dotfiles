set nocompatible	" Allow non-vi compatible commands
set autowrite		" Write files before :make and such
set background=dark	" Set colorscheme to a black background
"colorscheme elflord 	" I like these colors...
set backspace=2		" backspace through ident, eol && start
set cmdheight=1		" The height of the commandline
set cpoptions=aABceFs$	" VI compatible behaviour flags
"set digraph		" Allow writing of chars like ë and à
set formatoptions=tq
set history=10000	" remember 100 commands
set hlsearch		" higlight all / search matches
"set incsearch		" show match while you type
"set ignorecase		" Case insensitive search is usually nice 
set laststatus=2	" Altijd een statusline...
set noautoindent	" Don't indent by default
set nobackup		" No backup (~) files
set nojoinspaces	" Don't go adding more spaces then usefull.
set scrolloff=8		" keep cursour out of the top/bottom 5 screen lines
set shiftround		" < and > round to shiftwidth
set shiftwidth=4	" The with of an indent
set showbreak=\ \ \ --->\ 	" wrapped line symbol
set showcmd		" Show partial commands in the cmdline
set showmatch		" Show a matched ( with a ) ...
set showmode		" Show the curret mode in the statusline
set smarttab		" <TAB> at ^ does shiftwidth instead of tabstop
set splitbelow		" where the new window goes to when you split it
set statusline=%2n\ %f%y%(\ [%M%R%H%W]%)%=%3c\ %4l/%-4L\ %P\ 
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class
set tabstop=4		" The width of the <TAB> char
set tags=./tags,./TAGS,tags,TAGS,~/TAGS,~/tags
set title		" Filename in window title if possible
set ttyfast		" yes, my terminal is fast :)
set undolevels=200	" How much we can undo ... 200 sounds ok
set viminfo='100,f1	" save info over 20 files
"set textwidth=79	" Wrap lines at 79 chars
set wrap		" Wrap lines wider then textwidth
set wrapmargin=0
set wildmenu		" Show the cmdline completions above the cmdline
set notitle

"Fix terminal shit
set nottybuiltin
set term=xterm

" Highlighting options:
"let java_highlight_functions	= "style"
"let java_highlight_java_lang_ids= 1
"let java_highlight_debug	= 1
"let java_allow_cpp_keywords	= 1
"let c_syntax_for_h	= 1
"let perl_include_POD	= 1
"let php_sql_query	= 1
"let php_htmlInStrings	= 1
"let php_oldStyle	= 1

syntax on
syntax enable
set number
set paste

if has("terminfo")
  set t_Co=8
  set t_Sf=[3%p1%dm
  set t_Sb=[4%p1%dm
else
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

highlight Normal     guifg=Grey80       guibg=Black

colorscheme solarized
