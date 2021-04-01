" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["colorbuddy.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_colorbuddy\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["comfortable-motion.vim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_comfscroll\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/comfortable-motion.vim"
  },
  ["compe-tabnine"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/compe-tabnine"
  },
  ["cosco.vim"] = {
    config = { "\27LJ\2\n¼\1\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0Iautocmd FileType rust nmap <silent> , <Plug>(cosco-commaOrSemiColon)Hautocmd FileType cpp nmap <silent> , <Plug>(cosco-commaOrSemiColon)\bcmd\bvim\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/cosco.vim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_dashboard\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  direnv = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/direnv"
  },
  ["express_line.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_expressline\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/express_line.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_formatter\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_gitsign\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["incsearch.vim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/incsearch.vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_indentline\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_lspsaga\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["modus-theme-vim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/modus-theme-vim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_nvimcompe\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-cursorline"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-cursorline"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_dapconfig\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_hlsearch\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_lspconfis\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_nvimtree\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_treesitter\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim-web-nonicons"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-web-nonicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["snippets.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_snippets\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/snippets.nvim"
  },
  ["specs.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_specscursor\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/specs.nvim"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\2\n\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\rcaptures\1\2\0\0\fcomment\1\0\2\17hunspell_cmd\rhunspell\ahl\rSpellBad\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/spellsitter.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_telescopy\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["timer.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_timernvim\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/timer.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n”\1\0\0\5\0\b\0\r6\0\0\0009\0\1\0005\2\2\0'\3\3\0'\4\4\0B\0\4\0016\0\0\0009\0\1\0005\2\5\0'\3\6\0'\4\a\0B\0\4\1K\0\1\0+:UndotreeToggle<CR> :UndotreeFocus<CR>\n<C-U>\1\2\0\0\vsilent\14:redo<CR>\6U\1\2\0\0\vsilent\tbind\tvimp\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-bufferclose"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-bufferclose"
  },
  ["vim-commentary"] = {
    config = { "\27LJ\2\nB\0\0\5\0\5\0\a6\0\0\0009\0\1\0'\2\2\0'\3\3\0'\4\4\0B\0\4\1K\0\1\0\20:Commentary<CR>\6#\anv\tbind\tvimp\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-fakeclip"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-fakeclip"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_floaterm\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-move"] = {
    config = { "\27LJ\2\n€\2\0\0\6\0\r\0\0296\0\0\0009\0\1\0'\2\2\0'\3\3\0'\4\4\0B\0\4\0016\0\0\0009\0\1\0'\2\2\0'\3\5\0'\4\6\0B\0\4\0016\0\a\0009\0\b\0009\0\t\0'\2\n\0'\3\3\0'\4\v\0004\5\0\0B\0\5\0016\0\a\0009\0\b\0009\0\t\0'\2\n\0'\3\5\0'\4\f\0004\5\0\0B\0\5\1K\0\1\0\22<Plug>MoveBlockUp\24<Plug>MoveBlockDown\6v\20nvim_set_keymap\bapi\bvim\21<Plug>MoveLineUp\r<C-A-Up>\23<Plug>MoveLineDown\15<C-A-Down>\6n\nrbind\tvimp\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-move"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  ["vim-visual-multi"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_visualmulti\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  vimpeccable = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vimpeccable"
  }
}

-- Config for: colorbuddy.nvim
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_colorbuddy\frequire\0", "config", "colorbuddy.nvim")
-- Config for: snippets.nvim
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_snippets\frequire\0", "config", "snippets.nvim")
-- Config for: indent-blankline.nvim
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_indentline\frequire\0", "config", "indent-blankline.nvim")
-- Config for: nvim-hlslens
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_hlsearch\frequire\0", "config", "nvim-hlslens")
-- Config for: vim-visual-multi
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_visualmulti\frequire\0", "config", "vim-visual-multi")
-- Config for: nvim-compe
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_nvimcompe\frequire\0", "config", "nvim-compe")
-- Config for: spellsitter.nvim
try_loadstring("\27LJ\2\n\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\rcaptures\1\2\0\0\fcomment\1\0\2\17hunspell_cmd\rhunspell\ahl\rSpellBad\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
-- Config for: dashboard-nvim
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_dashboard\frequire\0", "config", "dashboard-nvim")
-- Config for: express_line.nvim
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_expressline\frequire\0", "config", "express_line.nvim")
-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_lspconfis\frequire\0", "config", "nvim-lspconfig")
-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
-- Config for: comfortable-motion.vim
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_comfscroll\frequire\0", "config", "comfortable-motion.vim")
-- Config for: specs.nvim
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_specscursor\frequire\0", "config", "specs.nvim")
-- Config for: vim-move
try_loadstring("\27LJ\2\n€\2\0\0\6\0\r\0\0296\0\0\0009\0\1\0'\2\2\0'\3\3\0'\4\4\0B\0\4\0016\0\0\0009\0\1\0'\2\2\0'\3\5\0'\4\6\0B\0\4\0016\0\a\0009\0\b\0009\0\t\0'\2\n\0'\3\3\0'\4\v\0004\5\0\0B\0\5\0016\0\a\0009\0\b\0009\0\t\0'\2\n\0'\3\5\0'\4\f\0004\5\0\0B\0\5\1K\0\1\0\22<Plug>MoveBlockUp\24<Plug>MoveBlockDown\6v\20nvim_set_keymap\bapi\bvim\21<Plug>MoveLineUp\r<C-A-Up>\23<Plug>MoveLineDown\15<C-A-Down>\6n\nrbind\tvimp\0", "config", "vim-move")
-- Config for: formatter.nvim
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_formatter\frequire\0", "config", "formatter.nvim")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_treesitter\frequire\0", "config", "nvim-treesitter")
-- Config for: nvim-dap
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_dapconfig\frequire\0", "config", "nvim-dap")
-- Config for: nvim-tree.lua
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_nvimtree\frequire\0", "config", "nvim-tree.lua")
-- Config for: cosco.vim
try_loadstring("\27LJ\2\n¼\1\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0Iautocmd FileType rust nmap <silent> , <Plug>(cosco-commaOrSemiColon)Hautocmd FileType cpp nmap <silent> , <Plug>(cosco-commaOrSemiColon)\bcmd\bvim\0", "config", "cosco.vim")
-- Config for: vim-commentary
try_loadstring("\27LJ\2\nB\0\0\5\0\5\0\a6\0\0\0009\0\1\0'\2\2\0'\3\3\0'\4\4\0B\0\4\1K\0\1\0\20:Commentary<CR>\6#\anv\tbind\tvimp\0", "config", "vim-commentary")
-- Config for: undotree
try_loadstring("\27LJ\2\n”\1\0\0\5\0\b\0\r6\0\0\0009\0\1\0005\2\2\0'\3\3\0'\4\4\0B\0\4\0016\0\0\0009\0\1\0005\2\5\0'\3\6\0'\4\a\0B\0\4\1K\0\1\0+:UndotreeToggle<CR> :UndotreeFocus<CR>\n<C-U>\1\2\0\0\vsilent\14:redo<CR>\6U\1\2\0\0\vsilent\tbind\tvimp\0", "config", "undotree")
-- Config for: timer.nvim
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_timernvim\frequire\0", "config", "timer.nvim")
-- Config for: telescope.nvim
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_telescopy\frequire\0", "config", "telescope.nvim")
-- Config for: lspsaga.nvim
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_lspsaga\frequire\0", "config", "lspsaga.nvim")
-- Config for: vim-floaterm
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_floaterm\frequire\0", "config", "vim-floaterm")
-- Config for: gitsigns.nvim
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_gitsign\frequire\0", "config", "gitsigns.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
