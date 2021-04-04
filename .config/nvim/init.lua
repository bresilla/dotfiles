-- https://github.com/wbthomason/packer.nvim
-- git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim

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


---------------------------------------------- === PLUGINS === ----------------------------------------------
vimp = require('vimp')

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.cmd('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd('packadd packer.nvim')
require('packer').startup(
    function()
        -- LUA -- package manager
        use { 'wbthomason/packer.nvim', opt = true }                            

        -- LUA --
        use { 'svermeulen/vimpeccable' }                                        

        -- LUA -- windowing and shit beta for NVIM
        use { 'nvim-lua/plenary.nvim' }                                         

        -- LUA -- hoepfully will get merget in mainsteream
        use { 'nvim-lua/popup.nvim' }                                           

        -- LUA --
        use { 'neovim/nvim-lspconfig', 
            config = function()
                require('plug_lspconfis')
            end
        }                                         

        -- LUA --
        use { 'norcalli/snippets.nvim',
            config = function()
                require('plug_snippets')
            end
        }                                        

        -- VIM -- add semicolon or comma n the end
        use { 'lfilho/cosco.vim',
            config = function()
                vim.cmd([[autocmd FileType cpp nmap <silent> , <Plug>(cosco-commaOrSemiColon)]])
                vim.cmd([[autocmd FileType rust nmap <silent> , <Plug>(cosco-commaOrSemiColon)]])
            end
        }                                              

        -- VIM --
        use { 'tpope/vim-commentary',
            config = function()
                vimp.bind('nv', '#', [[:Commentary<CR>]])
            end
        }                                          

        -- VIM --
        use { 'sheerun/vim-polyglot' }                                          

        -- LUA --
        use { 'nvim-treesitter/nvim-treesitter',
            config = function()
                require('plug_treesitter')
            end
        }                               

        -- LUA -- debugging adapter protocol DAP
        use { 'mfussenegger/nvim-dap',
            config = function()
                require('plug_dapconfig')
            end
        }                                         

        -- LUA -- Spell checker
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

        -- LUA -- COMPLETION
        use { 'hrsh7th/nvim-compe', 
            config = function()
                require('plug_nvimcompe')
            end
        }                                            

        -- LUA --
        use { 'tzachar/compe-tabnine', run = './install.sh' }                   

        -- LUA -- finder and runner
        use {'nvim-telescope/telescope.nvim',                                   
            config = function()
                require('plug_telescopy')
            end
        }

        -- LUA -- execute commands after some time
        use { 'alex-popov-tech/timer.nvim',
            config = function()
                require('plug_timernvim')
            end
        }                                    

        -- VIM -- terminal
        use { 'voldikss/vim-floaterm',
            config = function()
                require('plug_floaterm')
            end
        }                                         

        -- LUA -- lsp-UI
        use { 'glepnir/lspsaga.nvim',
            config = function()
                require('plug_lspsaga')
            end
        }                                          

        -- LUA -- side-bar file manager
        use { 'kyazdani42/nvim-tree.lua',
            config = function()
                require('plug_nvimtree')
            end
        }                                      

        -- LUA -- ndentation lines
        use {'lukas-reineke/indent-blankline.nvim',                             
            branch = 'lua',
            config = function()
                require('plug_indentline')
            end
        }

        -- VIM -- show a tree of undos
        use { 'mbbill/undotree',
            config = function()
                vimp.bind({'silent'},  'U',     [[:redo<CR>]])
                vimp.bind({'silent'},  '<C-U>', [[:UndotreeToggle<CR> :UndotreeFocus<CR>]])
            end
        }                                               

        -- VIM --
        use { 'glepnir/dashboard-nvim',
            config = function()
                require('plug_dashboard')
            end
        }                                        

        -- LUA -- formatter
        use { 'mhartington/formatter.nvim',
            config = function()
                require('plug_formatter')
            end
        }                                    

        -- VIM -- move lines with alt-arrow
        use { 'matze/vim-move', 
            config = function()
                vimp.rbind('n',                 '<C-A-Down>',       [[<Plug>MoveLineDown]])
                vimp.rbind('n',                 '<C-A-Up>',         [[<Plug>MoveLineUp]])
                vim.api.nvim_set_keymap("v",    "<C-A-Down>",       "<Plug>MoveBlockDown", {})
                vim.api.nvim_set_keymap("v",    "<C-A-Up>",         "<Plug>MoveBlockUp", {})
            end
        }                                                

        -- VIM -- multi cursors
        use { 'mg979/vim-visual-multi',
            config = function()
                require('plug_visualmulti')
            end
        }                                        

        -- LUA -- auto close brackets and parenthesis
        use { 'windwp/nvim-autopairs',                                          
            config = function()
                require('nvim-autopairs').setup({
                    disable_filetype = { "TelescopePrompt" , "vim" },
                })
            end
        }

        -- LUA -- cursor movements
        use { 'edluffy/specs.nvim',
            config = function()
                require('plug_specscursor')
            end
        }                                            

        -- LUA -- tmux and pane movementsv
        use {
            'numToStr/Navigator.nvim',
            config = function()
                require('plug_navigator')
            end
        }

        -- VIM -- comfortable scroll
        use { 'yuttie/comfortable-motion.vim',
            config = function()
                require('plug_comfscroll')
            end
        }                                 

        -- VIM -- '.' for better repeat functioalities
        use { 'tpope/vim-repeat' }                                              

        -- VIM -- manipulating sorround objects
        use { 'tpope/vim-surround' }                                            

        -- LUA --
        use { 'ingolemo/vim-bufferclose' }                                      

        -- VIM --
        use { 'airblade/vim-rooter' }                                           

        use { 'lewis6991/gitsigns.nvim', 
            requires = { 'nvim-lua/plenary.nvim' },
            config = function()
                require('plug_gitsign')
            end
        }                                                                       
        --use { 'yamatsum/nvim-cursorline' }

        -- VIM --
        use { 'haya14busa/incsearch.vim' }                                      

        use { 'kevinhwang91/nvim-hlslens',
            config = function()
                require('plug_hlsearch')
            end
        }                                     

        -- VIM -- better clipboard
        use { 'kana/vim-fakeclip' }                                             

        -- VIM --
        use { 'direnv/direnv' }                                                 

        -- LUA --
        use { 'romgrk/barbar.nvim',                                            
            config = function()
                require('plug_bufferline')
            end
        }

        -- LUA --
        use { 'tjdevries/express_line.nvim',
            config = function()
                require('plug_expressline')
            end
        }                                   

        -- LUA --
        use { 'tjdevries/colorbuddy.nvim',
            config = function()
                require('plug_colorbuddy')
            end
        }                                     

        use {
            'yamatsum/nvim-web-nonicons',
            requires = {'kyazdani42/nvim-web-devicons'}
        }

        -- LUA --
        use { 'ishan9299/modus-theme-vim', 
            branch = 'stable' 
        }                                                                       

        -- VIM --
        use { 'iamcco/markdown-preview.nvim', 
            run = 'cd app && yarn install' 
        }                                                                       
    end
)
require('other_blame')

---------------------------------------------- === ATUOCMDS === ----------------------------------------------
-- === DEFAULT FILETYPE === "
vim.cmd([[au BufNewFile,BufRead *.envrc   set syntax=sh]])

-- === FOCUS === "
vim.cmd([[au WinLeave * set nocursorline nocursorcolumn norelativenumber]])
vim.cmd([[au WinEnter * set cursorline cursorcolumn relativenumber]])

-- === AUTOSAVE === "
vim.cmd([[au WinLeave,BufLeave,TabLeave,FocusLost * silent wall]])

--- === HIGHLGHT ON YANK
vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank()]])
vim.highlight.on_yank { on_visual = true }

---------------------------------------------- === BINDINGS === ----------------------------------------------
vim.g.mapleader = " "

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

-------------------------------------------- === LAST MAP === ---------------------------------------------
vimp.nnoremap({'silent', 'expr'}, '<ESC>', function()
    vim.cmd('nohlsearch')
    -- vim.cmd(':FloatermKill!')
    -- vim.lsp.diagnostic.clear(0)
    vim.lsp.diagnostic.display(nil, 0)
    vim.api.nvim_buf_clear_namespace(0, -1, 0, -1)
    require('hlslens').disable()
    return [[<ESC>]]
end)
