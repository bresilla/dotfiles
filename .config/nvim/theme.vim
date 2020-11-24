" === HIGHLIGHTS === "
function! DarkTheme()
    "background
    highlight Normal guibg=0 ctermbg=0
    highlight StatusLine ctermbg=1 ctermfg=0 guibg=1 guifg=0
    "visual select
    highlight Visual ctermbg=239 cterm=bold guibg=9 gui=bold
    "cursor
    highlight Search ctermfg=0 ctermbg=9 guifg=7 guibg=9
    highlight CursorLine ctermbg=235 cterm=bold guibg=0 gui=bold
    highlight CursorColumn ctermbg=235 cterm=bold guibg=0 gui=bold
    " highlight Cursor ctermfg=15 ctermbg=1 guifg=7 guibg=1
    "similar words
    highlight illuminatedWord ctermbg=0 cterm=bold,underline guibg=0 gui=bold,underline
    "squicky lines "~" hide
    highlight EndOfBuffer ctermfg=0 ctermbg=0 guifg=#000000 guibg=0
    "splits and number backgrounds
    highlight VertSplit ctermbg=0 ctermfg=1 guibg=0 guifg=1
    highlight foldcolumn ctermbg=0 guibg=0
    highlight LineNr ctermbg=0 ctermfg=15 guibg=0 guifg=15
    highlight SignColumn  ctermbg=0 guibg=0
    highlight CursorLineNR ctermbg=0 ctermfg=1 cterm=bold guibg=0 guifg=1 gui=bold
    "special characters of endline
    highlight NonText ctermbg=0 ctermfg=232 guifg=#000000 guibg=0
    "completion menu
    highlight Pmenu ctermbg=239 ctermfg=15 guibg=0 guifg=15
    highlight PmenuSel ctermbg=235 ctermfg=1 cterm=bold guibg=0 guifg=9 gui=bold
    highlight PmenuSbar ctermbg=0 guibg=0
    highlight PmenuThumb ctermbg=0 guibg=0
    "other
    highlight MatchParen ctermfg=15 ctermbg=1 cterm=bold  guifg=231 guibg=1 gui=bold
    highlight FloatermBorder ctermfg=1 ctermbg=0 guifg=1 guibg=0
    highlight Floaterm ctermbg=0  guibg=0
endfunction
" === THEME === "
set notermguicolors
colorscheme one
set background=dark
call DarkTheme()


sign define LspDiagnosticsSignError text=×
highlight LspDiagnosticsVirtualTextError ctermbg=232 ctermfg=131 cterm=italic
highlight LspDiagnosticsSignError ctermbg=0 ctermfg=124 cterm=bold
highlight LspDiagnosticsFloatingError ctermbg=1 ctermfg=0 cterm=italic
sign define LspDiagnosticsSignWarning text=!
highlight LspDiagnosticsVirtualTextWarning ctermbg=232 ctermfg=94 cterm=italic
highlight LspDiagnosticsSignWarning ctermbg=0 ctermfg=184 cterm=bold
highlight LspDiagnosticsFloatingWarning ctermbg=1 ctermfg=0 cterm=italic
sign define LspDiagnosticsSignInformation text=i
highlight LspDiagnosticsVirtualTextInformation ctermbg=232 ctermfg=140 cterm=italic
highlight LspDiagnosticsSignInformation ctermbg=0 ctermfg=69 cterm=bold
highlight LspDiagnosticsFloatingInformation ctermbg=1 ctermfg=0 cterm=italic
sign define LspDiagnosticsSignHint text=➜
highlight LspDiagnosticsVirtualTextHint ctermbg=232 ctermfg=146 cterm=italic
highlight LspDiagnosticsSignHint ctermbg=0 ctermfg=69 cterm=bold
highlight LspDiagnosticsFloatingHint ctermbg=1 ctermfg=0 cterm=italic


highlight BufferCurrent ctermbg=0 ctermfg=1 cterm=bold
highlight BufferCurrentMod ctermbg=0 ctermfg=1
highlight BufferCurrentSign ctermbg=0 ctermfg=1
highlight BufferCurrentTarget ctermbg=0 ctermfg=15
highlight BufferVisible ctermbg=239 ctermfg=15 
highlight BufferVisibleMod ctermbg=239 ctermfg=0
highlight BufferVisibleSign ctermbg=239 ctermfg=0
highlight BufferVisibleTarget ctermbg=239 ctermfg=0
highlight BufferInactive ctermbg=239 ctermfg=15
highlight BufferInactiveMod ctermbg=239 ctermfg=0
highlight BufferInactiveSign ctermbg=239 ctermfg=0
highlight BufferInactiveTarget ctermbg=239 ctermfg=0
highlight BufferTabpages ctermbg=239 ctermfg=0
highlight BufferTabpageFill ctermbg=239 ctermfg=0
highlight TabLineFill ctermfg=1 ctermbg=239 guibg=#151515


" === FOCUS === "
"change color on focus lost
function! s:beactive()
    " set number
    " set relativenumber
    highlight LineNr ctermbg=0 ctermfg=15
    " syntax on
    " set laststatus=2
endfunction
function! s:bepassive()
    " set norelativenumber
    " set nonumber
    highlight LineNr ctermbg=0 ctermfg=7
    " set laststatus=1
    " syntax off
endfunction
au FocusLost * silent! call s:bepassive()
au FocusGained * silent! call s:beactive()



" === VIM FADE === "
let g:vimade = {}
let g:vimade.fadelevel = 0.6
let g:vimade.enablesigns = 1
let g:vimade.colbufsize = 20
let g:vimade.rowbufsize = 20
let g:vimade.checkinterval = 100
let g:vimade.enablefocusfading = 1
let g:vimade.detecttermcolors = 1



" === FLASH YANK === "
let g:highlightedyank_highlight_duration = 300



" === AIRLINE THEME === "
let g:airline_powerline_fonts=0
let g:airline#extensions#languageclient#enabled = 0
let g:airline#extensions#tabline#enabled = 0
let g:airline_theme='dark_minimal'
