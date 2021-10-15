-- pack https://github.com/wbthomason/packer.nvim
-- git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
-- TODO: do something
-- HACK: somethnig

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
-- vim.o.cursorline = true                                                 -- enable cursorline
-- vim.o.cursorcolumn = true
vim.o.splitbelow = true                                                 -- split below instead of above
vim.o.splitright = true                                                 -- split right instead of left
vim.o.startofline = false                                               -- don't go to the start of the line when moving to another file
vim.o.lazyredraw = true                                                 -- lazyredraw to make macro faster

vim.o.tabstop = 4                                                       -- tabsize
vim.o.shiftwidth = 4                                                    -- set indentation width
vim.o.softtabstop = 4
vim.o.expandtab = true                                                  -- use spaces instead of tabs
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


---------------------------------------------- === PLUGINS === ----------------------------------------------

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.cmd('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd('packadd packer.nvim')
require('packer').startup(
    function(use)
        use { 'wbthomason/packer.nvim', opt = true }
        use { 'svermeulen/vimpeccable' }
        use { 'nvim-lua/plenary.nvim' }
        use { 'nvim-lua/popup.nvim' }
        use { 'neovim/nvim-lspconfig',
            config = function()
                require('plug_lspconfis')
            end
        }
        use { 'nvim-treesitter/nvim-treesitter',
            config = function()
                require('plug_treesitter')
            end
        }
        use {"mfussenegger/nvim-dap",
            requires = { "rcarriga/nvim-dap-ui" },
            config = function()
                require('plug_dapconfig')
            end
        }
        use { 'hrsh7th/nvim-cmp',
            requires = {
                'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-path',
                'ray-x/lsp_signature.nvim',
                {'dcampos/cmp-snippy', requires = { 'dcampos/nvim-snippy'}},
                -- {'tzachar/cmp-tabnine', run = './install.sh'},
            },
            config = function()
                require('plug_nvimcompe')
            end
        }
        use {'nvim-telescope/telescope.nvim',
            config = function()
                require('plug_telescopy')
            end
        }
        use { 'glepnir/lspsaga.nvim',
            config = function()
                require('plug_lspsaga')
            end
        }
        use { "numToStr/FTerm.nvim",
            requires = { 'akinsho/nvim-toggleterm.lua' },
            config = function()
                require('plug_floaterm')
            end
        }
        use { 'mhartington/formatter.nvim',
            config = function()
                require('plug_formatter')
            end
        }
        use { 'kyazdani42/nvim-tree.lua',
            -- commit = '37f1598bd4388c8089cf08007b17a3555c0328f0',
            config = function()
                require('plug_nvimtree')
            end
        }
        use {'lukas-reineke/indent-blankline.nvim',
            -- branch = 'lua',
            config = function()
                require('plug_indentline')
            end
        }
        use { 'glepnir/dashboard-nvim',
            config = function()
                require('plug_dashboard')
            end
        }
        use {
            "folke/which-key.nvim",
            config = function()
                require('plug_whichkey')
            end
        }
        use {
            "folke/trouble.nvim",
            requires = "kyazdani42/nvim-web-devicons",
            config = function()
                require('plug_trouble')
            end
        }
        use {
            'b3nj5m1n/kommentary',
            config = function()
                require('kommentary.config').configure_language("default", {
                    prefer_single_line_comments = true,
                })
                vim.api.nvim_set_keymap("n", "<leader>#", "<Plug>kommentary_motion_default", {})
                vim.api.nvim_set_keymap("n", "#", "<Plug>kommentary_line_default", {})
                vim.api.nvim_set_keymap('v', '#', '<Plug>kommentary_visual_default', { silent = true })
            end
        }
        use {
            'windwp/nvim-autopairs',
            config = function()
                require('nvim-autopairs').setup({
                    disable_filetype = { "TelescopePrompt" , "vim" },
                })
            end
        }
        use { -- tabbing out from parentheses
            'abecodes/tabout.nvim',
        }
        use {
            'numToStr/Navigator.nvim',
            config = function()
                require('plug_navigator')
            end
        }
        use { 'karb94/neoscroll.nvim',
            config = function()
                require('plug_comfscroll')
            end
        }
        use { 'sindrets/diffview.nvim',
            config = function()
                require('plug_diffview')
            end
        }
        use { 'TimUntersberger/neogit',
            requires = 'nvim-lua/plenary.nvim'
        }
        use { 'lewis6991/gitsigns.nvim',
            requires = { 'nvim-lua/plenary.nvim' },
            config = function()
                require('plug_gitsign')
            end
        }
        use { 'kevinhwang91/nvim-hlslens',
            config = function()
                require('plug_hlsearch')
            end
        }
        use { 'romgrk/barbar.nvim',
            config = function()
                require('plug_bufferline')
            end
        }
        use { 'tjdevries/express_line.nvim',
            config = function()
                require('plug_expressline')
            end
        }
        -- use { 'windwp/windline.nvim',
        --     config = function()
        --         require('plug_statusline')
        --     end
        -- }
        use { 'tjdevries/colorbuddy.nvim',
            config = function()
                require('plug_colorbuddy')
            end
        }
        --[[ use { 'rktjmp/lush.nvim',
            config = function()
                require('plug_lushnvim')
            end
        } ]]
        use { 'norcalli/nvim-colorizer.lua',
            config = function()
                require'colorizer'.setup()
            end
        }
        use {
            'yamatsum/nvim-web-nonicons',
            requires = {'kyazdani42/nvim-web-devicons'}
        }
        -- disabling the cursor-line/column in unused win/buffer
        use { 'Pocco81/NoCLC.nvim',
            config = function()
                require("no-clc").setup({
                    load_at_startup = true,
                    cursorline = true,
                    cursorcolumn = true
                })
            end
        }
        use {
            "folke/todo-comments.nvim",
            requires = "nvim-lua/plenary.nvim",
            config = function()
                require('plug_todolist')
            end
        }
        use { 'lewis6991/spellsitter.nvim',
           config = function()
               require('spellsitter').setup {
                    hl = 'SpellBad',
                    captures = {'comment'},  -- set to {} to spellcheck everything
                    hunspell_cmd = 'hunspell',
                    -- hunspell_args = {'d' 'en_US'},
                }
           end
        }

        use { 'fedepujol/move.nvim',
            config = function()
                vim.api.nvim_set_keymap('n', '<C-A-Down>', "<Cmd>lua require('move').MoveLine(1)<CR>", { noremap = true, silent = true })
                vim.api.nvim_set_keymap('n', '<C-A-Up>', "<Cmd>lua require('move').MoveLine(-1)<CR>", { noremap = true, silent = true })
                vim.api.nvim_set_keymap('v', '<C-A-Down>', "<Cmd>lua require('move').MoveBlock(1)<CR>", { noremap = true, silent = true })
                vim.api.nvim_set_keymap('v', '<C-A-Up>', "<Cmd>lua require('move').MoveBlock(-1)<CR>", { noremap = true, silent = true })
            end
        }

        -- VIM --
        use { 'sheerun/vim-polyglot' }
        use { 'kana/vim-fakeclip' }
        use { 'haya14busa/incsearch.vim' }
        use { 'direnv/direnv' }
        use { 'mg979/vim-visual-multi',
            config = function()
                require('plug_visualmulti')
            end
        }
        use { 'mbbill/undotree',
            config = function()
                require('vimp').bind({'silent'},  'U',     [[:redo<CR>]])
                require('vimp').bind({'silent'},  '<C-U>', [[:UndotreeToggle<CR> :UndotreeFocus<CR>]])
            end
        }
        use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }
    end
)
-- require('other_blame')

