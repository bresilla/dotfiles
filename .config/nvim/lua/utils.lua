require('tools.lspconfig')
require('tools.treesitter')
require('tools.telescope')
-- require('tools.bufferline')
require('tools.expressline')
require('tools.luatree')
require('tools.floaterm')



vimp = require'vimp'
vim.g.mapleader = " "


-- === FOCUS === "
vim.cmd([[au WinLeave * set nocursorline nocursorcolumn]])
vim.cmd([[au WinEnter * set cursorline cursorcolumn]])


-- --  === LSP-CONFIGS === "
vim.cmd([[ let g:completion_chain_complete_list = {'default':[{'complete_items': ['lsp','snippet','tabnine']}]} ]])
vim.g.completion_enable_snippet = 'UltiSnips'
vim.cmd([[autocmd BufEnter * lua require'completion'.on_attach()]])

vim.cmd([[sign define LspDiagnosticsSignError text=× texthl=LspDiagnosticsSignError linehl= numhl=]])
vim.cmd([[sign define LspDiagnosticsSignWarning text=! texthl=LspDiagnosticsSignWarning linehl= numhl=]])
vim.cmd([[sign define LspDiagnosticsSignInformation text=+ texthl=LspDiagnosticsSignInformation linehl= numhl=]])
vim.cmd([[sign define LspDiagnosticsSignHint text=➜ texthl=LspDiagnosticsSignHint linehl= numhl=]])

-- vimp.inoremap({'expr', 'silent'}, '<Esc>',     [[pumvisible() ? "\<C-e>" : "\<Esc>"]])
-- vimp.inoremap({'expr', 'silent'}, '<CR>',      [[pumvisible() ? "\<C-y>" : "\<CR>"]])
-- vimp.inoremap({'expr', 'silent'}, '<Down>',    [[pumvisible() ? "\<C-n>" : "\<Down>"]])
-- vimp.inoremap({'expr', 'silent'}, '<Up>',      [[pumvisible() ? "\<C-p>" : "\<Up>"]])
vimp.nnoremap('<c-]>',      [[<cmd>lua vim.lsp.buf.definition()<CR>]])
vimp.nnoremap('k',          [[<cmd>lua vim.lsp.buf.hover()<CR>]])
vimp.nnoremap('gD',         [[<cmd>lua vim.lsp.buf.implementation()<CR>]])
vimp.nnoremap('<c-k>',      [[<cmd>lua vim.lsp.buf.signature_help()<CR>]])
vimp.nnoremap('1gD',        [[<cmd>lua vim.lsp.buf.type_definition()<CR>]])
vimp.nnoremap('gr',         [[<cmd>lua vim.lsp.buf.references()<CR>]])
vimp.nnoremap('g0',         [[<cmd>lua vim.lsp.buf.document_symbol()<CR>]])
vimp.nnoremap('gW',         [[<cmd>lua vim.lsp.buf.workspace_symbol()<CR>]])
vimp.nnoremap('gd',         [[<cmd>lua vim.lsp.buf.declaration()<CR>]])
vimp.nnoremap('f',          [[<cmd>lua vim.lsp.diagnostic.goto_next { min_severity = "info", show_config=true }<CR>]])
vimp.nnoremap('F',          [[<cmd>lua vim.lsp.buf.code_action()<cr>]])

-- vimp.nnoremap({'silent'},       '<tab>',                 [[:LuaTreeToggle <CR>]])
vim.cmd([[au FileType LuaTree lua vim.api.nvim_buf_set_keymap(0, 'n', '<tab>', ':LuaTreeClose<CR>', {})]])
vim.cmd([[au FileType * lua vim.api.nvim_buf_set_keymap(0, 'n', '<tab>', ':LuaTreeToggle<CR>', {})]])


-- === NAVIGATION === "
-- navigation panes
vimp.bind('n',            '<C-Pagedown>',             [[:BufferNext<CR>]])
vimp.bind('n',            '<C-Pageup>',               [[:BufferPrevious<CR>]])
vimp.bind('n',            '<C-M-Pagedown>',           [[:BufferMoveNext<CR>]])
vimp.bind('n',            '<C-M-Pageup>',             [[:BufferMovePrevious<CR>]])
vimp.bind('n',            '<C-Up>',                   [[<C-k>]])
vimp.bind('n',            '<C-Down>',                 [[<C-j>]])
vimp.bind('n',            '<C-Left>',                 [[<C-h>]])
vimp.bind('n',            '<C-Right>',                [[<C-l>]])

