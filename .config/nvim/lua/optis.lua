---------------------------------------------- === OPTIONS === ----------------------------------------------
vim.api.nvim_set_var( 'python_host_prog', '/usr/bin/python3' )
vim.api.nvim_set_var( 'python3_host_prog', '/usr/bin/python3' )

vim.cmd('syntax on')
vim.cmd('syntax enable')
vim.cmd('filetype on')
vim.cmd('filetype indent on')
vim.cmd('filetype plugin on')
vim.cmd('filetype plugin indent on')

vim.o.clipboard = "unnamedplus" .. vim.o.clipboard                      -- clipboard manager
vim.o.termguicolors = true                                              -- truecolours for better experience
vim.o.compatible = false
vim.o.ruler = true
vim.o.shiftround = true
vim.o.hlsearch = true

vim.o.autoread = true
vim.o.history = 5000
vim.o.backup = false                                                    -- disable backup
vim.o.swapfile = false                                                  -- disable swapfile
vim.o.writebackup = false                                               -- disable backup
vim.o.autowrite = true                                                  -- autowrite buffer when it's not focused

vim.wo.wrap = false                                                      -- dont wrap lines
vim.wo.number = true                                                     -- enable number
vim.wo.relativenumber = true                                             -- enable relativenumber
vim.o.hidden = true                                                     -- keep hidden buffers
vim.o.showmode = false                                                  -- don't show mode
vim.o.showcmd = false                                                   -- don't show last command on cmd
vim.o.shortmess = vim.o.shortmess .. "F"                                -- dont dhow filename on cmd

vim.o.smartcase = true                                                  -- improve searching using '/'
vim.o.hlsearch = true                                                   -- highlight matching search
vim.o.incsearch = true
vim.o.ignorecase = true                                                 -- case insensitive on search
vim.o.re = 0                                                            -- set regexp engine to auto
vim.o.inccommand = "split"                                              -- incrementally show result of command

vim.o.laststatus = 2                                                    -- always enable statusline
vim.o.cursorline = true                                                 -- enable cursorline
vim.o.cursorcolumn = true
vim.o.splitbelow = true                                                 -- split below instead of above
vim.o.splitright = true                                                 -- split right instead of left
vim.o.startofline = false                                               -- don't go to the start of the line when moving to another file
vim.o.lazyredraw = true                                                 -- lazyredraw to make macro faster

vim.o.tabstop = 4                                                       -- tabsize
vim.o.shiftwidth = 4                                                    -- set indentation width
vim.o.expandtab = true                                                  -- use spaces instead of tabs
vim.o.softtabstop = 0
vim.o.autoindent = true                                                 -- enable autoindent
vim.o.smarttab = true                                                   -- make tab behaviour smarter
-- vim.o.smartindent = true                                                -- smarter indentation

vim.o.scrolloff = 2                                                     -- make scrolling better
vim.o.sidescroll = 10                                                   -- make scrolling better
vim.o.sidescrolloff = 15                                                -- make scrolling better

vim.o.completeopt = 'menu,menuone,noinsert,noselect'                 -- better completion
vim.o.wildmode ='longest,list,full'
vim.o.wildoptions = "pum"
vim.o.pumblend = 10
-- vim.o.pumheight = 10                                                    -- limit completion items

vim.o.synmaxcol = 300                                                   -- set limit for syntax highlighting in a single line
vim.o.updatetime = 100                                                  -- set faster update time
vim.o.timeoutlen = 500                                                  -- faster timeout wait time

vim.o.encoding = "UTF-8"                                                -- set encoding
vim.o.mouse = "a"                                                       -- enable mouse support
vim.o.foldmethod = "marker"                                             -- foldmethod using marker
vim.o.signcolumn = "yes"                                                -- enable sign column all the time, 4 column

vim.o.list = true                                                       -- display listchars
vim.o.listchars = "extends:›,precedes:‹,nbsp:␣,trail:·,tab:→\\ ,eol:¬"  -- set listchars


---------------------------------------------- === BINDINGS === ----------------------------------------------
vimp = require'vimp'
vim.g.mapleader = " "


