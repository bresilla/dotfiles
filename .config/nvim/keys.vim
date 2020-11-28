" === LEADER === "
let mapleader = "\<Space>"

" === NAVIGATION === "
"navigation panes
map <C-Pagedown> :BufferNext<CR>
map <C-Pageup> :BufferPrevious<CR>
map <C-M-Pagedown> :BufferMoveNext<CR>
map <C-M-Pageup> :BufferMovePrevious<CR>
map <C-Up> <C-k>
map <C-Down> <C-j>
map <C-Left> <C-h>
map <C-Right> <C-l>

"move vertically on soft lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

"move horizontally
map <home> %
map <end> $

"go to last tab
nmap - :e #<cr>

" === REMOVE HABITS === "
nnoremap d "_d
vnoremap d "_d
nnoremap c "_c
vnoremap c "_c
map <S-Up> <Nop>
map <S-Down> <Nop>

" === CHANGE CASE === "
inoremap <M-u> <ESC>viw~
nnoremap <M-u> viw~<ESC>


" === CHANGE CASE === "
vnoremap < <gv
vnoremap > >gv


" === LSP and COMPLETION === "
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
                 \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> L     <cmd>lua vim.lsp.diagnostic.goto_next { min_severity = "info", show_config=true }<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>


" ===  RUNNER === "
noremap <silent><f7>        :FloatermNew --autoclose=0 run<cr>
tnoremap <silent><f7>       <C-\><C-n>:FloatermToggle<CR>
noremap <silent><f5>        :FloatermNew --autoclose=0 build<cr>
tnoremap <silent><f5>       <C-\><C-n>:FloatermToggle<CR>



" ===  SESSIONS === "
nnoremap <silent> ss <cmd>SessionSave<CR>


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
map <leader><leader> <cmd>lua require('telescope.builtin').git_files()<cr>
map <C-Space> <cmd>lua require('telescope.builtin').buffers(center_list)<cr>
map <C-p> :DmenuFinderFindFile<CR>
map <leader><CR> :DmenuFinderFindFile<CR>



" === COMMENTARY === "
map <silent> # :Commentary<CR>


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
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

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
