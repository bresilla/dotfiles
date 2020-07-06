" ======================== LANGUAGE ==================== "
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



" === ALE === "
let g:ale_sign_error = '×'
let g:ale_sign_warning = '!'
highlight ALEError ctermbg=15 ctermfg=1 cterm=bold
highlight ALEErrorSign ctermbg=0 ctermfg=124 cterm=bold
highlight ALEErrorLine ctermbg=1 ctermfg=0 cterm=italic,bold
highlight ALEWarning cterm=italic,bold
highlight ALEWarningSign ctermbg=0 ctermfg=184 cterm=bold
highlight ALEWarningLine ctermbg=0 ctermfg=237 cterm=italic
highlight ALEInfo cterm=italic,bold
highlight ALEInfoSign ctermbg=0 ctermfg=69 cterm=bold
highlight ALEInfoLine ctermbg=0 ctermfg=237 cterm=italic
let g:ale_linters = {
            \ 'rust': ['cargo-clippy'],
            \ 'go': ['gopls'],
            \ 'cpp': ['clangtidy'],
            \ 'nim': ['nimlsp'],
            \ 'python': ['/usr/local/bin/pyls']
            \ }
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'rust': ['rustfmt'],
            \ 'cpp': ['clang-format'],
            \ }
let g:ale_linters_explicit=1
let g:ale_set_balloons= 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
au TabLeave * silent! <Plug>(ale_fix)
au BufLeave * silent! <Plug>(ale_fix)


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
let g:LanguageClient_diagnosticsDisplay = {
    \ 1: {
        \ "name": "Error",
        \ "texthl": "ALEError",
        \ "signText": "×",
        \ "signTexthl": "ALEErrorSign",
        \ "virtualTexthl": "ALEErrorLine",
    \ },
    \ 2: {
        \ "name": "Warning",
        \ "texthl": "ALEWarning",
        \ "signText": "!",
        \ "signTexthl": "ALEWarningSign",
        \ "virtualTexthl": "ALEWarningLine",
    \ },
    \ 3: {
        \ "name": "Information",
        \ "texthl": "ALEInfo",
        \ "signText": "i",
        \ "signTexthl": "ALEInfoSign",
        \ "virtualTexthl": "ALEInfoLine",
    \ },
    \ 4: {
        \ "name": "Hint",
        \ "texthl": "ALEInfo",
        \ "signText": ">",
        \ "signTexthl": "ALEInfoSign",
        \ "virtualTexthl": "ALEInfoLine",
    \ },
\ }
" let g:LanguageClient_useVirtualText = "All"
" let g:LanguageClient_hoverPreview = "Always"
set formatexpr=LanguageClient#textDocument_rangeFormatting_sync()
let g:LanguageClient_windowLogMessageLevel = "Log"



" === TAB NINE === "
call deoplete#custom#var('tabnine',{'line_limit': 500,'max_num_results': 5})



"semicolons
autocmd FileType cpp nmap <silent> , <Plug>(cosco-commaOrSemiColon)
autocmd FileType rust nmap <silent> , <Plug>(cosco-commaOrSemiColon)



" === COMMENTER === "
map <silent> # :Commentary<CR>


" === WHITESPACE === "
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" ======================== WORKSPACE ==================== "
" === cTRLSPACE === "
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
" let g:clap_spinner_frames = ['⠋', '⠙', '⠚', '⠞', '⠖', '⠦', '⠴', '⠲', '⠳', '⠓']
let g:clap_spinner_frames = ['◇ ', '◈ ', '◆ ']
let g:clap_provider_src = {
    \ 'source': 'find {src,include} -type f',
    \ 'sink': 'e',
\ }


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
let g:auto_save_events = ["FocusLost", "FocusGained"]
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
hi EasyMotionTarget ctermfg=15 cterm=bold,underline
hi link EasyMotionTarget2First EasyMotionTarget
hi EasyMotionTarget2Second ctermfg=2 cterm=underline



" === SEARCH SETTINGS === "
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
let g:VM_default_mappings = 0
let g:VM_mouse_mappings = 1
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<M-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<M-d>'           " replace visual C-n
let g:VM_maps["Add Cursor Down"]    = '<M-S-Down>'
let g:VM_maps["Add Cursor Up"]      = '<M-S-Up>'
let g:VM_maps["Add Cursor At Pos"]  = '<CR>'
"" let g:VM_maps["Select Cursor Up"]   = '<M-S-Up>'        " start selecting up
"" let g:VM_maps["Select Cursor Down"] = '<M-S-Down>'      " start selecting down


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
" au BufWinLeave * silent! mkview
" au BufWinEnter * silent! loadview



" === DIRENV === "
if exists("$EXTRA_VIM")
  for path in split($EXTRA_VIM, ':')
    exec "source ".path
  endfor
endif


" ======================== GIT ==================== "
highlight GitGutterAdd    ctermfg=34 ctermbg=0
highlight GitGutterChange ctermfg=184 ctermbg=0
highlight GitGutterDelete ctermfg=124 ctermbg=0
