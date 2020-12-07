-- https://github.com/wbthomason/packer.nvim
-- git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
vim.cmd('packadd packer.nvim')

require('packer').startup(
    function()
        use { 'wbthomason/packer.nvim', opt = true }                            -- package manager
        use 'svermeulen/vimpeccable'

        use 'nvim-lua/plenary.nvim'                                             -- windowing and shit beta for NVIM
        use 'nvim-lua/popup.nvim'                                               -- hoepfully will get merget in mainsteream
        use 'neovim/nvim-lspconfig'
        use 'nvim-lua/completion-nvim'
        use 'RishabhRD/popfix'
        use 'RishabhRD/nvim-lsputils'
        use { 'aca/completion-tabnine', run = 'sh install.sh' }
        use 'SirVer/ultisnips'                                                  --snipets engine
        use 'honza/vim-snippets'
        use 'lfilho/cosco.vim'                                                  --add semicolon or comma n the end
        use 'tpope/vim-commentary'
        use 'sheerun/vim-polyglot'
        use 'nvim-treesitter/nvim-treesitter'

        use 'liuchengxu/vim-which-key'
        use 'nvim-telescope/telescope.nvim'                                     --finder and runner
        use 'romgrk/barbar.nvim'
        -- use 'akinsho/nvim-bufferline.lua'
        use 'voldikss/vim-floaterm'                                             --terminal
        use 'has2k1/vim-dmenu-finder'
        use 'kyazdani42/nvim-tree.lua'                                          --side-bar file manager
        use 'yggdroot/indentline'                                               --indentation (characters)
        use 'mbbill/undotree'                                                   --show a tree of undos
        use 'glepnir/dashboard-nvim'

        use 'matze/vim-move'                                                    --move lines with alt-arrow
        use 'mg979/vim-visual-multi'                                            --multi cursors
        use 'jiangmiao/auto-pairs'                                              --auto close brackets and parenthesis
        use 'christoomey/vim-tmux-navigator'
        use 'yuttie/comfortable-motion.vim'                                     --comfortable scroll
        use 'tpope/vim-repeat'                                                  -- '.' for better repeat functioalities
        use 'tpope/vim-surround'                                                --manipulating sorround objects

        use 'ingolemo/vim-bufferclose'
        use 'airblade/vim-rooter'
        use 'airblade/vim-gitgutter'                                            --show differences (GIT)
        use 'rrethy/vim-illuminate'                                             --highlightusert same words as cursor
        use 'haya14busa/incsearch.vim'
        use 'kana/vim-fakeclip'                                                 --better clipboard
        use 'direnv/direnv'

        use 'tjdevries/express_line.nvim'
        use 'tjdevries/colorbuddy.nvim'
        use 'kyazdani42/nvim-web-devicons'                                      --file icons
        use 'ishan9299/modus-theme-vim'
        -- use 'TaDaa/vimade'                                                      --Fade inctive window
    end
)

require('optis')
require('utils')
require('theme')
