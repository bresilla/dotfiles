lua package.path = '/home/bresilla/.config/nvim/?.lua'
lua require('inits')


" ======================== LANGUAGE ==================== "
let g:completion_chain_complete_list = {'default':[{'complete_items': ['lsp','snippet','tabnine']}]}
let g:completion_enable_snippet = 'UltiSnips'
autocmd BufEnter * lua require'completion'.on_attach()

sign define LspDiagnosticsSignError text=× texthl=LspDiagnosticsSignError linehl= numhl=
sign define LspDiagnosticsSignWarning text=! texthl=LspDiagnosticsSignWarning linehl= numhl=
sign define LspDiagnosticsSignInformation text=+ texthl=LspDiagnosticsSignInformation linehl= numhl=
sign define LspDiagnosticsSignHint text=➜ texthl=LspDiagnosticsSignHint linehl= numhl=


" ======================== WORKSPACE ==================== "


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


" === HIGHLIGHT YANK === "
au TextYankPost * silent! lua vim.highlight.on_yank()


" === FOCUS === "
"change color on focus lost
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn


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
    \ '▄                                                 ▄ ▄            ' ,
    \ '█                                                 █ █            ' ,
    \ '█▀▀▀▀▀▀▀▀▀█ █▀▀▀▀▀▀▀▀▀▀ █▀▀▀▀▀▀▀▀▀█ █▀▀▀▀▀▀▀▀▀▀ █ █ █ ▀▀▀▀▀▀▀▀▀▀█' ,
    \ '█         █ █           █▀▀▀▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀█ █ █ █ █▀▀▀▀▀▀▀▀▀█' ,
    \ '▀▀▀▀▀▀▀▀▀▀▀ ▀           ▀▀▀▀▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀▀ ▀ ▀ ▀ ▀▀▀▀▀▀▀▀▀▀▀' ,
    \ ]
let g:dashboard_custom_section={
    \ 'last_session': { 'description': ['... press [ENTER] to load session ...'], 'command': ':SessionLoad' },
\ }
" \ 'load_tree': { 'description': ['... press TAB to show tree ...'], 'command': ':LuaTreeOpen' },
" \ 'open_finder': { 'description': ['... press SPACE SPACE to open finder ...'], 'command': ':Telescope git_files' },
let foo = "LESS IS SIGNIFICANTLY MORE"
let g:dashboard_custom_footer = [foo]



" === KEYS === "
" LEADER
" let mapleader = "\<Space>"

" === NAVIGATION === "
"navigation panes
" map <C-Pagedown> :BufferNext<CR>
" map <C-Pageup> :BufferPrevious<CR>
" map <C-M-Pagedown> :BufferMoveNext<CR>
" map <C-M-Pageup> :BufferMovePrevious<CR>
" map <C-Up> <C-k>
" map <C-Down> <C-j>
" map <C-Left> <C-h>
" map <C-Right> <C-l>

"move vertically on soft lines
" nnoremap j gj
" nnoremap k gk
" vnoremap j gj
" vnoremap k gk
" nnoremap <Down> gj
" nnoremap <Up> gk
" vnoremap <Down> gj
" vnoremap <Up> gk
" inoremap <Down> <C-o>gj
" inoremap <Up> <C-o>gk

"move horizontally
" map <home> %
" map <end> $

"go to last tab
" nmap - :e #<cr>

" === REMOVE HABITS === "
" nnoremap d "_d
" vnoremap d "_d
" nnoremap c "_c
" vnoremap c "_c
" map <S-Up> <Nop>
" map <S-Down> <Nop>

" === CHANGE CASE === "
" inoremap <M-u> <ESC>viw~
" nnoremap <M-u> viw~<ESC>


" === CHANGE INDENT === "
" vnoremap < <gv
" vnoremap > >gv


" === LSP and COMPLETION === "
" let g:completion_confirm_key = "\<CR>"
" inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
" inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
" inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
" " imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
"                  " \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"
" nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
" nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
" nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> f     <cmd>lua vim.lsp.diagnostic.goto_next { min_severity = "info", show_config=true }<CR>
" nnoremap <silent> F     <cmd>lua vim.lsp.buf.code_action()<cr>


" ===  RUNNER === "
" noremap <silent><f7>        :FloatermNew --autoclose=0 run<cr>
" tnoremap <silent><f7>       <C-\><C-n>:FloatermToggle<CR>
" noremap <silent><f5>        :FloatermNew --autoclose=0 build<cr>
" tnoremap <silent><f5>       <C-\><C-n>:FloatermToggle<CR>



" " ===  SESSIONS === "
" nnoremap <silent> ss <cmd>SessionSave<CR>


" === FILE-TREE === "
nnoremap <silent> <tab> :LuaTreeToggle <CR>
let g:lua_tree_bindings = {
    \ 'edit':            ['<CR>'],
    \ 'edit_vsplit':     'v',
    \ 'edit_split':      's',
    \ 'edit_tab':        't',
    \ 'toggle_dotfiles': 'i',
    \ 'refresh':         'r',
    \ 'create':          'n',
    \ 'remove':          'd',
    \ 'rename':          'm',
    \ 'cut':             'x',
    \ 'copy':            'c',
    \ 'paste':           'p',
    \ }
au FileType LuaTree lua vim.api.nvim_buf_set_keymap(0, 'n', '<tab>', ':LuaTreeClose<CR>', {})


" === FINDER === "
" map <leader><leader> <cmd>lua require('telescope.builtin').git_files()<cr>
" map <C-Space> <cmd>lua require('telescope.builtin').buffers(center_list)<cr>
" map <C-p> :DmenuFinderFindFile<CR>
" map <leader><CR> :DmenuFinderFindFile<CR>



