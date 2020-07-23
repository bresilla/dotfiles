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


" === AIRLINE THEME === "
let g:airline_powerline_fonts=1
" let g:airline_theme='deus'
let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled = 1 " set tabs/buffers in the top
let g:airline_section_z=airline#section#create(['%{noscrollbar#statusline(15,"─","■")} ']) "Ø ×⊙
let g:airline_exclude_preview = 1


" === THEME === "
colorscheme one
let g:one_allow_italics = 1
highlight Normal ctermbg=0
call DarkTheme()

