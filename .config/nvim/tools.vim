" ======================== LANGUAGE ==================== "
" === LANGUAGE CLIENT === "
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
let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources._ = ['buffer', 'member', 'tag', 'file', 'omni', 'ultisnips']
call deoplete#custom#source('LanguageClient', 'min_pattern_length', 2)
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



" === TAB NINE === "
call deoplete#custom#var('tabnine',{'line_limit': 500,'max_num_results': 5})



" === ALE === "
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
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"


"semicolons
autocmd FileType cpp nmap <silent> , <Plug>(cosco-commaOrSemiColon)
autocmd FileType rust nmap <silent> , <Plug>(cosco-commaOrSemiColon)


" === COMMENTER === "
map <silent> # :Commentary<CR>


" ======================== WORKSPACE ==================== "
" === CTRLSPACE === "
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
nmap <leader><leader> :Clap buffers<CR>
let g:clap_theme = 'atom_dark'
let g:clap_theme = {
            \'input': {'ctermbg': '1', 'ctermfg': '15', 'cterm': 'bold'},
            \'spinner': {'ctermbg': '1', 'ctermfg': '15', 'cterm': 'bold'},
            \'display': {'ctermbg': '0'},
            \ }
let g:clap_selected_sign = { 'text': '- ', 'texthl': "ClapSelectedSign", "linehl": "ClapSelected"}
let g:clap_current_selection_sign = { 'text': '> ', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
let g:clap_layout = { 'relative': 'editor' }
let g:clap_open_action = { 'ctrl-x': 'vsplit' }
let g:clap_search_box_border_symbols = {'nil': ['█', '█'], 'curve': ['', ''], 'arrow': ['', '']}
let g:clap_search_box_border_style = 'nil'
let g:clap_spinner_frames = ['◇ ', '◈ ', '◆ ']
" let g:clap_spinner_frames = ['⠋', '⠙', '⠚', '⠞', '⠖', '⠦', '⠴', '⠲', '⠳', '⠓']


" === FILEMANAGER === "
let NERDTreeQuitOnOpen=1                "automatically clone nerd tre after open
let NERDTreeShowHidden=1
let g:NERDTreeMinimalUI = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
au VimEnter * NERDTreeRefreshRoot




" === OUTLINE BAR === "
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#enable_icon = 1
" autocmd FileType rust let b:auto_save = 1


" === INDENTATION LINES === "
let g:indentLine_char_list = ['⋮']
let g:indentLine_color_term = 9
let g:indentLine_setConceal = 2
" default ''.
" n for Normal mode
" v for Visual mode
" i for Insert mode
" c for Command line editing, for 'incsearch'
let g:indentLine_concealcursor = ""


" === AUTOSAVE === "
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


" === BOOKMARKS === "
let g:bookmark_auto_save = 1
let g:bookmark_sign = '⚑'
let g:bookmark_annotation_sign = '■'
highlight BookmarkSign ctermbg=NONE ctermfg=1
highlight BookmarkAnnotationSign ctermbg=None ctermfg=1
" let g:bookmark_highlight_lines = 1
" highlight BookmarkLine ctermbg=15 ctermfg=NONE
" Finds the Git super-project directory.
let g:bookmark_save_per_working_dir = 1
function! g:BMWorkDirFileLocation()
    let filename = 'bookmarks'
    let location = ''
    if isdirectory('.git')
        " Current work dir is git's work tree
        let location = getcwd().'/.git'
    else
        " Look upwards (at parents) for a directory named '.git'
        let location = finddir('.git', '.;')
    endif
    if len(location) > 0
        return location.'/'.filename
    else
        return $HOME."/.config/plug/bookmarks"
    endif
endfunction



" === UNDO TREE === "
nnoremap U :redo<CR>
nnoremap <C-U> :UndotreeToggle<CR> :UndotreeFocus<CR>




" ======================== NAVIGATION ==================== "
" === EASY MOTION === "
let g:EasyMotion_do_mapping = 0
nmap <leader><CR> <Plug>(easymotion-overwin-f)
hi EasyMotionTarget ctermfg=15 cterm=bold,underline
hi link EasyMotionTarget2First EasyMotionTarget
hi EasyMotionTarget2Second ctermfg=2 cterm=underline



" === SEARCH SETTINGS === "
let g:better_whitespace_enabled=1
let g:incsearch#auto_nohlsearch = 1
map / <Plug>(incsearch-forward)
map <leader>/ <Plug>(incsearch-forward)
nnoremap * *``
"substitute normal
"substitute with subversive + abolish
nmap + <plug>(SubversiveSubstituteWordRange)


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
let g:Mac_MaxItems = 10
let g:Mac_SavePersistently = 0
let g:Mac_DisplayMacroMaxWidth = 80
let g:Mac_NamedMacroFileExtension = '.bin'
let g:Mac_NamedMacroFuzzySearcher = v:null
let g:Mac_NamedMacrosDirectory = "~/.config/macrobatics"
let g:Mac_NamedMacroParameters = {}
let g:Mac_NamedMacroParametersByFileType = {}


"Brackets
let g:rainbow_active = 1



" ======================== TOOLS ==================== "
"go to last position you were editing
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview



" ======================== GIT ==================== "
function tools#git_plugs()
    Plug 'airblade/vim-gitgutter'         "show differences (GIT)
    Plug 'tpope/vim-fugitive'             "git wrapper
    Plug 'whiteinge/diffconflicts'
endfunction
highlight GitGutterAdd    ctermfg=34 ctermbg=0
highlight GitGutterChange ctermfg=184 ctermbg=0
highlight GitGutterDelete ctermfg=124 ctermbg=0
