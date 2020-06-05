" ======================== LANGUAGE ==================== "
" === LANGUAGE SERVER === "
call dein#add('autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'})
set runtimepath+=~/.config/dein/repos/github.com/autozimu/LanguageClient-neovim
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
            \ 'rust': ['rust-analyzer'],
            \ 'go': ['gopls'],
            \ 'nim': ['nimlsp'],
            \ 'python': ['/usr/local/bin/pyls'],
            \ 'c': ['clangd', '-compile-commands-dir=' . getcwd() . '/build'],
            \ 'cpp': ['clangd', '-compile-commands-dir=' . getcwd() . '/build'],
            \ 'julia': ['julia', '--startup-file=no', '--history-file=no', '-e', '
            \       using LanguageServer;
            \       using Pkg;
            \       import StaticLint;
            \       import SymbolServer;
            \       env_path = dirname(Pkg.Types.Context().env.project_file);
            \       debug = false;
            \       server = LanguageServer.LanguageServerInstance(stdin, stdout, debug, env_path, "", Dict());
            \       server.runlinter = true;
            \       run(server);']
            \ }
" \ 'cpp': ['cquery', '--log-file=/tmp/cq.log'],
nnoremap <C-tab> :call LanguageClient#textDocument_hover()<CR>
nnoremap <tab> :call LanguageClient_textDocument_definition()<cr>
nnoremap <bs> :call LanguageClient_textDocument_rename()<cr>
nnoremap <f12> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i



