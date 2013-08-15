set guioptions=agimrLtTM
aunmenu *

:amenu Menu.advanced :exe "source ". vim_rc_dir ."/advanced_menu.vim"<cr>

" Vim support file to define the default menus
" You can also use this as a start for your own set of menus.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2002 Mar 02

" Note that ":an" (short for ":anoremenu") is often used to make a menu work
" in all modes and avoid side effects from mappings defined by the user.

" Make sure the '<' and 'C' flags are not included in 'cpoptions', otherwise
" <CR> would not be recognized.  See ":help 'cpoptions'".
let s:cpo_save = &cpo
set cpo&vim

" Avoid installing the menus twice
if !exists("did_install_simple_menus")
"let did_install_simple_menus = 1


if exists("v:lang") || &langmenu != ""
  " Try to find a menu translation file for the current language.
  if &langmenu != ""
    if &langmenu =~ "none"
      let s:lang = ""
    else
      let s:lang = &langmenu
    endif
  else
    let s:lang = v:lang
  endif
  " A language name must be at least two characters, don't accept "C"
  if strlen(s:lang) > 1
    " We always use a lowercase name.
    " Change "iso-8859" to "iso_8859", some systems appear to use this.
    " Change spaces to underscores.
    let s:lang = substitute(tolower(s:lang), "\\.iso-", "\\.iso_", "")
    let s:lang = substitute(s:lang, " ", "_", "g")
    " Remove "@euro", otherwise "LC_ALL=de_DE@euro gvim" will show English menus
    let s:lang = substitute(s:lang, "@euro", "", "")
    menutrans clear
    exe "runtime! lang/menu_" . s:lang . ".vim"

    if !exists("did_menu_trans")
      " There is no exact match, try matching with a wildcard added
      " (e.g. find menu_de_de.iso_8859-1.vim if s:lang == de_DE).
      exe "runtime! lang/menu_" . s:lang . "*.vim"

      if !exists("did_menu_trans") && strlen($LANG) > 1
	" On windows locale names are complicated, try using $LANG, it might
	" have been set by set_init_1().
	exe "runtime! lang/menu_" . tolower($LANG) . "*.vim"
      endif
    endif
  endif
endif


" Help menu
an 9999.10 &Help.&Overview<Tab><F1>	:help<CR>
an 9999.20 &Help.&User\ Manual		:help usr_toc<CR>
an 9999.30 &Help.&How-to\ links		:help how-to<CR>
an <silent> 9999.40 &Help.&Find\.\.\.	:call <SID>Helpfind()<CR>
an 9999.45 &Help.-sep1-			<Nop>
an 9999.50 &Help.&Credits		:help credits<CR>
an 9999.60 &Help.Co&pying		:help copying<CR>
an 9999.70 &Help.O&rphans		:help kcc<CR>
an 9999.75 &Help.-sep2-			<Nop>
an 9999.80 &Help.&Version		:version<CR>
an 9999.90 &Help.&About			:intro<CR>

fun! s:Helpfind()
  if !exists("g:menutrans_help_dialog")
    let g:menutrans_help_dialog = "Enter a command or word to find help on:\n\nPrepend i_ for Input mode commands (e.g.: i_CTRL-X)\nPrepend c_ for command-line editing commands (e.g.: c_<Del>)\nPrepend ' for an option name (e.g.: 'shiftwidth')"
  endif
  let h = inputdialog(g:menutrans_help_dialog)
  if h != ""
    let v:errmsg = ""
    silent! exe "help " . h
    if v:errmsg != ""
      echo v:errmsg
    endif
  endif
endfun

" File menu
an 10.305 &File.&New<Tab>:enew			:confirm enew<CR>
an 10.310 &File.&Open\.\.\.<Tab>:e		:browse confirm e<CR>
an 10.335 &File.-SEP1-				<Nop>
an <silent> 10.340 &File.&Save<Tab>:w		:if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>
an 10.350 &File.Save\ &As\.\.\.<Tab>:sav	:browse confirm saveas<CR>

if has("printer")
  an 10.500 &File.-SEP3-			<Nop>
  an 10.510 &File.&Print			:hardcopy
  vunmenu   &File.&Print
  vnoremenu &File.&Print			:hardcopy
