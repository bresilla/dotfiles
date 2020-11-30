" ======================== LANGUAGE ==================== "
let g:completion_chain_complete_list = {'default':[{'complete_items': ['lsp','snippet','tabnine']}]}
let g:completion_enable_snippet = 'UltiSnips'
autocmd BufEnter * lua require'completion'.on_attach()

sign define LspDiagnosticsSignError text=× texthl=LspDiagnosticsSignError linehl= numhl=
sign define LspDiagnosticsSignWarning text=! texthl=LspDiagnosticsSignWarning linehl= numhl=
sign define LspDiagnosticsSignInformation text=+ texthl=LspDiagnosticsSignInformation linehl= numhl=
sign define LspDiagnosticsSignHint text=➜ texthl=LspDiagnosticsSignHint linehl= numhl=


" ======================== WORKSPACE ==================== "
" === DMENU/ROFI === "
let g:dmenu_finder_dmenu_command = "/home/bresilla/dots/.func/wm/rofit"



" === FILEMANAGER === "
let g:lua_tree_side = 'left'
let g:lua_tree_size = 50
let g:lua_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:lua_tree_auto_open = 0
let g:lua_tree_auto_close = 1
let g:lua_tree_quit_on_open = 1
let g:lua_tree_follow = 1
let g:lua_tree_indent_markers = 1
let g:lua_tree_show_icons = { 'git': 0, 'folders': 1, 'files': 1 }
let g:lua_tree_icons = {
    \ 'default': '',
    \ 'git': {
    \   'unstaged': "×",
    \   'staged': "+",
    \   'unmerged': "═",
    \   'renamed': "➜",
    \   'untracked': "*"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': ""
    \   }
    \ }


" === INDENTATION LINES === "
let g:indentLine_char_list = ['┊']
let g:indentLine_color_term = 235
let g:indentLine_setConceal = 2
let g:indentLine_concealcursor = ""
let g:indentLine_fileTypeExclude = ['dashboard']



" === UNDO TREE === "
nnoremap U :redo<CR>
nnoremap <C-U> :UndotreeToggle<CR> :UndotreeFocus<CR>


" === FLOAT-TERM === "
noremap  <silent> <Insert>           :FloatermToggle<CR>
noremap! <silent> <Insert>           <Esc>:FloatermToggle<CR>
tnoremap <silent> <Insert>           <C-\><C-n>:FloatermToggle<CR>
let g:floaterm_position = 'center'
let g:floaterm_autoinsert = 1
let g:floaterm_width = float2nr(&columns/1.2)
let g:floaterm_height = float2nr(winheight(0)/1.5)
let g:floaterm_title = ''
let g:floaterm_borderchars = ['─', '│', '─', '│', '╭', '╮', '╯', '╰']
let g:floaterm_autoclose = 1


" === SEARCH SETTINGS === "
let g:incsearch#auto_nohlsearch = 1
map / <Plug>(incsearch-forward)
map <leader>/ <Plug>(incsearch-forward)
nnoremap * *``


" === MOVE LINES === "
nmap <C-A-Down> <Plug>MoveLineDown
nmap <C-A-Up> <Plug>MoveLineUp
vmap <C-A-Down> <Plug>MoveBlockDown
vmap <C-A-Up> <Plug>MoveBlockUp


" === COMFORTABLE SCROLLING === "
let g:comfortable_motion_no_default_key_mappings = 1
map <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
imap <ScrollWheelDown> <C-O><ScrollWheelDown>
map <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
imap <ScrollWheelUp> <C-O><ScrollWheelUp>
let g:comfortable_motion_impulse_multiplier = 2
map <silent> <Pagedown> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0))<CR>
imap <Pagedown> <C-O><Pagedown>
map <silent> <Pageup>   :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * -winheight(0))<CR>
imap <Pageup> <C-O><Pageup>
let g:comfortable_motion_friction = 60.0
let g:comfortable_motion_air_drag = 4.0
let g:comfortable_motion_interval = 1000.0 / 60


" === MULTIPLE CURSORS === "
let g:VM_default_mappings = 0
let g:VM_mouse_mappings = 1
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<M-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<M-d>'           " replace visual C-n
let g:VM_maps["Add Cursor Down"]    = '<M-S-Down>'
let g:VM_maps["Add Cursor Up"]      = '<M-S-Up>'
let g:VM_maps["Add Cursor At Pos"]  = '<M-i>'


