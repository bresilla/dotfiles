vimp = require'vimp'
vim.g.mapleader = " "

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



-- === COMMENTARY === "
vimp.bind('n',                  '#',                    [[:Commentary]])



-- === FINDER === "
vimp.nnoremap('<leader><leader>',       [[<cmd>lua require('telescope.builtin').git_files()<cr>]])
vimp.nnoremap('<C-Space>',              [[<cmd>lua require('telescope.builtin').buffers(center_list)<cr>]])
vimp.nnoremap('<C-p>',                  [[:DmenuFinderFindFile<CR>]])
