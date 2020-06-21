" === LEADER === "
let mapleader = "\<Space>"

" === NAVIGATION === "
"navigation panes
map <C-M-Pagedown> :tabn<CR>
map <C-M-Pageup> :tabp<CR>
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


" === NERD-TREE === "
nnoremap <silent> <tab> :NERDTreeToggle <CR>


" === CLAP === "
map <leader><leader> :Clap src<CR>
map <leader><leader><leader> :Clap grep<CR>
map <leader><tab> :Clap grep ++query<CR>
map <leader><CR> :RofiFiles<CR>
map <C-o> :Clap grep<CR>



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

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function
highlight default link WhichKeyFloating  Pmenu

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC'                      , 'open init' ]
let g:which_key_map['='] = [ '<C-W>='                           , 'balance windows' ]
let g:which_key_map['h'] = [ '<C-W>s'                           , 'split below']
let g:which_key_map['q'] = [ 'q'                                , 'quit' ]
let g:which_key_map['S'] = [ ':CtrlSpaceSaveWorkspace'          , 'save session' ]
let g:which_key_map['T'] = [ ':Rg'                              , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                           , 'split right']
let g:which_key_map['W'] = [ 'w'                                , 'write' ]
let g:which_key_map['f'] = [ '<Plug>(easymotion-overwin-f)'     , 'easy motion']

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
      \ 'v' : [':Vista!!'                , 'tag viewer'],
      \ 't' : [':NERDTreeToggle'         , 'nerd tree'],
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
      \ 'b' : [':BookmarkToggle'        , 'BookmarkToggle'],
      \ 'i' : [':BookmarkAnnotate'        , 'BookmarkAnnotate'],
      \ 'a' : [':BookmarkShowAll'        , 'BookmarkShowAll'],
      \ 'j' : [':BookmarkNext'        , 'BookmarkNext'],
      \ 'k' : [':BookmarkPrev'        , 'BookmarkPrev'],
      \ 'c' : [':BookmarkClear'        , 'BookmarkClear'],
      \ 'x' : [':BookmarkClearAll'        , 'BookmarkClearAll'],
      \ 'l' : [':BookmarkMoveUp'        , 'BookmarkMoveUp'],
      \ 'h' : [':BookmarkMoveDown'        , 'BookmarkMoveDown'],
      \ 'g' : [':BookmarkMoveToLine'        , 'BookmarkMoveToLine'],
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
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 't' : [':Rg'                    , 'text Rg'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }
      " \ 's' : [':Snippets'     , 'snippets'],

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
