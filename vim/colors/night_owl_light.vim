" ===============================================================
" night_owl_light
" 
" URL: 
" Author: Macguire Rintoul (https://macguire.me)
" License: MIT
" Last Change: 2020/05/18 22:30
" ===============================================================

set background=light
hi clear
if exists("syntax_on")
syntax reset
endif
let g:colors_name="night_owl_light"


let Italic = ""
if exists('g:night_owl_light_italic')
let Italic = "italic"
endif
let g:night_owl_light_italic = get(g:, 'night_owl_light_italic', 0)

let Bold = ""
if exists('g:night_owl_light_bold')
let Bold = "bold"
endif

let g:night_owl_light_bold = get(g:, 'night_owl_light_bold', 0)
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#F0F0F0 ctermbg=255 gui=NONE cterm=NONE
hi Cursor guifg=#90A7B2 ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorIM guifg=#90A7B2 ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#F0F0F0 ctermbg=255 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#F0F0F0 ctermbg=255 gui=NONE cterm=NONE
hi CursorLineNr guifg=NONE ctermfg=NONE guibg=#F0F0F0 ctermbg=255 gui=NONE cterm=NONE
hi Directory guifg=#403f53 ctermfg=238 guibg=#FBFBFB ctermbg=15 gui=NONE cterm=NONE
hi LineNr guifg=#90A7B2 ctermfg=109 guibg=#FBFBFB ctermbg=15 gui=NONE cterm=NONE
hi Normal guifg=#403f53 ctermfg=238 guibg=#FBFBFB ctermbg=15 gui=NONE cterm=NONE
hi Comment guifg=#939dbb ctermfg=247 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi Constant guifg=#4876d6 ctermfg=68 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#aa0982 ctermfg=126 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#bc5454 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

if exists('*term_setansicolors')
let g:terminal_ansi_colors = [
\ '#403f53', '#288ed7', '#2AA298', '#08916a', '#d6438a', '#de3d3b', '#F0F0F0', '#E0AF02', '#403f53', '#FF0000', '#00FF00', '#de3d3b', '#0000FF', '#FF0000', '#0000FF', '#FFFFFF', '#FFFFFF', '#403f53', 
\ ]
endif

if has('nvim')
let g:terminal_color_color_0 = '#403f53'
let g:terminal_color_color_1 = '#288ed7'
let g:terminal_color_color_2 = '#2AA298'
let g:terminal_color_color_3 = '#08916a'
let g:terminal_color_color_4 = '#d6438a'
let g:terminal_color_color_5 = '#de3d3b'
let g:terminal_color_color_6 = '#F0F0F0'
let g:terminal_color_color_7 = '#E0AF02'
let g:terminal_color_color_8 = '#403f53'
let g:terminal_color_color_9 = '#FF0000'
let g:terminal_color_color_10 = '#00FF00'
let g:terminal_color_color_11 = '#de3d3b'
let g:terminal_color_color_12 = '#0000FF'
let g:terminal_color_color_13 = '#FF0000'
let g:terminal_color_color_14 = '#0000FF'
let g:terminal_color_color_15 = '#FFFFFF'
let g:terminal_color_foreground = '#FFFFFF'
let g:terminal_color_background = '#403f53'
endif

" ===================================
" Generated by Estilo 1.5.0
" https://github.com/jacoborus/estilo
" ===================================
