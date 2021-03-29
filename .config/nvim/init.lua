-- https://github.com/wbthomason/packer.nvim
-- git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
vim.cmd('packadd packer.nvim')

require('packer').startup(
    function()
        use { 'wbthomason/packer.nvim', opt = true }                            -- LUA -- package manager
        use 'svermeulen/vimpeccable'                                            -- LUA --

        use 'nvim-lua/plenary.nvim'                                             -- LUA -- windowing and shit beta for NVIM
        use 'nvim-lua/popup.nvim'                                               -- LUA -- hoepfully will get merget in mainsteream
        use 'neovim/nvim-lspconfig'                                             -- LUA --
        use 'norcalli/snippets.nvim'                                            -- LUA --
        use 'lfilho/cosco.vim'                                                  -- VIM -- add semicolon or comma n the end
        use 'tpope/vim-commentary'                                              -- VIM --
        use 'sheerun/vim-polyglot'                                              -- VIM --
        use { 'nvim-treesitter/nvim-treesitter' }                               -- LUA --
        use 'mfussenegger/nvim-dap'                                             -- LUA -- debugging adapter protocol DAP

        use 'hrsh7th/nvim-compe'                                                -- LUA -- COMPLETION
        use { 'tzachar/compe-tabnine', run = './install.sh' }                   -- LUA --
        use 'nvim-telescope/telescope.nvim'                                     -- LUA -- finder and runner
        use 'alex-popov-tech/timer.nvim'                                        -- LUA -- execute commands after some time
        use 'voldikss/vim-floaterm'                                             -- VIM -- terminal
        use 'glepnir/lspsaga.nvim'                                              -- LUA -- lsp-UI
        use 'kyazdani42/nvim-tree.lua'                                          -- LUA -- side-bar file manager
        use {'lukas-reineke/indent-blankline.nvim', 
            branch = 'lua' 
        }                                                                       -- LUA -- ndentation lines
        use 'mbbill/undotree'                                                   -- VIM -- show a tree of undos
        use 'glepnir/dashboard-nvim'                                            -- VIM --
        use 'mhartington/formatter.nvim'                                        -- LUA -- formatter

        use 'matze/vim-move'                                                    -- VIM -- move lines with alt-arrow
        use 'mg979/vim-visual-multi'                                            -- VIM -- multi cursors
        use 'jiangmiao/auto-pairs'                                              -- VIM -- auto close brackets and parenthesis
        use 'christoomey/vim-tmux-navigator'                                    -- VIM --
        use 'yuttie/comfortable-motion.vim'                                     -- VIM -- comfortable scroll
        use 'tpope/vim-repeat'                                                  -- VIM -- '.' for better repeat functioalities
        use 'tpope/vim-surround'                                                -- VIM -- manipulating sorround objects

        use 'ingolemo/vim-bufferclose'                                          -- LUA --
        use 'airblade/vim-rooter'                                               -- VIM --
        use { 'lewis6991/gitsigns.nvim', 
            requires = { 'nvim-lua/plenary.nvim' }
        }                                                                       -- LUA -- show github signs
        use 'yamatsum/nvim-cursorline'
        use 'haya14busa/incsearch.vim'                                          -- VIM --
        use 'kevinhwang91/nvim-hlslens'                                         -- LUA --
        use 'kana/vim-fakeclip'                                                 -- VIM -- better clipboard
        use 'direnv/direnv'                                                     -- VIM --

        use 'romgrk/barbar.nvim'                                                -- LUA --
        -- use 'akinsho/nvim-bufferline.lua'                                    -- LUA --
        use 'tjdevries/express_line.nvim'                                       -- LUA --
        use 'tjdevries/colorbuddy.nvim'                                         -- LUA --
        use 'kyazdani42/nvim-web-devicons'                                      -- LUA -- file icons
        use {'ishan9299/modus-theme-vim', 
            branch = 'stable' 
        }                                                                       -- LUA --
        use { 'iamcco/markdown-preview.nvim', 
            run = 'cd app && yarn install' 
        }                                                                       -- VIM --
    end
)

package.path = '/home/bresilla/.config/nvim/lua/?.lua;' .. package.path
require('optis')
require('tools')
