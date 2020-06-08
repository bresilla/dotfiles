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
    highlight FloatermBorder ctermfg=1 ctermbg=0
    highlight Floaterm ctermbg=0
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
let g:airline#extensions#tabline#enabled = 1 " set tabs/buffers in the top
let g:airline_section_z=airline#section#create(['%{noscrollbar#statusline(15,"─","■")} ']) "Ø ×⊙
let g:airline_exclude_preview = 1
let g:airline_theme='dark'


let s:term_black = 0
let s:term_red = 1
let s:term_green = 2
let s:term_yellow = 3
let s:term_blue = 4
let s:term_purple = 5
let s:term_grey = 8
let s:term_white = 15

let g:airline#themes#dark#palette = {}

let s:airline_a_normal   = [ '#00005f' , '#dfff00' , s:term_black , s:term_red ]
let s:airline_b_normal   = [ '#ffffff' , '#444444' , s:term_black , s:term_white ]
let s:airline_c_normal   = [ '#9cffd3' , '#202020' , s:term_red , s:term_black ]
let g:airline#themes#dark#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)
let g:airline#themes#dark#palette.normal_modified = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_a_normal)

let s:airline_a_insert = [ '#00005f' , '#00dfff' , s:term_black  , s:term_blue  ]
let s:airline_b_insert = s:airline_b_normal
let s:airline_c_insert = [ '#ffffff' , '#000080' , s:term_blue, '' ]
let g:airline#themes#dark#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let g:airline#themes#dark#palette.insert_modified = g:airline#themes#dark#palette.normal_modified

let s:airline_a_replace = [ '#000000' , '#ffaf00' , s:term_yellow, s:term_yellow ]
let s:airline_b_replace = s:airline_b_normal
let s:airline_c_replace = [ '#ffffff' , '#5f0000' ,  s:term_green, '' ]
let g:airline#themes#dark#palette.replace = airline#themes#generate_color_map(s:airline_a_replace, s:airline_b_replace, s:airline_c_replace)
let g:airline#themes#dark#palette.replace_modified = g:airline#themes#dark#palette.normal_modified

let s:airline_a_visual = [ '#000000' , '#ffaf00' , s:term_black, s:term_green ]
let s:airline_b_visual = s:airline_b_normal
let s:airline_c_visual = [ '#ffffff' , '#5f0000' ,  s:term_green, '' ]
let g:airline#themes#dark#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let g:airline#themes#dark#palette.visual_modified = g:airline#themes#dark#palette.normal_modified



let s:airline_a_inactive = [ '#4e4e4e' , '#1c1c1c' , s:term_white, s:term_black ]
let s:airline_b_inactive = [ '#4e4e4e' , '#262626' , s:term_white, s:term_black ]
let s:airline_c_inactive = [ '#9cffd3' , '#202020' , s:term_white, s:term_black ]
let g:airline#themes#dark#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#dark#palette.inactive_modified = g:airline#themes#dark#palette.normal_modified

let s:airline_a_commandline = [ '#0000ff' , '#0cff00' , s:term_black  , s:term_red ]
let s:airline_b_commandline = [ '#ffffff' , '#444444' , s:term_white , s:term_black ]
let s:airline_c_commandline = [ '#9cffd3' , '#202020' , s:term_black  , s:term_white ]
let g:airline#themes#dark#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)
let g:airline#themes#dark#palette.commandline_modified = g:airline#themes#dark#palette.normal_modified

let g:airline#themes#dark#palette.accents = { 'red': [ '#ff0000' , '' , 160 , ''  ] }

let s:WI = [ '#282C34', '#E5C07B', s:term_black, s:term_yellow ]
let g:airline#themes#dark#palette.normal.airline_warning = [ s:WI[0], s:WI[1], s:WI[2], s:WI[3] ]
let g:airline#themes#dark#palette.normal_modified.airline_warning = g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.insert.airline_warning = g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.insert_modified.airline_warning = g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.visual.airline_warning = g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.visual_modified.airline_warning = g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.replace.airline_warning = g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.replace_modified.airline_warning = g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.commandline.airline_warning = g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.commandline_modified.airline_warning = g:airline#themes#dark#palette.normal.airline_warning

let s:ER = [ '#282C34', '#E06C75', s:term_black, s:term_red ]
let g:airline#themes#dark#palette.normal.airline_error = [ s:ER[0], s:ER[1], s:ER[2], s:ER[3] ]
let g:airline#themes#dark#palette.normal_modified.airline_error = g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.insert.airline_error = g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.insert_modified.airline_error = g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.visual.airline_error = g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.visual_modified.airline_error = g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.replace.airline_error = g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.replace_modified.airline_error = g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.commandline.airline_error = g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.commandline_modified.airline_error = g:airline#themes#dark#palette.normal.airline_error