-- === DEFAULT FILETYPE === "
vim.cmd([[au BufNewFile,BufRead *.envrc   set syntax=sh]])

-- === FOCUS === "
vim.cmd([[au WinLeave * set nocursorline nocursorcolumn norelativenumber]])
vim.cmd([[au WinEnter * set cursorline cursorcolumn relativenumber]])


-- === AUTOSAVE === "
vim.cmd([[au WinLeave,BufLeave,TabLeave,FocusLost * silent wall]])


-- === NAVIGATION === "
-- navigation panes
vimp.bind('n',            '<C-Pagedown>',             [[:BufferNext<CR>]])
vimp.bind('n',            '<C-Pageup>',               [[:BufferPrevious<CR>]])
vimp.bind('n',            '<C-M-Pagedown>',           [[:BufferMoveNext<CR>]])
vimp.bind('n',            '<C-M-Pageup>',             [[:BufferMovePrevious<CR>]])
vimp.nnoremap({'silent'},       '<C-j>',              [[:wincmd j<CR>]])
vimp.inoremap({'silent'},       '<C-j>',              [[<ESC><ESC>:wincmd j<CR>]])
vimp.nnoremap({'silent'},       '<C-k>',              [[:wincmd k<CR>]])
vimp.inoremap({'silent'},       '<C-k>',              [[<ESC><ESC>:wincmd k<CR>]])
vimp.nnoremap({'silent'},       '<C-h>',              [[:wincmd h<CR>]])
vimp.inoremap({'silent'},       '<C-h>',              [[<ESC><ESC>:wincmd h<CR>]])
vimp.nnoremap({'silent'},       '<C-l>',              [[:wincmd l<CR>]])
vimp.inoremap({'silent'},       '<C-l>',              [[<ESC><ESC>:wincmd l<CR>]])
-- move horizontally
vimp.bind('n',            '<home>',                   [[%]])
vimp.bind('n',            '<end>',                    [[$]])
-- switch to last tab
vimp.bind('n',            '-',                        [[:e #<cr>]])


-- === REMOVE HABITS === "
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


-- === UNDO TREE === "
vimp.bind({'silent'},           'U',                  [[:redo<CR>]])
vimp.bind({'silent'},           '<C-U>',              [[:UndotreeToggle<CR> :UndotreeFocus<CR>]])


-- === SEMICOLON === &&  === COMMENTER === "
vim.cmd([[autocmd FileType cpp nmap <silent> , <Plug>(cosco-commaOrSemiColon)]])
vim.cmd([[autocmd FileType rust nmap <silent> , <Plug>(cosco-commaOrSemiColon)]])
vimp.bind('nv',                  '#',                 [[:Commentary<CR>]])


--- === HIGHLGHT ON YANK
vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank()]])
vim.highlight.on_yank { on_visual = true }


--- === INDENTATION LINES === "
vim.g.indentLine_char_list = { '│' }
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_char_highlight_list = {'IndentLine'}
vim.g.indent_blankline_context_patterns = {'class', 'function', 'method', 'if', 'while', 'for'}
vim.g.indentLine_fileTypeExclude ={ 'dashboard' }


--- === MOVE LINES === "
vimp.rbind('n',                  '<C-A-Down>',             [[<Plug>MoveLineDown]])
vimp.rbind('n',                  '<C-A-Up>',               [[<Plug>MoveLineUp]])
vim.cmd([[ vmap <C-A-Down> <Plug>MoveBlockDown ]])
vim.cmd([[ vmap <C-A-Up> <Plug>MoveBlockUp ]])


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
vim.api.nvim_exec([[
    let g:VM_maps = {}
    let g:VM_maps['Find Under']         = '<M-d>'
    let g:VM_maps['Find Subword Under'] = '<M-d>'
    let g:VM_maps["Add Cursor Down"]    = '<M-S-Down>'
    let g:VM_maps["Add Cursor Up"]      = '<M-S-Up>'
    let g:VM_maps["Add Cursor At Pos"]  = '<M-i>'
    let mytext = 'hello world'
]], true)
