" ======================== LANGUAGE ==================== "
" === COMPLETION === "
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
                 \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"
lua <<EOF
    require'lspconfig'.clangd.setup{
        cmd = { "clangd", "--background-index" };
        on_attach=require'completion'.on_attach;
    }

    --require'nvim-treesitter.configs'.setup {
    --    highlight = { enable = true },
    --    incremental_selection = { enable = true },
    --    indent = { enable = true },
    --}

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
            underline = true,
            virtual_text = { spacing = 30 },
            -- update_in_insert = false,
        }
    )

    vim.lsp.diagnostic.get_virtual_text_chunks_for_line = function(bufnr, line, line_diagnostics)
        if #line_diagnostics == 0 then
            return nil
        end
        local line_length = #(vim.api.nvim_buf_get_lines(bufnr, line, line + 1, false)[1] or '')
        local get_highlight = vim.lsp.diagnostic._get_severity_highlight_name
        local virt_texts = {{string.rep(" ", 80 - line_length)}}
        for i = 1, #line_diagnostics - 1 do
            table.insert(virt_texts, {"■", get_highlight(line_diagnostics[i].severity)})
        end
        local last = line_diagnostics[#line_diagnostics]
        if last.message then
            table.insert(virt_texts, {string.format("■ %s", last.message:gsub("\r", ""):gsub("\n", "  ")), get_highlight(last.severity)})
            return virt_texts
        end
        return virt_texts
    end

    require('telescope').setup{
        defaults = {
            prompt_position = "bottom",
            prompt_prefix = ">>",
            selection_strategy = "reset",
            sorting_strategy = "descending",
            layout_strategy = "horizontal",
            shorten_path = true,
            width = 0.75,
            preview_cutoff = 120,
            results_height = 1,
            results_width = 0.8,
            color_devicons = true,
            use_less = true,
        }
    }

EOF
" require('el').setup {
"         generator = function(win_id)
"             local el_segments = {}
"             table.insert(el_segments, '[literal_string]')
"             table.insert(el_segments, '%f')
"             local builtin = require('el.builtin')
"             table.insert(el_segments, builtin.file)
"             local extensions = require('el.extensions')
"             table.insert(el_segments, extensions.mode) -- mode returns the current mode.
"             return el_segments
"         end
"         require('el').setup { generator = generator }
"     }

let g:completion_chain_complete_list = {'default':[{'complete_items': ['lsp','snippet','tabnine']}]}
autocmd BufEnter * lua require'completion'.on_attach()



" ======================== WORKSPACE ==================== "
" === DMENU/ROFI === "
let g:dmenu_finder_dmenu_command = "/home/bresilla/dots/.func/wm/rofit"


" === VIM CLAP === "
let g:clap_theme = 'atom_dark'
let g:clap_theme = {
            \'input': {'ctermbg': '240', 'ctermfg': '1'},
            \'search_text': {'ctermbg': '240', 'ctermfg': '246', 'cterm': 'italic'},
            \'spinner': {'ctermbg': '240', 'ctermfg': '15', 'cterm': 'bold'},
            \'display': {'ctermbg': '236'},
            \'preview': {'ctermbg': '234'},
            \ }
let g:clap_selected_sign = { 'text': '- ', 'texthl': "ClapSelectedSign", "linehl": "ClapSelected"}
let g:clap_current_selection_sign = { 'text': '> ', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
let g:clap_layout = { 'relative': 'editor' }
let g:clap_open_action = { 'ctrl-t': 'tab split', 'ctrl-s': 'split', 'ctrl-v': 'vsplit' }
let g:clap_search_box_border_symbols = {'nil': ['█', '█'], 'curve': ['', ''], 'arrow': ['', '']}
let g:clap_search_box_border_style = 'nil'
let g:clap_enable_background_shadow = 'false'
" let g:clap_spinner_frames = ['⠋', '⠙', '⠚', '⠞', '⠖', '⠦', '⠴', '⠲', '⠳', '⠓']
" let g:clap_spinner_frames = ['◇ ', '◈ ', '◆ ']
" let g:clap_provider_src = {
    " \ 'source': 'find {src,include} -type f',
    " \ 'sink': 'e',
" \ }


" === FILEMANAGER === "
let g:lua_tree_side = 'left'
let g:lua_tree_size = 50
let g:lua_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:lua_tree_auto_open = 1
let g:lua_tree_auto_close = 1
let g:lua_tree_quit_on_open = 1
let g:lua_tree_follow = 1
let g:lua_tree_indent_markers = 1
let g:lua_tree_show_icons = { 'git': 0, 'folders': 1, 'files': 1 }
let g:lua_tree_icons = {
    \ 'default': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "═",
    \   'renamed': "➜",
    \   'untracked': "★"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': ""
    \   }
    \ }


" === INDENTATION LINES === "
let g:indentLine_char_list = ['⋮']
let g:indentLine_color_term = 9
let g:indentLine_setConceal = 2
let g:indentLine_concealcursor = ""


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
" let g:floaterm_borderchars = ['═', '║', '═', '║', '╔', '╗', '╝', '╚']
" let g:floaterm_borderchars = ['─', '│', '─', '│', '┌', '┐', '┘', '└']
" let g:floaterm_borderchars = ['━', '┃', '━', '┃', '┏', '┓', '┛', '┗']
let g:floaterm_borderchars = ['─', '│', '─', '│', '╭', '╮', '╯', '╰']
let g:floaterm_autoclose = 1


" ===  RUNNER === "
noremap <silent><f7>        :FloatermNew --autoclose=0 run<cr>
tnoremap <silent><f7>       <C-\><C-n>:FloatermToggle<CR>
noremap <silent><f5>        :FloatermNew --autoclose=0 build<cr>
tnoremap <silent><f5>       <C-\><C-n>:FloatermToggle<CR>



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


" === GIT === "
highlight GitGutterAdd    ctermfg=34 ctermbg=0
highlight GitGutterChange ctermfg=184 ctermbg=0
highlight GitGutterDelete ctermfg=124 ctermbg=0


" === SEMICOLON === &&  === COMMENTER === "
autocmd FileType cpp nmap <silent> , <Plug>(cosco-commaOrSemiColon)
autocmd FileType rust nmap <silent> , <Plug>(cosco-commaOrSemiColon)
nmap <silent> # :Commentary<CR>