" === DIRENV === "
if exists("$EXTRA_VIM")
  for path in split($EXTRA_VIM, ':')
    exec "source ".path
  endfor
endif


" === SEMICOLON === &&  === COMMENTER === "
autocmd FileType cpp nmap <silent> , <Plug>(cosco-commaOrSemiColon)
autocmd FileType rust nmap <silent> , <Plug>(cosco-commaOrSemiColon)
nmap <silent> # :Commentary<CR>


" === VIM FADE === "
let g:vimade = {}
let g:vimade.fadelevel = 0.6
let g:vimade.enablesigns = 1
let g:vimade.colbufsize = 20
let g:vimade.rowbufsize = 20
let g:vimade.checkinterval = 100
let g:vimade.enablefocusfading = 1
let g:vimade.detecttermcolors = 1


" === DASHBOARD === "
let g:dashboard_default_executive ='telescope'
let g:dashboard_default_header = "cres"
let g:dashboard_custom_header = [
    \ '                            ▄▄▄▄▄▄▄▄                             ' ,
    \ '                       ▄▄██████████████▄▄                        ' ,
    \ '                    ▄██████████████████████▄                     ' ,
    \ '                  ▄██████████████████████████▄                   ' ,
    \ '                ▄█▀▄████████████████████████▄▀█▄                 ' ,
    \ '               ▄█  ██████████████████████████  █▄                ' ,
    \ '              ▄█▀ ▄██████████████████████████▄ ▀█▄               ' ,
    \ '              █▀  ████████████████████████████  ▀█               ' ,
    \ '                ▄██████████████████████████████▄                 ' ,
    \ '              ████████████████████████████████████               ' ,
    \ '              ████████████████████████████████████               ' ,
    \ '              ▀██▀  ▀▀████████████████████▀▀  ▀██▀               ' ,
    \ '               ██       ▀██▀████████▀██▀       ██                ' ,
    \ '                ██        ▀█ ██████ █▀        ██                 ' ,
    \ '                 ██▄        █ ████ █        ▄██                  ' ,
    \ '                  ███▄▄▄     █ ██ █     ▄▄▄███                   ' ,
    \ '                   ▀▀▀▀▀████▄██████▄████▀▀▀▀▀                    ' ,
    \ '                     ██▄ █████▄██▄█████ ▄██                      ' ,
    \ '                      ██▄ ████████████ ▄██                       ' ,
    \ '                       ▀█████▀▄▄▄▄▀█████▀                        ' ,
    \ '                         ▀▀██████████▀▀                          ' ,
    \ '                            ▀██████▀                             ' ,
    \ '                                                                 ' ,
    \ '                                                                 ' ,
    \ '█                                                 █ █            ' ,
    \ '█                                                 █ █            ' ,
    \ '█▀▀▀▀▀▀▀▀▀█ █▀▀▀▀▀▀▀▀▀▀ █▀▀▀▀▀▀▀▀▀█ █▀▀▀▀▀▀▀▀▀▀ █ █ █ ▀▀▀▀▀▀▀▀▀▀█' ,
    \ '█         █ █           █▀▀▀▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀█ █ █ █ █▀▀▀▀▀▀▀▀▀█' ,
    \ '█▄▄▄▄▄▄▄▄▄█ █           █▄▄▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄▄▄▄█ █ █ █ █▄▄▄▄▄▄▄▄▄█' ,
    \ ]
let g:dashboard_custom_section={
    \ 'last_session': { 'description': ['... press [ENTER] to load session ...'], 'command': ':SessionLoad' },
\ }
" \ 'load_tree': { 'description': ['... press TAB to show tree ...'], 'command': ':LuaTreeOpen' },
" \ 'open_finder': { 'description': ['... press SPACE SPACE to open finder ...'], 'command': ':Telescope git_files' },
let foo = "LESS IS SIGNIFICANTLY MORE"
let g:dashboard_custom_footer = [foo]
function! Dashboard_pref()
    setlocal nocursorcolumn nocursorline
endfunction
autocmd Filetype dashboard call Dashboard_pref()
