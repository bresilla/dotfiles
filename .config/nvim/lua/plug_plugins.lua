vim.cmd [[packadd packer.nvim]]

require('packer').startup(
    function()
        use { 'wbthomason/packer.nvim', opt = true }
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
                {'dcampos/cmp-snippy', requires = { 'dcampos/nvim-snippy'}},
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
        use {
            'VonHeikemen/searchbox.nvim',
            'VonHeikemen/fine-cmdline.nvim',
            requires = {
                {'MunifTanjim/nui.nvim'}
            },
            config = function()
                vim.api.nvim_set_keymap('n', '<leader>c', '<cmd>FineCmdline<CR>', {noremap = true})
                vim.api.nvim_set_keymap('n', '<leader>s', ':SearchBoxIncSearch<CR>', {noremap = true})
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
            'yamatsum/nvim-nonicons',
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
        -- use { 'mbbill/undotree',
        --     config = function()
        --         vim.api.nvim_set_keymap("n", "U", "", {noremap = true, callback = function() print(":redo<CR>") end})
        --         vim.api.nvim_set_keymap("n", "C-U", "", {noremap = true, callback = function() print(":UndotreeToggle<CR> :UndotreeFocus<CR>") end})
        --     end
        -- }
        use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }
    end
)