" === DEOPLETE & FLOAT-PRE & FLOAT-PREVV === "
call dein#add('tbodt/deoplete-tabnine', { 'build': './install.sh' })
call dein#add('ncm2/float-preview.nvim')
let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources._ = ['buffer', 'member', 'tag', 'file', 'omni', 'ultisnips']
call deoplete#custom#source('LanguageClient', 'min_pattern_length', 2)
call deoplete#custom#var('tabnine',{'line_limit': 500,'max_num_results': 5})
call deoplete#custom#option('auto_complete_delay', 200)
"autocomplete popup - nvigation keys and enter to select
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"floating window
" let g:float_preview#docked = 0
let g:float_preview#auto_close = 1
function! DisableExtras()
    call nvim_win_set_option(g:float_preview#win, 'number', v:false)
    call nvim_win_set_option(g:float_preview#win, 'relativenumber', v:false)
    call nvim_win_set_option(g:float_preview#win, 'cursorline', v:false)
endfunction
autocmd User FloatPreviewWinOpen call DisableExtras()


" === ALE === "
call dein#add('w0rp/ale')                       "syntax checker for vim
let g:ale_sign_error = '×'
let g:ale_sign_warning = '!'
highlight ALEWarning ctermbg=0 ctermfg=220 cterm=bold
highlight ALEWarningSign ctermbg=220 ctermfg=231 cterm=bold
highlight ALEError ctermbg=0 ctermfg=196 cterm=bold
highlight ALEErrorSign ctermbg=196 ctermfg=231 cterm=bold
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
            \ 'rust': ['rust-analyzer'],
            \ 'go': ['gopls'],
            \ 'nim': ['nimlsp'],
            \ 'cpp': ['clangtidy'],
            \ 'python': ['/usr/local/bin/pyls']
            \ }
let g:ale_fixers = {
            \ 'cpp': ['clang-format'],
            \ }
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
" let g:ale_fix_on_save = 1
nmap <F10> <Plug>(ale_fix)
au TabLeave * silent! <Plug>(ale_fix)
au BufLeave * silent! <Plug>(ale_fix)


" === SNIPETTS === "
call dein#add('sheerun/vim-polyglot')           "A collection of language packs for Vim
call dein#add('SirVer/ultisnips')               "snipets engine
call dein#add('honza/vim-snippets')             "snippets collection
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"


"semicolons
call dein#add('lfilho/cosco.vim')               "add semicolon or comma n the end
autocmd FileType cpp nmap <silent> , <Plug>(cosco-commaOrSemiColon)
autocmd FileType rust nmap <silent> , <Plug>(cosco-commaOrSemiColon)


" === COMMENTER === "
call dein#add('tpope/vim-commentary')
map <silent> # :Commentary<CR>



" === OTHER === "
"call dein#add('neoclide/coc.nvim', {'branch': 'release'})
call dein#add('ntpeters/vim-better-whitespace') "whitespace detection

" ======================== WORKSPACE ==================== "
" === CTRLSPACE === "
call dein#add('vim-ctrlspace/vim-ctrlspace')    "a better workspace manager
set showtabline=0
nnoremap <f1> :CtrlSpaceSaveWorkspace<CR>
let g:CtrlSpaceDefaultMappingKey = "<C-space> "
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
" let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
" let g:CtrlSpaceSaveWorkspaceOnExit = 1
hi link CtrlSpaceNormal   Normal
hi link CtrlSpaceSelected PMenu
hi link CtrlSpaceSearch   Search
hi link CtrlSpaceStatus   StatusLine
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
let g:CtrlSpaceUseArrowsInTerm = 1
imap <C-Pagedown> <C-O>:CtrlSpaceGoDown<CR>
imap <C-Pageup> <C-O>:CtrlSpaceGoUp<CR>
map <C-Pagedown> :CtrlSpaceGoDown<CR>
map <C-Pageup> :CtrlSpaceGoUp<CR>



" === VIM CLAP === "
call dein#add('liuchengxu/vim-clap')			  "interactive floating finder and dispatcher
nmap <leader><leader> :Clap buffers<CR>
let g:clap_theme = 'atom_dark'
let g:clap_theme = { 'input': {'ctermbg': '1', 'cterm': 'bold'}, 'spinner': {'ctermbg': '1'} }
let g:clap_layout = { 'relative': 'editor' }
let g:clap_open_action = { 'ctrl-x': 'vsplit' }


" === FILEMANAGER === "
call dein#add('scrooloose/nerdtree')            "side-bar file manager
call dein#add('ryanoasis/vim-devicons')         "icons for nerdtree
let NERDTreeQuitOnOpen=1                "automatically clone nerd tre after open
let NERDTreeShowHidden=1
let g:NERDTreeMinimalUI = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
au VimEnter * NERDTreeRefreshRoot




" === OUTLINE BAR === "
call dein#add('liuchengxu/vista.vim')            "tagbar
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#enable_icon = 1
" autocmd FileType rust let b:auto_save = 1


" === INDENTATION LINES === "
call dein#add('yggdroot/indentline')            "indentation (characters)
let g:indentLine_char_list = ['⋮']
let g:indentLine_color_term = 9
let g:indentLine_setConceal = 2
" default ''.
" n for Normal mode
" v for Visual mode
" i for Insert mode
" c for Command line editing, for 'incsearch'
let g:indentLine_concealcursor = ""

"
" === AUTOSAVE === "
call dein#add('907th/vim-auto-save')            "vim autsave plugin
autocmd FileType markdown let b:auto_save = 1
autocmd FileType scss let b:auto_save = 1
autocmd FileType html let b:auto_save = 1
autocmd FileType go let b:auto_save = 1
autocmd FileType rust let b:auto_save = 1
autocmd FileType cpp let b:auto_save = 1
autocmd FileType hpp let b:auto_save = 1
autocmd FileType h let b:auto_save = 1
autocmd FileType cmake let b:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost", "FocusGained"]
let g:auto_save_write_all_buffers = 1
" let g:auto_save_presave_hook = 'call AbortIfNotGitDirectory()'
" function! AbortIfNotGitDirectory()
" if ...
" let g:auto_save_abort = 0
" else
" let g:auto_save_abort = 1
" endif
" endfunction


"OTHER
call dein#add('ingolemo/vim-bufferclose')
call dein#add('editorconfig/editorconfig-vim')  "EDITOR-CONFIG settings
call dein#add('mbbill/undotree')                "show a tree of undos
call dein#add('direnv/direnv')



" ======================== NAVIGATION ==================== "
" === EASY MOTION === "
let g:EasyMotion_do_mapping = 0
nmap <leader><CR> <Plug>(easymotion-overwin-f)
hi EasyMotionTarget ctermfg=15 cterm=bold,underline
hi link EasyMotionTarget2First EasyMotionTarget
hi EasyMotionTarget2Second ctermfg=2 cterm=underline



" === SEARCH SETTINGS === "
call dein#add('svermeulen/vim-subversive')      "subsiitute motion
let g:better_whitespace_enabled=1
let g:incsearch#auto_nohlsearch = 1
map / <Plug>(incsearch-forward)
map <leader>/ <Plug>(incsearch-forward)
nnoremap * *``
"substitute normal
"substitute with subversive + abolish
nmap + <plug>(SubversiveSubstituteWordRange)


" === MOVE LINES === "
call dein#add('matze/vim-move')                 "move lines with alt-arrow
nmap <C-A-Down> <Plug>MoveLineDown
nmap <C-A-Up> <Plug>MoveLineUp
vmap <C-A-Down> <Plug>MoveBlockDown
vmap <C-A-Up> <Plug>MoveBlockUp


" === COMFORTABLE SCROLLING === "
call dein#add('gcavallanti/vim-noscrollbar')    "scrollbar-like for statusline
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
call dein#add('terryma/vim-multiple-cursors')
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


" === RECORDING === "
call dein#add('svermeulen/vim-macrobatics')     "better vim record
let g:Mac_MaxItems = 10
let g:Mac_SavePersistently = 0
let g:Mac_DisplayMacroMaxWidth = 80
let g:Mac_NamedMacroFileExtension = '.bin'
let g:Mac_NamedMacroFuzzySearcher = v:null
let g:Mac_NamedMacrosDirectory = "~/.config/macrobatics"
let g:Mac_NamedMacroParameters = {}
let g:Mac_NamedMacroParametersByFileType = {}



"OTHER
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('easymotion/vim-easymotion')      "jump to any location
call dein#add('yuttie/comfortable-motion.vim')  "comfortable scroll
call dein#add('tpope/vim-repeat')               " '.' for better repeat functioalities
call dein#add('tpope/vim-surround')              "manipulating sorround objects


"undo and undotree
nnoremap U :redo<CR>
nnoremap <C-U> :UndotreeToggle<CR> :UndotreeFocus<CR>


"Brackets
call dein#add('jiangmiao/auto-pairs')           "auto close brackets and parenthesis
call dein#add('luochen1990/rainbow')            "colored brackets
let g:rainbow_active = 1


"Bookmarks
call dein#add('mattesgroeger/vim-bookmarks')    "bookmarks per line
let g:bookmark_auto_save_file = $HOME .'/.config/dein/bookmarks'


" ======================== TOOLS ==================== "
call dein#add('tpope/vim-abolish')              "better renamer substituter
call dein#add('rrethy/vim-illuminate')          "highlightusert same words as cursor
call dein#add('wellle/targets.vim')             "more objects to operate functions
call dein#add('godlygeek/tabular')              "text aligner
call dein#add('haya14busa/incsearch.vim')
call dein#add('kana/vim-fakeclip')              "better clipboard



" ======================== GIT ==================== "
call dein#add('airblade/vim-gitgutter')         "show differences (GIT)
call dein#add('tpope/vim-fugitive')             "git wrapper
call dein#add('whiteinge/diffconflicts')
highlight GitGutterAdd    ctermfg=2 ctermbg=1
highlight GitGutterChange ctermfg=3 ctermbg=2
highlight GitGutterDelete ctermfg=1 ctermbg=3



" === WHERE YOU LEFT ===""
"go to last position you were editing
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
