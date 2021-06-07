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
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_floaterm\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/FTerm.nvim"
  },
  ["Navigator.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_navigator\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/Navigator.nvim"
  },
  ["NoCLC.nvim"] = {
    config = { "\27LJ\2\nf\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\20load_at_startup\2\17cursorcolumn\2\15cursorline\2\nsetup\vno-clc\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/NoCLC.nvim"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_bufferline\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["colorbuddy.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_colorbuddy\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["compe-tabnine"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/compe-tabnine"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_dashboard\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15file_panel\1\0\2\nwidth\3#\14use_icons\2\1\0\1\18diff_binaries\1\nsetup\rdiffview\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/diffview.nvim"
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
  kommentary = {
    config = { "\27LJ\2\nñ\1\0\0\6\0\n\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\b\0'\3\6\0'\4\t\0004\5\0\0B\0\5\1K\0\1\0$<Plug>kommentary_visual_default\6v\"<Plug>kommentary_line_default\6#$<Plug>kommentary_motion_default\14<leader>#\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/kommentary"
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
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_comfscroll\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
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
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
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
  ["nvim-treesitter-textsubjects"] = {
    config = { "\27LJ\2\n”\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\17textsubjects\1\0\0\fkeymaps\1\0\1\6.\23textsubjects-smart\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textsubjects"
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
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_todolist\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n¬\1\0\0\5\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0'\3\a\0'\4\b\0B\0\4\1K\0\1\0+:UndotreeToggle<CR> :UndotreeFocus<CR>\n<C-U>\1\2\0\0\vsilent\14:redo<CR>\6U\1\2\0\0\vsilent\tbind\tvimp\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-fakeclip"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-fakeclip"
  },
  ["vim-move"] = {
    config = { "\27LJ\2\n˜\2\0\0\6\0\14\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0'\3\6\0'\4\a\0B\0\4\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\4\0'\4\f\0004\5\0\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\6\0'\4\r\0004\5\0\0B\0\5\1K\0\1\0\22<Plug>MoveBlockUp\24<Plug>MoveBlockDown\6v\20nvim_set_keymap\bapi\bvim\21<Plug>MoveLineUp\r<C-A-Up>\23<Plug>MoveLineDown\15<C-A-Down>\6n\nrbind\tvimp\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-move"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-visual-multi"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_visualmulti\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  vimpeccable = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vimpeccable"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_whichkey\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time("Defining packer_plugins", false)
-- Config for: nvim-treesitter-textsubjects
time("Config for nvim-treesitter-textsubjects", true)
try_loadstring("\27LJ\2\n”\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\17textsubjects\1\0\0\fkeymaps\1\0\1\6.\23textsubjects-smart\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter-textsubjects")
time("Config for nvim-treesitter-textsubjects", false)
-- Config for: todo-comments.nvim
time("Config for todo-comments.nvim", true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_todolist\frequire\0", "config", "todo-comments.nvim")
time("Config for todo-comments.nvim", false)
-- Config for: formatter.nvim
time("Config for formatter.nvim", true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_formatter\frequire\0", "config", "formatter.nvim")
time("Config for formatter.nvim", false)
-- Config for: Navigator.nvim
time("Config for Navigator.nvim", true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_navigator\frequire\0", "config", "Navigator.nvim")
time("Config for Navigator.nvim", false)
-- Config for: which-key.nvim
time("Config for which-key.nvim", true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_whichkey\frequire\0", "config", "which-key.nvim")
time("Config for which-key.nvim", false)
-- Config for: telescope.nvim
time("Config for telescope.nvim", true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_telescopy\frequire\0", "config", "telescope.nvim")
time("Config for telescope.nvim", false)
-- Config for: nvim-dap
time("Config for nvim-dap", true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_dapconfig\frequire\0", "config", "nvim-dap")
time("Config for nvim-dap", false)
-- Config for: diffview.nvim
time("Config for diffview.nvim", true)
try_loadstring("\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15file_panel\1\0\2\nwidth\3#\14use_icons\2\1\0\1\18diff_binaries\1\nsetup\rdiffview\frequire\0", "config", "diffview.nvim")
time("Config for diffview.nvim", false)
-- Config for: barbar.nvim
time("Config for barbar.nvim", true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_bufferline\frequire\0", "config", "barbar.nvim")
time("Config for barbar.nvim", false)
-- Config for: nvim-tree.lua
time("Config for nvim-tree.lua", true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_nvimtree\frequire\0", "config", "nvim-tree.lua")
time("Config for nvim-tree.lua", false)
-- Config for: nvim-hlslens
time("Config for nvim-hlslens", true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_hlsearch\frequire\0", "config", "nvim-hlslens")
time("Config for nvim-hlslens", false)
-- Config for: nvim-compe
time("Config for nvim-compe", true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_nvimcompe\frequire\0", "config", "nvim-compe")
time("Config for nvim-compe", false)
-- Config for: spellsitter.nvim
time("Config for spellsitter.nvim", true)
try_loadstring("\27LJ\2\n\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\rcaptures\1\2\0\0\fcomment\1\0\2\17hunspell_cmd\rhunspell\ahl\rSpellBad\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time("Config for spellsitter.nvim", false)
-- Config for: lspsaga.nvim
time("Config for lspsaga.nvim", true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_lspsaga\frequire\0", "config", "lspsaga.nvim")
time("Config for lspsaga.nvim", false)
-- Config for: gitsigns.nvim
time("Config for gitsigns.nvim", true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_gitsign\frequire\0", "config", "gitsigns.nvim")
time("Config for gitsigns.nvim", false)
-- Config for: NoCLC.nvim
time("Config for NoCLC.nvim", true)
try_loadstring("\27LJ\2\nf\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\20load_at_startup\2\17cursorcolumn\2\15cursorline\2\nsetup\vno-clc\frequire\0", "config", "NoCLC.nvim")
time("Config for NoCLC.nvim", false)
-- Config for: nvim-treesitter
time("Config for nvim-treesitter", true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_treesitter\frequire\0", "config", "nvim-treesitter")
time("Config for nvim-treesitter", false)
-- Config for: nvim-lspconfig
time("Config for nvim-lspconfig", true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_lspconfis\frequire\0", "config", "nvim-lspconfig")
time("Config for nvim-lspconfig", false)
-- Config for: dashboard-nvim
time("Config for dashboard-nvim", true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_dashboard\frequire\0", "config", "dashboard-nvim")
time("Config for dashboard-nvim", false)
-- Config for: FTerm.nvim
time("Config for FTerm.nvim", true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_floaterm\frequire\0", "config", "FTerm.nvim")
time("Config for FTerm.nvim", false)
-- Config for: vim-move
time("Config for vim-move", true)
try_loadstring("\27LJ\2\n˜\2\0\0\6\0\14\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0'\3\6\0'\4\a\0B\0\4\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\4\0'\4\f\0004\5\0\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\6\0'\4\r\0004\5\0\0B\0\5\1K\0\1\0\22<Plug>MoveBlockUp\24<Plug>MoveBlockDown\6v\20nvim_set_keymap\bapi\bvim\21<Plug>MoveLineUp\r<C-A-Up>\23<Plug>MoveLineDown\15<C-A-Down>\6n\nrbind\tvimp\frequire\0", "config", "vim-move")
time("Config for vim-move", false)
-- Config for: neoscroll.nvim
time("Config for neoscroll.nvim", true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_comfscroll\frequire\0", "config", "neoscroll.nvim")
time("Config for neoscroll.nvim", false)
-- Config for: vim-visual-multi
time("Config for vim-visual-multi", true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_visualmulti\frequire\0", "config", "vim-visual-multi")
time("Config for vim-visual-multi", false)
-- Config for: nvim-autopairs
time("Config for nvim-autopairs", true)
try_loadstring("\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time("Config for nvim-autopairs", false)
-- Config for: kommentary
time("Config for kommentary", true)
try_loadstring("\27LJ\2\nñ\1\0\0\6\0\n\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\b\0'\3\6\0'\4\t\0004\5\0\0B\0\5\1K\0\1\0$<Plug>kommentary_visual_default\6v\"<Plug>kommentary_line_default\6#$<Plug>kommentary_motion_default\14<leader>#\6n\20nvim_set_keymap\bapi\bvim\0", "config", "kommentary")
time("Config for kommentary", false)
-- Config for: express_line.nvim
time("Config for express_line.nvim", true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_expressline\frequire\0", "config", "express_line.nvim")
time("Config for express_line.nvim", false)
-- Config for: undotree
time("Config for undotree", true)
try_loadstring("\27LJ\2\n¬\1\0\0\5\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0'\3\a\0'\4\b\0B\0\4\1K\0\1\0+:UndotreeToggle<CR> :UndotreeFocus<CR>\n<C-U>\1\2\0\0\vsilent\14:redo<CR>\6U\1\2\0\0\vsilent\tbind\tvimp\frequire\0", "config", "undotree")
time("Config for undotree", false)
-- Config for: colorbuddy.nvim
time("Config for colorbuddy.nvim", true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_colorbuddy\frequire\0", "config", "colorbuddy.nvim")
time("Config for colorbuddy.nvim", false)
-- Config for: indent-blankline.nvim
time("Config for indent-blankline.nvim", true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_indentline\frequire\0", "config", "indent-blankline.nvim")
time("Config for indent-blankline.nvim", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
