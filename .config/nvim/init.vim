if &compatible
  set nocompatible
endif
source $HOME/.config/nvim/gen.vim

if empty(glob('~/.config/nvim/plug.vim'))
  silent !curl -fLo ~/.config/nvim/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

function init#server_plugs()
    Plug 'nvim-lua/plenary.nvim'                        "| windowing and shit beta for NVIM
    Plug 'nvim-lua/popup.nvim'                          "| hoepfully will get merget in mainsteream
    Plug 'neovim/nvim-lspconfig'
    Plug 'puremourning/vimspector'
    Plug 'nvim-lua/completion-nvim'
    " Plug 'aca/completion-tabnine', { 'do': './install.sh' }
    Plug 'SirVer/ultisnips'                             "snipets engine
    Plug 'lfilho/cosco.vim'                             "add semicolon or comma n the end
    Plug 'tpope/vim-commentary'
endfunction

function init#space_plugs()
    Plug 'liuchengxu/vim-which-key'
    Plug 'nvim-telescope/telescope.nvim'                "finder and runner
    Plug 'romgrk/barbar.nvim'
    Plug 'voldikss/vim-floaterm'                        "terminal
    Plug 'has2k1/vim-dmenu-finder'
    Plug 'kyazdani42/nvim-tree.lua'                     "side-bar file manager
    Plug 'yggdroot/indentline'                          "indentation (characters)
    Plug 'mbbill/undotree'                              "show a tree of undos
    Plug 'glepnir/dashboard-nvim'
endfunction

function init#navi_plugs()
    Plug 'matze/vim-move'                               "move lines with alt-arrow
    Plug 'mg979/vim-visual-multi', {'branch': 'master'} "multi cursors
    Plug 'jiangmiao/auto-pairs'                         "auto close brackets and parenthesis
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'yuttie/comfortable-motion.vim'                "comfortable scroll
    Plug 'tpope/vim-repeat'                             " '.' for better repeat functioalities
    Plug 'tpope/vim-surround'                           "manipulating sorround objects
endfunction

function init#tools_plugs()
    Plug 'ingolemo/vim-bufferclose'
    Plug 'airblade/vim-rooter'
    Plug 'airblade/vim-gitgutter'                       "show differences (GIT)
    Plug 'rrethy/vim-illuminate'                        "highlightusert same words as cursor
    Plug 'haya14busa/incsearch.vim'
    Plug 'kana/vim-fakeclip'                            "better clipboard
    Plug 'direnv/direnv'
endfunction

function init#theme_plugs()
    Plug 'tjdevries/express_line.nvim'
    Plug 'tjdevries/colorbuddy.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'kyazdani42/nvim-web-devicons'                 "file icons
    Plug 'TaDaa/vimade'                                 "Fade inctive window
    Plug 'gcavallanti/vim-noscrollbar'                  "scrollbar
    Plug 'rakr/vim-one'
    Plug 'ishan9299/modus-theme-vim'
endfunction

function init#other_plugs()
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } } "firefox theme
endfunction

call plug#begin('~/.config/plug_vim')
    "language
    call init#server_plugs()
    "workspace
    call init#space_plugs()
    "navigation
    call init#navi_plugs()
    "tools
    call init#tools_plugs()
    "theme
    call init#theme_plugs()
    "other
    call init#other_plugs()
call plug#end()




source $HOME/.config/nvim/keys.vim

source $HOME/.config/nvim/tools.vim
luafile $HOME/.config/nvim/tools.lua

" source $HOME/.config/nvim/theme.vim

lua require('colorbuddy').colorscheme('modus-vivendi')
luafile $HOME/.config/nvim/rainbow.lua
