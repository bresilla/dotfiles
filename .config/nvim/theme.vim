call dein#add('vim-airline/vim-airline-themes')
call dein#add('vim-airline/vim-airline')
call dein#add('edkolev/promptline.vim')
call dein#add('powerline/fonts')                "patched powerline-fonts
call dein#add('rakr/vim-one')                   "Atom ONE theme
call dein#add('dylanaraps/wal.vim')

" === HIGHLIGHTS === "
function! DarkTheme()
    "background
    set background=dark
    highlight Normal ctermbg=0
    highlight StatusLine ctermbg=1 ctermfg=0
	"visual select
    highlight Visual ctermbg=9 cterm=bold
	"cursor
    highlight Search ctermfg=7 ctermbg=9
    highlight CursorLine ctermbg=0 cterm=bold
    highlight CursorColumn ctermbg=0 cterm=bold
    highlight Cursor ctermfg=7 ctermbg=1
    "similar words
    highlight illuminatedWord ctermbg=0 cterm=bold,underline
    "squicky lines "~" hide
    highlight EndOfBuffer ctermfg=0 ctermbg=0
    "splits and number backgrounds
    highlight VertSplit ctermbg=0 ctermfg=1    "vertical split colorscheme
    highlight foldcolumn ctermbg=0                 " colum before numbers
    highlight LineNr ctermbg=0 ctermfg=1
    highlight SignColumn  ctermbg=0
    highlight CursorLineNR ctermbg=0 ctermfg=1 cterm=bold
    "special characters of endline
    highlight NonText ctermfg=9
    "completion menu
    highlight Pmenu ctermbg=0 ctermfg=15
    highlight PmenuSel ctermbg=0 ctermfg=9 cterm=bold
    highlight PmenuSbar ctermbg=0
    highlight PmenuThumb ctermbg=0
    "other
    highlight MatchParen ctermfg=231 ctermbg=1 cterm=bold
    "ctrlspace
    highlight CtrlSpaceStatus ctermbg=1 ctermfg=0
endfunction



" === THEME === "
colorscheme one
let g:one_allow_italics = 1
highlight Normal ctermbg=0
call DarkTheme()


" === AIRLINE THEME === "
let g:airline_powerline_fonts=1
" let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1 " set tabs/buffers in the top
let g:airline_section_z=airline#section#create(['%{noscrollbar#statusline(15,"─","■")} ']) "Ø ×⊙
let g:airline_exclude_preview = 1
let g:airline_theme='jellybeans'


" Color palette
let s:gui00 = "#151515"
let s:gui01 = "#1E1E29"
let s:gui02 = "#4f5b66"
let s:gui03 = "#65737e"
let s:gui04 = "#a7adba"
let s:gui05 = "#c0c5ce"
let s:gui06 = "#cdd3de"
let s:gui07 = "#d8dee9"
let s:gui08 = "#870000"
let s:gui09 = "#f99157"
let s:gui0A = "#fac863"
let s:gui0B = "#437019"
let s:gui0C = "#5fb3b3"
let s:gui0D = "#0d61ac"
let s:gui0E = "#c594c5"
let s:gui0F = "#ab7967"

let s:cterm00 = "0"
let s:cterm01 = "1"
let s:cterm02 = "2"
let s:cterm03 = "3"
let s:cterm04 = "4"
let s:cterm05 = "5"
let s:cterm06 = "6"
let s:cterm07 = "7"
let s:cterm08 = "8"
let s:cterm09 = "9"
let s:cterm0A = "10"
let s:cterm0B = "11"
let s:cterm0C = "12"
let s:cterm0D = "13"
let s:cterm0E = "14"
let s:cterm0F = "15"

let s:guiWhite = "#ffffff"
let s:guiGray = "#666666"
let s:ctermWhite = "15"
let s:ctermGray = "7"

let g:airline#themes#jellybeans#palette = {}
let s:modified = { 'airline_c': [ '#ffb964', '', 215, '', '' ] }

" Normal mode
let s:N1 = [ s:gui07 , s:gui0D , s:cterm00 , s:cterm01  ]
let s:N2 = [ s:guiWhite , s:gui01 , s:cterm00 , s:cterm01  ]
let s:N3 = [ s:gui02 , s:gui00 , s:cterm02 , s:cterm00  ]
let g:airline#themes#jellybeans#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#jellybeans#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:guiWhite , s:gui0B , s:cterm00 , s:cterm08  ]
let s:I2 = s:N2
let s:I3 = [ s:guiWhite , s:gui01 , s:cterm00 , s:cterm00  ]
let g:airline#themes#jellybeans#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#jellybeans#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:guiWhite , s:gui08 , s:cterm00 , s:cterm0B ]
let s:V2 = s:N2
let s:V3 = s:I3
let g:airline#themes#jellybeans#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#jellybeans#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:gui08 , s:gui01 , s:cterm08, s:cterm00 ]
let s:R2 = s:N2
let s:R3 = s:I3
let g:airline#themes#jellybeans#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#jellybeans#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:guiGray , s:gui01 , s:ctermGray , s:cterm01 ]
let s:IN2 = [ s:gui02 , s:gui00 , s:cterm02 , s:cterm00 ]
let s:IN3 = [ s:gui02 , s:gui00 , s:cterm02 , s:cterm00 ]
let g:airline#themes#jellybeans#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#jellybeans#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:guiWhite , s:gui01 , s:cterm00 , s:cterm01  ]
let s:CP2 = [ s:guiWhite , s:gui03 , s:cterm00 , s:cterm01  ]
let s:CP3 = [ s:guiWhite , s:gui0D , s:cterm00 , s:cterm04  ]

let g:airline#themes#jellybeans#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
