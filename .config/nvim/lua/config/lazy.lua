-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- -- Setup lazy.nvim
-- require("lazy").setup({
--   spec = {
--     -- import your plugins
--     { import = "plugins" },
--   },
--   -- Configure any other settings here. See the documentation for more details.
--   -- colorscheme that will be used when installing plugins.
--   install = { colorscheme = { "habamax" } },
--   -- automatically check for plugin updates
--   checker = { enabled = true },
-- })

-- Setup lazy.nvim
require("lazy").setup({
    defaults = {
        lazy = false, -- should plugins be lazy-loaded?
    },
    spec = {
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-lua/popup.nvim' },
        { 'neovim/nvim-lspconfig',
            config = function()
                require('plug.lspconfis')
            end
        },
        { 'nvim-treesitter/nvim-treesitter',
            config = function()
                require('plug.treesitter')
            end
        },
        {"mfussenegger/nvim-dap",
            requires = { "rcarriga/nvim-dap-ui" },
            config = function()
                require('plug.dapconfig')
            end
        },
        { 'hrsh7th/nvim-cmp',
            requires = {
                'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-path',
                {'dcampos/cmp-snippy', requires = { 'dcampos/nvim-snippy'}},
            },
            config = function()
                require('plug.nvimcompe')
            end
        },
        {'nvim-telescope/telescope.nvim',
            config = function()
                require('plug.telescopy')
            end
        },
        { 'glepnir/lspsaga.nvim',
            config = function()
                require('plug.lspsaga')
            end
        },
        { "numToStr/FTerm.nvim",
            requires = { 'akinsho/nvim-toggleterm.lua' },
            config = function()
                require('plug.floaterm')
            end
        },
        { 'mhartington/formatter.nvim',
            config = function()
                require('plug.formatter')
            end
        },
        { 'kyazdani42/nvim-tree.lua',
            config = function()
                require('plug.nvimtree')
            end
        },
        { 'nvim-tree/nvim-web-devicons' },
        {'lukas-reineke/indent-blankline.nvim',
            -- branch = 'lua',
            config = function()
                require('plug.indentline')
            end
        },
        { 'glepnir/dashboard-nvim',
            opts = function()
                require('plug.dashboard')
            end
        },
        {
            "folke/which-key.nvim",
            config = function()
                require('plug.whichkey')
            end
        },
        {
            "folke/trouble.nvim",
            requires = "kyazdani42/nvim-web-devicons",
            config = function()
                require('plug.trouble')
            end
        },
        {
            'b3nj5m1n/kommentary',
            config = function()
                require('kommentary.config').configure_language("default", {
                    prefer_single_line_comments = true,
                })
                vim.api.nvim_set_keymap("n", "<leader>#", "<Plug>kommentary_motion_default", {})
                vim.api.nvim_set_keymap("n", "#", "<Plug>kommentary_line_default", {})
                vim.api.nvim_set_keymap('v', '#', '<Plug>kommentary_visual_default', { silent = true })
            end
        },
        {
            'windwp/nvim-autopairs',
            config = function()
                require('nvim-autopairs').setup({
                    disable_filetype = { "TelescopePrompt" , "vim" },
                })
            end
        },
        { -- tabbing out from parentheses
            'abecodes/tabout.nvim',
        },
        {
            'numToStr/Navigator.nvim',
            config = function()
                require('plug.navigator')
            end
        },
        { 'karb94/neoscroll.nvim',
            config = function()
                require('plug.comfscroll')
            end
        },
        {
            'VonHeikemen/searchbox.nvim',
            'VonHeikemen/fine-cmdline.nvim',
            requires = {
                {'MunifTanjim/nui.nvim'}
            },
            config = function()
                vim.api.nvim_set_keymap('n', '<leader>c', '<cmd>FineCmdline<CR>', {noremap = true})
                vim.api.nvim_set_keymap('n', '<leader>s', ':SearchBoxIncSearch<CR>', {noremap = true})
            end
        },
        { 'sindrets/diffview.nvim',
            config = function()
                require('plug.diffview')
            end
        },
        { 'TimUntersberger/neogit',
            requires = 'nvim-lua/plenary.nvim'
        },
        { 'lewis6991/gitsigns.nvim',
            requires = { 'nvim-lua/plenary.nvim' },
            config = function()
                require('plug.gitsign')
            end
        },
        { 'kevinhwang91/nvim-hlslens',
            config = function()
                require('plug.hlsearch')
            end
        },
        { 'romgrk/barbar.nvim',
            config = function()
                require('plug.bufferline')
            end
        },
        { 'tjdevries/express_line.nvim',
            config = function()
                require('plug.expressline')
            end
        },
        -- { 'windwp/windline.nvim',
        --     config = function()
        --         require('plug.statusline')
        --     end
        -- },
        { 'tjdevries/colorbuddy.nvim',
            -- version = "1.0.0",
            lazy = false,
            config = function()
                require('plug.colorbuddy')
            end
        },
        -- { 'rktjmp/lush.nvim',
        --     lazy = false,
        --     config = function()
        --         require('plug.lushnvim')
        --     end
        -- },
        { 'norcalli/nvim-colorizer.lua',
            config = function()
                require'colorizer'.setup()
            end
        },
        {
            'yamatsum/nvim-nonicons',
            requires = {'kyazdani42/nvim-web-devicons'}
        },
        {
            "folke/todo-comments.nvim",
            requires = "nvim-lua/plenary.nvim",
            config = function()
                require('plug.todolist')
            end
        },
        { 'lewis6991/spellsitter.nvim',
           config = function()
               require('spellsitter').setup {
                    hl = 'SpellBad',
                    captures = {'comment'},  -- set to {} to spellcheck everything
                    hunspell_cmd = 'hunspell',
                    -- hunspell_args = {'d' 'en_US'},
                }
           end
        },
        { 'fedepujol/move.nvim',
            config = function()
                vim.api.nvim_set_keymap('n', '<C-A-Down>', "<Cmd>lua require('move').MoveLine(1)<CR>", { noremap = true, silent = true })
                vim.api.nvim_set_keymap('n', '<C-A-Up>', "<Cmd>lua require('move').MoveLine(-1)<CR>", { noremap = true, silent = true })
                vim.api.nvim_set_keymap('v', '<C-A-Down>', "<Cmd>lua require('move').MoveBlock(1)<CR>", { noremap = true, silent = true })
                vim.api.nvim_set_keymap('v', '<C-A-Up>', "<Cmd>lua require('move').MoveBlock(-1)<CR>", { noremap = true, silent = true })
            end
        },
        -- VIM --
        { 'sheerun/vim-polyglot' },
        { 'kana/vim-fakeclip' },
        { 'haya14busa/incsearch.vim' },
        { 'direnv/direnv' },
        { 'mg979/vim-visual-multi',
            config = function()
                require('plug.visualmulti')
            end
        },
        { 'mbbill/undotree',
            config = function()
                vim.api.nvim_set_keymap("n", "U", "", {noremap = true, callback = function() print(":redo<CR>") end})
                vim.api.nvim_set_keymap("n", "C-U", "", {noremap = true, callback = function() print(":UndotreeToggle<CR> :UndotreeFocus<CR>") end})
            end
        },
        { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }
    },
})