" === COMMENTARY === "
" map <silent> # :Commentary<CR>


" === WHICH KEY === "
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100
let g:which_key_vertical = 0
let g:which_key_use_floating_win = 1
let g:which_key_floating_opts = { 'row': '1' }


" Hide status line
" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC'                      , 'open init' ]
let g:which_key_map['='] = [ '<C-W>='                           , 'balance windows' ]
let g:which_key_map['h'] = [ '<C-W>s'                           , 'split below']
let g:which_key_map['q'] = [ 'q'                                , 'quit' ]
let g:which_key_map['T'] = [ ':Rg'                              , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                           , 'split right']
let g:which_key_map['W'] = [ 'w'                                , 'write' ]

" let g:which_key_map['<CR>'] = 'which_key_ignore'
let g:which_key_map['/'] = 'which_key_ignore'

" Group mappings

" p is for actions
let g:which_key_map.p = {
      \ 'name' : '+vim-plug' ,
      \ 'u' : [':PlugUpdate'                , 'Update'],
      \ 'c' : [':PlugClean'                 , 'Clean'],
      \ }


" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'c' : [':ColorizerToggle'        , 'colorizer'],
      \ 'e' : [':CocCommand explorer'    , 'explorer'],
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ }

" m is for macros
let g:which_key_map.m = {
      \ 'name' : '+macro' ,
      \ 'q' : ['<plug>(Mac_RecordNew)'                          , 'new macro'],
      \ 'h' : [':DisplayMacroHistory'                           , 'history'],
      \ 'a' : ['<plug>(Mac_Append)'                             , 'append to macro'],
      \ 'e' : {
        \ 'name': '+edit-macro',
        \ 'p' : ['<plug>(Mac_Prepend)'                          , 'prepend to macro'],
        \ 'n' : ['<plug>(Mac_NameCurrentMacro)'                 , 'name macro'],
        \ },
      \ 'p' : ['<plug>(Mac_SearchForNamedMacroAndPlay)'         , 'search & execute'],
      \ 's' : ['<plug>(Mac_SearchForNamedMacroAndSelect)'       , 'search & select'],
      \ 'o' : ['<plug>(Mac_SearchForNamedMacroAndOverwrite)'    , 'search & overwrite'],
      \ 'r' : ['<plug>(Mac_SearchForNamedMacroAndRename)'       , 'search & rename'],
      \ 'd' : ['<plug>(Mac_SearchForNamedMacroAndDelete)'       , 'search & delete'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+bookmarks' ,
      \ 'b' : [':BookmarkToggle'          , 'BookmarkToggle'],
      \ 'i' : [':BookmarkAnnotate'          , 'BookmarkAnnotate'],
      \ 'a' : [':BookmarkShowAll'          , 'BookmarkShowAll'],
      \ 'j' : [':BookmarkNext'          , 'BookmarkNext'],
      \ 'k' : [':BookmarkPrev'          , 'BookmarkPrev'],
      \ 'c' : [':BookmarkClear'          , 'BookmarkClear'],
      \ 'x' : [':BookmarkClearAll'          , 'BookmarkClearAll'],
      \ 'l' : [':BookmarkMoveUp'          , 'BookmarkMoveUp'],
      \ 'h' : [':BookmarkMoveDown'          , 'BookmarkMoveDown'],
      \ 'g' : [':BookmarkMoveToLine'          , 'BookmarkMoveToLine'],
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':Commands'              , 'commands'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'b' : [':BLines'                , 'current buffer'],
      \ 'B' : [':Buffers'               , 'open buffers'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'f' : [':Files'                 , 'files'],
      \ 'g' : [':GFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 't' : [':Rg'                    , 'text Rg'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'l' : [':call LanguageClient_contextMenu()'                         , 'menu'],
      \ 'd' : [':call LanguageClient_textDocument_definition()'             , 'definition'],
      \ 'h' : [':call LanguageClient#textDocument_hover()'                  , 'hover'],
      \ 'r' : [':call LanguageClient_textDocument_rename()'                 , 'rename'],
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 's' : [':FloatermNew ncdu .'                            , 'ncdu'],
      \ }

" w is for wiki
let g:which_key_map.w = {
      \ 'name' : '+wiki' ,
      \ 'w' : ['<Plug>VimwikiIndex'                              , 'ncdu'],
      \ 'n' : ['<plug>(wiki-open)'                              , 'ncdu'],
      \ 'j' : ['<plug>(wiki-journal)'                              , 'ncdu'],
      \ 'R' : ['<plug>(wiki-reload)'                              , 'ncdu'],
      \ 'c' : ['<plug>(wiki-code-run)'                              , 'ncdu'],
      \ 'b' : ['<plug>(wiki-graph-find-backlinks)'                              , 'ncdu'],
      \ 'g' : ['<plug>(wiki-graph-in)'                              , 'ncdu'],
      \ 'G' : ['<plug>(wiki-graph-out)'                              , 'ncdu'],
      \ 'l' : ['<plug>(wiki-link-toggle)'                              , 'ncdu'],
      \ 'd' : ['<plug>(wiki-page-delete)'                              , 'ncdu'],
      \ 'r' : ['<plug>(wiki-page-rename)'                              , 'ncdu'],
      \ 't' : ['<plug>(wiki-page-toc)'                              , 'ncdu'],
      \ 'T' : ['<plug>(wiki-page-toc-local)'                              , 'ncdu'],
      \ 'e' : ['<plug>(wiki-export)'                              , 'ncdu'],
      \ 'u' : ['<plug>(wiki-list-uniq)'                              , 'ncdu'],
      \ 'U' : ['<plug>(wiki-list-uniq-local)'                              , 'ncdu'],
      \ }

call which_key#register('<Space>', "g:which_key_map")
