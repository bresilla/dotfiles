colorscheme one
set background=dark
set notermguicolors


" === HIGHLIGHTS === "
"background
highlight Normal ctermbg=0
"visual select
highlight Visual ctermbg=239 cterm=bold 
"cursor
highlight Search ctermfg=0 ctermbg=9 
highlight CursorLine ctermbg=236 cterm=bold 
highlight CursorColumn ctermbg=236 cterm=bold 
highlight Cursor ctermfg=15 ctermbg=1 
"similar words
highlight illuminatedWord ctermbg=0 cterm=bold,underline
"squicky lines "~" hide
highlight EndOfBuffer ctermfg=0 ctermbg=0
"splits and number backgrounds
highlight VertSplit ctermbg=0 ctermfg=1 
highlight foldcolumn ctermbg=0 
highlight LineNr ctermbg=0 ctermfg=248 
highlight SignColumn  ctermbg=0 
highlight CursorLineNR ctermbg=0 ctermfg=1 cterm=bold 
"special characters of endline
highlight NonText ctermbg=0 ctermfg=235
"completion menu
highlight Pmenu ctermbg=239 ctermfg=15 
highlight PmenuSel ctermbg=236 ctermfg=1 cterm=bold 
highlight PmenuSbar ctermbg=0 
highlight PmenuThumb ctermbg=0 
"other
highlight MatchParen ctermfg=15 ctermbg=1 cterm=bold
highlight FloatermBorder ctermfg=1 ctermbg=0 
highlight Floaterm ctermbg=0  


" === DIAGNOSTICS === "
highlight LspDiagnosticsVirtualTextSpace ctermbg=0 ctermfg=235 cterm=italic
sign define LspDiagnosticsSignError text=×
highlight LspDiagnosticsVirtualTextError ctermbg=235 ctermfg=131 cterm=italic
highlight LspDiagnosticsSignError ctermbg=0 ctermfg=124 cterm=bold
" highlight LspDiagnosticsFloatingError ctermfg=131 cterm=italic
sign define LspDiagnosticsSignWarning text=!
highlight LspDiagnosticsVirtualTextWarning ctermbg=235 ctermfg=94 cterm=italic
highlight LspDiagnosticsSignWarning ctermbg=0 ctermfg=184 cterm=bold
" highlight LspDiagnosticsFloatingWarning ctermfg=94 cterm=italic
sign define LspDiagnosticsSignInformation text=i
highlight LspDiagnosticsVirtualTextInformation ctermbg=235 ctermfg=140 cterm=italic
highlight LspDiagnosticsSignInformation ctermbg=0 ctermfg=69 cterm=bold
" highlight LspDiagnosticsFloatingInformation ctermfg=140 cterm=italic
sign define LspDiagnosticsSignHint text=➜
highlight LspDiagnosticsVirtualTextHint ctermbg=235 ctermfg=146 cterm=italic
highlight LspDiagnosticsSignHint ctermbg=0 ctermfg=69 cterm=bold
" highlight LspDiagnosticsFloatingHint ctermfg=146 cterm=italic


" === TABS === "
highlight BufferCurrent ctermbg=0 ctermfg=1 cterm=bold
highlight BufferCurrentMod ctermbg=0 ctermfg=1
highlight BufferCurrentSign ctermbg=0 ctermfg=1
highlight BufferCurrentTarget ctermbg=0 ctermfg=15
highlight BufferVisible ctermbg=239 ctermfg=248
highlight BufferVisibleMod ctermbg=239 ctermfg=0
highlight BufferVisibleSign ctermbg=239 ctermfg=0
highlight BufferVisibleTarget ctermbg=239 ctermfg=0
highlight BufferInactive ctermbg=239 ctermfg=248
highlight BufferInactiveMod ctermbg=239 ctermfg=0
highlight BufferInactiveSign ctermbg=239 ctermfg=0
highlight BufferInactiveTarget ctermbg=239 ctermfg=0
highlight BufferTabpages ctermbg=239 ctermfg=0
highlight BufferTabpageFill ctermbg=239 ctermfg=0
highlight TabLineFill ctermfg=1 ctermbg=239
highlight default link ElNormal BufferCurrent


" === STATUS-LINE === "
highlight StatusLine ctermfg=248 ctermbg=239
highlight StatusLineNC ctermfg=0 ctermbg=239

highlight ElNormal ctermbg=0 ctermfg=1 cterm=bold
highlight ElInsert ctermbg=1 ctermfg=0 cterm=bold


" === WHICH KEY === "
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function
highlight default link WhichKeyFloating  Pmenu

