if &compatible
  set nocompatible
endif
source $HOME/.config/nvim/gen.vim

if empty(glob('~/.config/nvim/plug.vim'))
  silent !curl -fLo ~/.config/nvim/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

function init#lang_plugs()
    Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
    Plug 'puremourning/vimspector'
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
    Plug 'ncm2/float-preview.nvim'
    Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
    Plug 'w0rp/ale'                                     "syntax checker for vim
    Plug 'sbdchd/neoformat'
    Plug 'sheerun/vim-polyglot'                         "A collection of language packs for Vim
    Plug 'SirVer/ultisnips'                             "snipets engine
    Plug 'honza/vim-snippets'                           "snippets collection
    Plug 'lfilho/cosco.vim'                             "add semicolon or comma n the end
    Plug 'tpope/vim-commentary'
    Plug 'ntpeters/vim-better-whitespace'               "whitespace detection
    Plug 'khzaw/vim-conceal'                            "better symbols like lambda, rise power ...
endfunction

function init#space_plugs()
    Plug 'vim-ctrlspace/vim-ctrlspace'                  "a better workspace manager
    Plug 'liuchengxu/vim-clap'                          "interactive floating finder and dispatcher
    Plug 'scrooloose/nerdtree'                          "side-bar file manager
    Plug '~/.config/plug/tree-linux'
    Plug 'ryanoasis/vim-devicons'                       "icons for nerdtree
    Plug 'liuchengxu/vista.vim'                          "tagbar
    Plug 'yggdroot/indentline'                          "indentation (characters)
    Plug '907th/vim-auto-save'                          "vim autsave plugin
    Plug 'MattesGroeger/vim-bookmarks'
    Plug 'ingolemo/vim-bufferclose'
    Plug 'editorconfig/editorconfig-vim'                "EDITOR-CONFIG settings
    Plug 'mbbill/undotree'                              "show a tree of undos
    Plug 'airblade/vim-rooter'
    Plug 'has2k1/vim-dmenu-finder'
    Plug 'junegunn/fzf.vim'
endfunction

function init#navi_plugs()
    Plug 'easymotion/vim-easymotion'                    "jump to any location
    Plug 'svermeulen/vim-subversive'                    "subsiitute motion
    Plug 'matze/vim-move'                               "move lines with alt-arrow
    Plug 'gcavallanti/vim-noscrollbar'                  "scrollbar-like for statusline
    " Plug 'terryma/vim-multiple-cursors'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'} "multi cursors
    Plug 'svermeulen/vim-macrobatics'                   "better vim record
    Plug 'jiangmiao/auto-pairs'                         "auto close brackets and parenthesis
    Plug 'luochen1990/rainbow'                          "colored brackets
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'yuttie/comfortable-motion.vim'                "comfortable scroll
    Plug 'tpope/vim-repeat'                             " '.' for better repeat functioalities
    Plug 'tpope/vim-surround'                            "manipulating sorround objects
    Plug 'brooth/far.vim'                               "Find and Replace
    Plug 'andymass/vim-matchup'                         "modern matchit and matchparen replacement
endfunction

function init#tools_plugs()
    Plug 'tpope/vim-abolish'                            "better renamer substituter
    Plug 'rrethy/vim-illuminate'                        "highlightusert same words as cursor
    Plug 'wellle/targets.vim'                           "more objects to operate functions
    Plug 'godlygeek/tabular'                            "text aligner
    Plug 'haya14busa/incsearch.vim'
    Plug 'kana/vim-fakeclip'                            "better clipboard
    Plug 'direnv/direnv'
    Plug 'chrisbra/NrrwRgn'
    Plug 'bdellaterra/vim-pick-me-up'                   "where you left
endfunction

function init#git_plugs()
    Plug 'airblade/vim-gitgutter'                       "show differences (GIT)
    Plug 'tpope/vim-fugitive'                           "git wrapper
    Plug 'whiteinge/diffconflicts'
    Plug 'APZelos/blamer.nvim'
endfunction

function init#term_plugs()
    Plug 'voldikss/vim-floaterm'		                "terminal
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    Plug 'benmills/vimux'                               "run shell comands in a tmux pane
endfunction

function init#key_plugs()
    Plug 'liuchengxu/vim-which-key'
endfunction

function init#theme_plugs()
    Plug 'vim-airline/vim-airline'	                    "airline theme
    Plug 'vim-airline/vim-airline-themes'
    Plug 'edkolev/promptline.vim'
    Plug 'machakann/vim-highlightedyank'                "flash on yank
    Plug 'ap/vim-css-color'
    Plug 'powerline/fonts'                              "patched powerline-fonts
    Plug 'rakr/vim-one'                                 "Atom ONE theme
    Plug 'TaDaa/vimade'                                 "Fade inctive window
endfunction

call plug#begin('~/.config/plug_vim')
" ==== TOOLS ==== "
    "language
    call init#lang_plugs()
    "workspace
    call init#space_plugs()
    "navigation
    call init#navi_plugs()
    "tools
    call init#tools_plugs()
    "git
    call init#git_plugs()
" ==== TERMS ==== "
    call init#term_plugs()
" ==== KEYS ==== "
    call init#key_plugs()
" ==== THEMES ==== "
    call init#theme_plugs()
call plug#end()

source $HOME/.config/nvim/theme.vim
source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/tools.vim
source $HOME/.config/nvim/term.vim
