if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.config/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/dein')
  call dein#begin('~/.config/dein')

  call dein#add('~/.config/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

call dein#add('wsdjeg/dein-ui.vim')
call dein#add('rhysd/vim-healthcheck')

source $HOME/.config/nvim/gen.vim
source $HOME/.config/nvim/plug.vim
source $HOME/.config/nvim/theme.vim