---------------------------------------------- === ATUOCMDS === ----------------------------------------------
-- === DEFAULT FILETYPE === "
vim.cmd([[retab]])

vim.cmd([[au BufNewFile,BufRead *.envrc   set syntax=sh]])
-- === FOCUS === "
-- vim.cmd([[au WinLeave * set nocursorline nocursorcolumn norelativenumber]])
-- vim.cmd([[au WinEnter * set cursorline cursorcolumn relativenumber]])

-- === AUTOSAVE === "
vim.cmd([[au WinLeave,BufLeave,TabLeave,FocusLost * silent wall]])

--- === HIGHLGHT ON YANK
vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank()]])
vim.highlight.on_yank { on_visual = true }

---------------------------------------------- === BINDINGS === ----------------------------------------------
vimp = require('vimp')
vim.g.mapleader = " "

-- === REMOVE HABITS === "
vimp.nnoremap('d',              [["_d]])
vimp.vnoremap('d',              [["_d]])
vimp.nnoremap('c',              [["_c]])
vimp.vnoremap('c',              [["_c]])
vimp.nnoremap('<S-Up>',         [[<Nop>]])
vimp.nnoremap('<S-Down>',       [[<Nop>]])

-- === CHANGE CASE === "
vimp.nnoremap('~',          [[g~aw]])
-------------------------------------------- === LAST MAP === ---------------------------------------------
function closer()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        local config = vim.api.nvim_win_get_config(win);
            if config.relative ~= "" then
                vim.api.nvim_win_close(win, false); 
            end
        end
end

vimp.nnoremap({'silent', 'expr'}, '<ESC>', function()
    -- vim.cmd(':lua require("goto-preview").close_all_win()')
    vim.cmd(':noh')
    -- vim.lsp.diagnostic.clear(0, 0, 0)
    -- vim.api.nvim_buf_clear_namespace(0, -1, 0, -1)
    -- vim.cmd('lua closer()')
    return [[<ESC>]]
end)