-- move vertically on soft lines
-- vimp.bind('nv',                  'j',          [[gj]])
-- vimp.bind('nv',                  'k',          [[gk]])
vimp.bind('nv',           '<Down>',                   [[gj]])
vimp.bind('nv',           '<Up>',                     [[gk]])
vimp.bind('i',            '<Down>',                   [[<C-o>gj]])
vimp.bind('i',            '<Up>',                     [[<C-o>gk]])
-- move horizontally
vimp.bind('n',            '<home>',                   [[%]])
vimp.bind('n',            '<end>',                    [[$]])
-- switch to last tab
vimp.bind('n',            '-',                        [[:e #<cr>]])



-- --  === REMOVE HABITS === "
vimp.nnoremap('d',              [["_d]])
vimp.vnoremap('d',              [["_d]])
vimp.nnoremap('c',              [["_c]])
vimp.vnoremap('c',              [["_c]])
vimp.nnoremap('<S-Up>',         [[<Nop>]])
vimp.nnoremap('<S-Down>',       [[<Nop>]])



-- === CHANGE CASE === "
vimp.inoremap('<M-u>',          [[<ESC>viw~]])
vimp.nnoremap('<M-u>',          [[viw~<ESC>]])



-- === CHANGE INDENT === "
vimp.vnoremap('>', [[>gv]])
vimp.vnoremap('<', [[<gv]])



-- ===  RUNNER === "
vimp.nnoremap({'silent'},       '<f7>',                 [[:FloatermNew --autoclose=0 run<cr>]])
vimp.tnoremap({'silent'},       '<f7>',                 [[<C-\><C-n>:FloatermToggle<CR>]])
vimp.nnoremap({'silent'},       '<f5>',                 [[:FloatermNew --autoclose=0 build<cr>]])
vimp.tnoremap({'silent'},       '<f5>',                 [[<C-\><C-n>:FloatermToggle<CR>]])



-- ===  SESSIONS === "
vimp.bind({'silent'},           'ss',                   [[<cmd>SessionSave<CR>]])



-- === FINDER === "
vimp.nnoremap('<leader><leader>',       [[<cmd>lua require('telescope.builtin').git_files()<cr>]])
vimp.nnoremap('<C-Space>',              [[<cmd>lua require('telescope.builtin').buffers(center_list)<cr>]])
vimp.nnoremap('<C-p>',                  [[:DmenuFinderFindFile<CR>]])



-- === UNDO TREE === "
vimp.bind({'silent'},           'U',                    [[:redo<CR>]])
vimp.bind({'silent'},           '<C-U>',                [[:UndotreeToggle<CR> :UndotreeFocus<CR>]])



-- === SEMICOLON === &&  === COMMENTER === "
vim.cmd([[autocmd FileType cpp nmap <silent> , <Plug>(cosco-commaOrSemiColon)]])
vim.cmd([[autocmd FileType rust nmap <silent> , <Plug>(cosco-commaOrSemiColon)]])
vimp.bind('nv',                  '#',                    [[:Commentary<CR>]])



--- === HIGHLGHT ON YANK
vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank()]])
vim.highlight.on_yank {
    on_visual = true
}


--- === DMENU/ROFI ===
vim.g.dmenu_finder_dmenu_command = "/home/bresilla/dots/.func/wm/rofit"

--- === INDENTATION LINES === "
vim.g.indentLine_char_list = { '┊' }
vim.g.indentLine_color_term = 235
vim.g.indentLine_setConceal = 2
vim.g.indentLine_concealcursor = ""
vim.g.indentLine_fileTypeExclude ={ 'dashboard' }


-- --- === SEARCH SETTINGS === "
vimp.rbind({'silent'},           '/',                    [[<Plug>(incsearch-forward)]])
vimp.rbind({'silent'},           '<leader>/',            [[<Plug>(incsearch-forward)]])
vimp.bind({'silent'},            '*',                    [[*``]])


--- === MOVE LINES === "
vimp.rbind('nv',                  '<C-A-Down>',          [[<Plug>MoveLineDown]])
vimp.rbind('nv',                  '<C-A-Up>',            [[<Plug>MoveLineUp]])

--- === COMFORTABLE SCROLLING === "
vim.g.comfortable_motion_no_default_key_mappings = 1
vim.g.comfortable_motion_impulse_multiplier = 2
vim.g.comfortable_motion_friction = 60.0
vim.g.comfortable_motion_air_drag = 4.0
vim.g.comfortable_motion_interval = 1000.0 / 60
vimp.nnoremap({'silent'},       '<ScrollWheelDown>',     [[:call comfortable_motion#flick(40)<CR>]])
vimp.inoremap({'silent'},       '<ScrollWheelDown>',     [[<C-O><ScrollWheelDown>]])
vimp.nnoremap({'silent'},       '<ScrollWheelUp>',       [[:call comfortable_motion#flick(-40)<CR>]])
vimp.inoremap({'silent'},       '<ScrollWheelUp>',       [[<C-O><ScrollWheelUp>]])
vimp.nnoremap({'silent'},       '<Pagedown>',            [[:call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0))<CR>]])
vimp.inoremap({'silent'},       '<Pagedown>',            [[<C-O><Pagedown>]])
vimp.nnoremap({'silent'},       '<Pageup>',              [[:call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * -winheight(0))<CR>]])
vimp.inoremap({'silent'},       '<Pageup>',              [[<C-O><Pageup>]])



-- --- === MULTIPLE CURSORS === "
vim.g.VM_default_mappings = 0
vim.g.VM_mouse_mappings = 1
-- vim.g.VM_maps = {
--     'Find Under'         = '<M-d>',
--     'Find Subword Under' = '<M-d>',
--     "Add Cursor Down"    = '<M-S-Down>',
--     "Add Cursor Up"      = '<M-S-Up>',
--     "Add Cursor At Pos"  = '<M-i>',
-- }


--- === VIM FADE === "
vim.g.vimade = {}
vim.g.vimade.fadelevel = 0.6
vim.g.vimade.enablesigns = 1
vim.g.vimade.colbufsize = 20
vim.g.vimade.rowbufsize = 20
vim.g.vimade.checkinterval = 100
vim.g.vimade.enablefocusfading = 1
vim.g.vimade.detecttermcolors = 1



--- === DASHBOARD === "
vim.g.dashboard_default_executive ='telescope'
vim.g.dashboard_default_header = "cres"
vim.g.dashboard_custom_header = {
    '                            ▄▄▄▄▄▄▄▄                             ' ,
    '                       ▄▄██████████████▄▄                        ' ,
    '                    ▄██████████████████████▄                     ' ,
    '                  ▄██████████████████████████▄                   ' ,
    '                ▄█▀▄████████████████████████▄▀█▄                 ' ,
    '               ▄█  ██████████████████████████  █▄                ' ,
    '              ▄█▀ ▄██████████████████████████▄ ▀█▄               ' ,
    '              █▀  ████████████████████████████  ▀█               ' ,
    '                ▄██████████████████████████████▄                 ' ,
    '              ████████████████████████████████████               ' ,
    '              ████████████████████████████████████               ' ,
    '              ▀██▀  ▀▀████████████████████▀▀  ▀██▀               ' ,
    '               ██       ▀██▀████████▀██▀       ██                ' ,
    '                ██        ▀█ ██████ █▀        ██                 ' ,
    '                 ██▄        █ ████ █        ▄██                  ' ,
    '                  ███▄▄▄     █ ██ █     ▄▄▄███                   ' ,
    '                   ▀▀▀▀▀████▄██████▄████▀▀▀▀▀                    ' ,
    '                     ██▄ █████▄██▄█████ ▄██                      ' ,
    '                      ██▄ ████████████ ▄██                       ' ,
    '                       ▀█████▀▄▄▄▄▀█████▀                        ' ,
    '                         ▀▀██████████▀▀                          ' ,
    '                            ▀██████▀                             ' ,
    '                                                                 ' ,
    '                                                                 ' ,
    '▄                                                 ▄ ▄            ' ,
    '█                                                 █ █            ' ,
    '█▀▀▀▀▀▀▀▀▀█ █▀▀▀▀▀▀▀▀▀▀ █▀▀▀▀▀▀▀▀▀█ █▀▀▀▀▀▀▀▀▀▀ █ █ █ ▀▀▀▀▀▀▀▀▀▀█' ,
    '█         █ █           █▀▀▀▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀█ █ █ █ █▀▀▀▀▀▀▀▀▀█' ,
    '▀▀▀▀▀▀▀▀▀▀▀ ▀           ▀▀▀▀▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀▀ ▀ ▀ ▀ ▀▀▀▀▀▀▀▀▀▀▀' ,
}
-- vim.g.dashboard_custom_section = {
    -- last_session = {
    --     description = {'... press [ENTER] to load session ...'},
    --     command: = {':SessionLoad' }
    -- },
-- }
vim.cmd([[let g:dashboard_custom_section={ 'last_session': { 'description': ['... press [ENTER] to load session ...'], 'command': ':SessionLoad' }}
]])
vim.g.dashboard_custom_footer = { [[LESS IS SIGNIFICANTLY MORE]] }