elseif has("unix")
  an 10.500 &File.-SEP3-			<Nop>
  an 10.510 &File.&Print			:w !lpr<CR>
  vunmenu   &File.&Print
  vnoremenu &File.&Print			:w !lpr<CR>
endif
an 10.600 &File.-SEP4-				<Nop>
an 10.610 &File.Sa&ve-Exit<Tab>:wqa		:confirm wqa<CR>
an 10.620 &File.E&xit<Tab>:qa			:confirm qa<CR>

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
if has("virtualedit")
  nnoremap <silent> <script> <SID>Paste :call <SID>Paste()<CR>
  func! <SID>Paste()
    let ove = &ve
    set ve=all
    normal `^"+gPi
    let &ve = ove
  endfunc
else
  nnoremap <silent> <script> <SID>Paste "=@+.'xy'<CR>gPFx"_2x
endif

" Edit menu
an 20.310 &Edit.&Undo<Tab>u			u
an 20.320 &Edit.&Redo<Tab>^R			<C-R>
an 20.330 &Edit.Rep&eat<Tab>\.			.

an 20.335 &Edit.-SEP1-				<Nop>
vnoremenu 20.340 &Edit.Cu&t<Tab>"+x		"+x
vnoremenu 20.350 &Edit.&Copy<Tab>"+y		"+y
cnoremenu 20.350 &Edit.&Copy<Tab>"+y		<C-Y>
nnoremenu 20.360 &Edit.&Paste<Tab>"+P		"+gP
cnoremenu	 &Edit.&Paste<Tab>"+P		<C-R>+
if has("virtualedit")
  vnoremenu <script>	 &Edit.&Paste<Tab>"+P	"-c<Esc><SID>Paste
  inoremenu <script>	 &Edit.&Paste<Tab>"+P	<Esc><SID>Pastegi
else
  vnoremenu <script>	 &Edit.&Paste<Tab>"+P	"-c<Esc>gix<Esc><SID>Paste"_x
  inoremenu <script>	 &Edit.&Paste<Tab>"+P	x<Esc><SID>Paste"_s
endif
if has("win32") || has("win16")
  vnoremenu 20.390 &Edit.&Delete<Tab>x		x
endif
an <silent> 20.400 &Edit.&Select\ all<Tab>ggVG	:if &slm != ""<Bar>exe ":norm gggH<C-O>G"<Bar>else<Bar>exe ":norm ggVG"<Bar>endif<CR>

an 20.405	 &Edit.-SEP2-				<Nop>
if has("win32")  || has("win16") || has("gui_gtk") || has("gui_motif")
  an 20.410	 &Edit.&Find\.\.\.			:promptfind<CR>
  vunmenu	 &Edit.&Find\.\.\.
  vnoremenu	 &Edit.&Find\.\.\.			y:promptfind <C-R>"<CR>
  an 20.420	 &Edit.Find\ and\ Rep&lace\.\.\.	:promptrepl<CR>
  vunmenu	 &Edit.Find\ and\ Rep&lace\.\.\.
  vnoremenu	 &Edit.Find\ and\ Rep&lace\.\.\.	y:promptrepl <C-R>"<CR>
else
  an 20.410	 &Edit.&Find<Tab>/			/
  an 20.420	 &Edit.Find\ and\ Rep&lace<Tab>:%s	:%s/
  vunmenu	 &Edit.Find\ and\ Rep&lace<Tab>:%s
  vnoremenu	 &Edit.Find\ and\ Rep&lace<Tab>:s	:s/
endif


if !exists("no_buffers_menu")

" Buffer list menu -- Setup functions & actions

" wait with building the menu until after loading 'session' files. Makes
" startup faster.
let s:bmenu_wait = 1

if !exists("bmenu_priority")
  let bmenu_priority = 60
endif

func! s:BMAdd()
  if s:bmenu_wait == 0
    " when adding too many buffers, redraw in short format
    if s:bmenu_count == &menuitems && s:bmenu_short == 0
      call s:BMShow()
    else
      call <SID>BMFilename(expand("<afile>"), expand("<abuf>"))
      let s:bmenu_count = s:bmenu_count + 1
    endif
  endif
endfunc

func! s:BMRemove()
  if s:bmenu_wait == 0
    let name = expand("<afile>")
    if isdirectory(name)
      return
    endif
    let munge = <SID>BMMunge(name, expand("<abuf>"))

    if s:bmenu_short == 0
      exe 'silent! aun &Buffers.' . munge
    else
      exe 'silent! aun &Buffers.' . <SID>BMHash2(munge) . munge
    endif
    let s:bmenu_count = s:bmenu_count - 1
  endif
endfunc

" Create the buffer menu (delete an existing one first).
func! s:BMShow(...)
  let s:bmenu_wait = 1
  let s:bmenu_short = 1
  let s:bmenu_count = 0
  "
  " get new priority, if exists
  if a:0 == 1
    let g:bmenu_priority = a:1
  endif

  " remove old menu, if exists; keep one entry to avoid a torn off menu to
  " disappear.
  silent! unmenu &Buffers
  exe 'noremenu ' . g:bmenu_priority . ".1 &Buffers.Dummy l"
  silent! unmenu! &Buffers

  " create new menu; set 'cpo' to include the <CR>
  let cpo_save = &cpo
  set cpo&vim
  exe 'an <silent> ' . g:bmenu_priority . ".2 &Buffers.&Refresh\\ menu :call <SID>BMShow()<CR>"
  exe 'an ' . g:bmenu_priority . ".4 &Buffers.&Delete :bd<CR>"
  exe 'an ' . g:bmenu_priority . ".6 &Buffers.&Alternate :b #<CR>"
  exe 'an ' . g:bmenu_priority . ".7 &Buffers.&Next :bnext<CR>"
  exe 'an ' . g:bmenu_priority . ".8 &Buffers.&Previous :bprev<CR>"
  exe 'an ' . g:bmenu_priority . ".9 &Buffers.-SEP- :"
  let &cpo = cpo_save
  unmenu &Buffers.Dummy

  " figure out how many buffers there are
  let buf = 1
  while buf <= bufnr('$')
    if bufexists(buf) && !isdirectory(bufname(buf)) && buflisted(buf)
					    \ && !getbufvar(buf, "&bufsecret")
      let s:bmenu_count = s:bmenu_count + 1
    endif
    let buf = buf + 1
  endwhile
  if s:bmenu_count <= &menuitems
    let s:bmenu_short = 0
  endif

  " iterate through buffer list, adding each buffer to the menu:
  let buf = 1
  while buf <= bufnr('$')
    if bufexists(buf) && !isdirectory(bufname(buf)) && buflisted(buf)
					    \ && !getbufvar(buf, "&bufsecret")
      call <SID>BMFilename(bufname(buf), buf)
    endif
    let buf = buf + 1
  endwhile
  let s:bmenu_wait = 0
  aug buffer_list
  au!
  au BufCreate,BufFilePost * call <SID>BMAdd()
  au BufDelete,BufFilePre * call <SID>BMRemove()
  aug END
endfunc

func! s:BMHash(name)
  " Make name all upper case, so that chars are between 32 and 96
  let nm = substitute(a:name, ".*", '\U\0', "")
  if has("ebcdic")
    " HACK: Replace all non alphabetics with 'Z'
    "       Just to make it work for now.
    let nm = substitute(nm, "[^A-Z]", 'Z', "g")
    let sp = char2nr('A') - 1
  else
    let sp = char2nr(' ')
  endif
  " convert first six chars into a number for sorting:
  return (char2nr(nm[0]) - sp) * 0x800000 + (char2nr(nm[1]) - sp) * 0x20000 + (char2nr(nm[2]) - sp) * 0x1000 + (char2nr(nm[3]) - sp) * 0x80 + (char2nr(nm[4]) - sp) * 0x20 + (char2nr(nm[5]) - sp)
endfunc

func! s:BMHash2(name)
  let nm = substitute(a:name, ".", '\L\0', "")
  " Not exactly right for EBCDIC...
  if nm[0] < 'a' || nm[0] > 'z'
    return '&others.'
  elseif nm[0] <= 'd'
    return '&abcd.'
  elseif nm[0] <= 'h'
    return '&efgh.'
  elseif nm[0] <= 'l'
    return '&ijkl.'
  elseif nm[0] <= 'p'
    return '&mnop.'
  elseif nm[0] <= 't'
    return '&qrst.'
  else
    return '&u-z.'
  endif
endfunc

" insert a buffer name into the buffer menu:
func! s:BMFilename(name, num)
  if isdirectory(a:name)
    return
  endif
  let munge = <SID>BMMunge(a:name, a:num)
  let hash = <SID>BMHash(munge)
  if s:bmenu_short == 0
    let name = 'an ' . g:bmenu_priority . '.' . hash . ' &Buffers.' . munge
  else
    let name = 'an ' . g:bmenu_priority . '.' . hash . '.' . hash . ' &Buffers.' . <SID>BMHash2(munge) . munge
  endif
  " set 'cpo' to include the <CR>
  let cpo_save = &cpo
  set cpo&vim
  exe name . ' :b' . a:num . '<CR>'
  let &cpo = cpo_save
endfunc

" Truncate a long path to fit it in a menu item.
if !exists("g:bmenu_max_pathlen")
  let g:bmenu_max_pathlen = 35
endif
func! s:BMTruncName(fname)
  let name = a:fname
  if g:bmenu_max_pathlen < 5
    let name = ""
  else
    let len = strlen(name)
    if len > g:bmenu_max_pathlen
      let amount = (g:bmenu_max_pathlen / 2) - 2
      let left = strpart(name, 0, amount)
      let amount = g:bmenu_max_pathlen - amount - 3
      let right = strpart(name, len - amount, amount)
      let name = left . '...' . right
    endif
  endif
  return name
endfunc

func! s:BMMunge(fname, bnum)
  let name = a:fname
  if name == ''
    if !exists("g:menutrans_no_file")
      let g:menutrans_no_file = "[No file]"
    endif
    let name = g:menutrans_no_file
  else
    let name = fnamemodify(name, ':p:~')
  endif
  " detach file name and separate it out:
  let name2 = fnamemodify(name, ':t')
  if a:bnum >= 0
    let name2 = name2 . ' (' . a:bnum . ')'
  endif
  let name = name2 . "\t" . <SID>BMTruncName(fnamemodify(name,':h'))
  let name = escape(name, "\\. \t|")
  let name = substitute(name, "\n", "^@", "g")
  return name
endfunc

" When just starting Vim, load the buffer menu later
if has("vim_starting")
  augroup LoadBufferMenu
    au! VimEnter * if !exists("no_buffers_menu") | call <SID>BMShow() | endif
    au  VimEnter * au! LoadBufferMenu
  augroup END
else
  call <SID>BMShow()
endif

endif " !exists("no_buffers_menu")


" The popup menu
an 1.10 PopUp.&Undo			u
an 1.15 PopUp.-SEP1-			<Nop>
vnoremenu 1.20 PopUp.Cu&t		"+x
vnoremenu 1.30 PopUp.&Copy		"+y
cnoremenu 1.30 PopUp.&Copy		<C-Y>
nnoremenu 1.40 PopUp.&Paste		"+gP
cnoremenu 1.40 PopUp.&Paste		<C-R>+
if has("virtualedit")
  vnoremenu <script> 1.40 PopUp.&Paste	"-c<Esc><SID>Paste
  inoremenu <script> 1.40 PopUp.&Paste	<Esc><SID>Pastegi
else
  vnoremenu <script> 1.40 PopUp.&Paste	"-c<Esc>gix<Esc><SID>Paste"_x
  inoremenu <script> 1.40 PopUp.&Paste	x<Esc><SID>Paste"_s
endif
vnoremenu 1.50 PopUp.&Delete		x
an 1.55 PopUp.-SEP2-			<Nop>
vnoremenu 1.60 PopUp.Select\ Blockwise	<C-V>
an 1.70 PopUp.Select\ &Word		vaw
an 1.80 PopUp.Select\ &Line		V
an 1.90 PopUp.Select\ &Block		<C-V>
an 1.100 PopUp.Select\ &All		ggVG

" The GUI toolbar (for MS-Windows and GTK)
if has("toolbar")
  an 1.10 ToolBar.Open			:browse confirm e<CR>
  an <silent> 1.20 ToolBar.Save		:if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>
  an 1.30 ToolBar.SaveAll		:wa<CR>

  if has("printer")
    an 1.40   ToolBar.Print		:hardcopy<CR>
    vunmenu   ToolBar.Print
    vnoremenu ToolBar.Print		:hardcopy<CR>
  elseif has("unix")
    an 1.40   ToolBar.Print		:w !lpr<CR>
    vunmenu   ToolBar.Print
    vnoremenu ToolBar.Print		:w !lpr<CR>
  endif

  an 1.45 ToolBar.-sep1-		<Nop>
  an 1.50 ToolBar.Undo			u
  an 1.60 ToolBar.Redo			<C-R>

  an 1.65 ToolBar.-sep2-		<Nop>
  vnoremenu 1.70 ToolBar.Cut		"+x
  vnoremenu 1.80 ToolBar.Copy		"+y
  cnoremenu 1.80 ToolBar.Copy		<C-Y>
  nnoremenu 1.90 ToolBar.Paste		"+gP
  cnoremenu	 ToolBar.Paste		<C-R>+
  if has("virtualedit")
    vnoremenu <script>	 ToolBar.Paste	"-c<Esc><SID>Paste
    inoremenu <script>	 ToolBar.Paste	<Esc><SID>Pastegi
  else
    vnoremenu <script>	 ToolBar.Paste	"-c<Esc>gix<Esc><SID>Paste"_x
    inoremenu <script>	 ToolBar.Paste	x<Esc><SID>Paste"_s
  endif

  if !has("gui_athena")
    an 1.95   ToolBar.-sep3-		<Nop>
    an 1.100  ToolBar.Find		:promptfind<CR>
    vunmenu   ToolBar.Find
    vnoremenu ToolBar.Find		y:promptfind <C-R>"<CR>
    an 1.110  ToolBar.FindNext		n
    an 1.120  ToolBar.FindPrev		N
    an 1.130  ToolBar.Replace		:promptrepl<CR>
    vunmenu   ToolBar.Replace
    vnoremenu ToolBar.Replace		y:promptrepl <C-R>"<CR>
  endif

if 0	" disabled; These are in the Windows menu
  an 1.135 ToolBar.-sep4-		<Nop>
  an 1.140 ToolBar.New			<C-W>n
  an 1.150 ToolBar.WinSplit		<C-W>s
  an 1.160 ToolBar.WinMax		:resize 200<CR>
  an 1.170 ToolBar.WinMin		:resize 1<CR>
  an 1.180 ToolBar.WinVSplit		<C-W>v
  an 1.190 ToolBar.WinMaxWidth		<C-W>500>
  an 1.200 ToolBar.WinMinWidth		<C-W>1\|
  an 1.210 ToolBar.WinClose		:close<CR>
endif


" Only set the tooltips here if not done in a language menu file
if exists("*Do_toolbar_tmenu")
  call Do_toolbar_tmenu()
else
  let did_toolbar_tmenu = 1
  tmenu ToolBar.Open		Open file
  tmenu ToolBar.Save		Save current file
  tmenu ToolBar.SaveAll		Save all files
  tmenu ToolBar.Print		Print
  tmenu ToolBar.Undo		Undo
  tmenu ToolBar.Redo		Redo
  tmenu ToolBar.Cut		Cut to clipboard
  tmenu ToolBar.Copy		Copy to clipboard
  tmenu ToolBar.Paste		Paste from Clipboard
  if !has("gui_athena")
    tmenu ToolBar.Find		Find...
    tmenu ToolBar.FindNext	Find Next
    tmenu ToolBar.FindPrev	Find Previous
    tmenu ToolBar.Replace		Find / Replace...
  endif
 if 0	" disabled; These are in the Windows menu
  tmenu ToolBar.New		New Window
  tmenu ToolBar.WinSplit	Split Window
  tmenu ToolBar.WinMax		Maximise Window
  tmenu ToolBar.WinMin		Minimise Window
  tmenu ToolBar.WinVSplit	Split Window Vertically
  tmenu ToolBar.WinMaxWidth	Maximise Window Width
  tmenu ToolBar.WinMinWidth	Minimise Window Width
  tmenu ToolBar.WinClose	Close Window
 endif
endif

" Select a session to load; default to current session name if present
fun! s:LoadVimSesn()
  if strlen(v:this_session) > 0
    let name = v:this_session
  else
    let name = "Session.vim"
  endif
  execute "browse so " . name
endfun

" Select a session to save; default to current session name if present
fun! s:SaveVimSesn()
  if strlen(v:this_session) == 0
    let v:this_session = "Session.vim"
  endif
  execute "browse mksession! " . v:this_session
endfun

endif

endif " !exists("did_install_simple_menus")


" Restore the previous value of 'cpoptions'.
let &cpo = s:cpo_save
unlet s:cpo_save

" vim: set sw=2 :

