-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

time([[Luarocks path setup]], true)
local package_path_str = "/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bresilla/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_floaterm\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  ["Navigator.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_navigator\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/Navigator.nvim",
    url = "https://github.com/numToStr/Navigator.nvim"
  },
  ["NoCLC.nvim"] = {
    config = { "\27LJ\2\nf\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\15cursorline\2\20load_at_startup\2\17cursorcolumn\2\nsetup\vno-clc\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/NoCLC.nvim",
    url = "https://github.com/Pocco81/NoCLC.nvim"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_bufferline\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-snippy"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/cmp-snippy",
    url = "https://github.com/dcampos/cmp-snippy"
  },
  ["colorbuddy.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_colorbuddy\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/colorbuddy.nvim",
    url = "https://github.com/tjdevries/colorbuddy.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_dashboard\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_diffview\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  direnv = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/direnv",
    url = "https://github.com/direnv/direnv"
  },
  ["express_line.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_expressline\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/express_line.nvim",
    url = "https://github.com/tjdevries/express_line.nvim"
  },
  ["fine-cmdline.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/fine-cmdline.nvim",
    url = "https://github.com/VonHeikemen/fine-cmdline.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_formatter\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_gitsign\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["incsearch.vim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/incsearch.vim",
    url = "https://github.com/haya14busa/incsearch.vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_indentline\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  kommentary = {
    config = { "\27LJ\2\ní\2\0\0\6\0\16\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0004\5\0\0B\0\5\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\v\0'\4\f\0004\5\0\0B\0\5\0016\0\5\0009\0\6\0009\0\a\0'\2\r\0'\3\v\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\1\vsilent\2$<Plug>kommentary_visual_default\6v\"<Plug>kommentary_line_default\6#$<Plug>kommentary_motion_default\14<leader>#\6n\20nvim_set_keymap\bapi\bvim\1\0\1 prefer_single_line_comments\2\fdefault\23configure_language\22kommentary.config\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_lspsaga\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["move.nvim"] = {
    config = { "\27LJ\2\n³\3\0\0\6\0\15\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\4\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\a\0'\4\r\0005\5\14\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2/<Cmd>lua require('move').MoveBlock(-1)<CR>\1\0\2\vsilent\2\fnoremap\2.<Cmd>lua require('move').MoveBlock(1)<CR>\6v\1\0\2\vsilent\2\fnoremap\2.<Cmd>lua require('move').MoveLine(-1)<CR>\r<C-A-Up>\1\0\2\vsilent\2\fnoremap\2-<Cmd>lua require('move').MoveLine(1)<CR>\15<C-A-Down>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_comfscroll\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_nvimcompe\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_dapconfig\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_hlsearch\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_lspconfis\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-nonicons"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-nonicons",
    url = "https://github.com/yamatsum/nvim-nonicons"
  },
  ["nvim-snippy"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-snippy",
    url = "https://github.com/dcampos/nvim-snippy"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_nvimtree\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_treesitter\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["searchbox.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/searchbox.nvim",
    url = "https://github.com/VonHeikemen/searchbox.nvim"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\2\n\127\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\rcaptures\1\2\0\0\fcomment\1\0\2\17hunspell_cmd\rhunspell\ahl\rSpellBad\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/spellsitter.nvim",
    url = "https://github.com/lewis6991/spellsitter.nvim"
  },
  ["tabout.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_telescopy\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_todolist\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_trouble\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n'\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14:redo<CR>\nprintD\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0+:UndotreeToggle<CR> :UndotreeFocus<CR>\nprintŸ\1\1\0\a\0\f\0\0216\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0003\6\a\0=\6\b\5B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0'\4\5\0005\5\n\0003\6\v\0=\6\b\5B\0\5\1K\0\1\0\0\1\0\1\fnoremap\2\bC-U\rcallback\0\1\0\1\fnoremap\2\5\6U\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fakeclip"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/vim-fakeclip",
    url = "https://github.com/kana/vim-fakeclip"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-visual-multi"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_visualmulti\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_whichkey\frequire\0" },
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/Arch/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_comfscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_whichkey\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_gitsign\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_telescopy\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_nvimcompe\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\2\n\127\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\rcaptures\1\2\0\0\fcomment\1\0\2\17hunspell_cmd\rhunspell\ahl\rSpellBad\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_todolist\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_indentline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: vim-visual-multi
time([[Config for vim-visual-multi]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_visualmulti\frequire\0", "config", "vim-visual-multi")
time([[Config for vim-visual-multi]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_trouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
try_loadstring("\27LJ\2\ní\2\0\0\6\0\16\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0004\5\0\0B\0\5\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\v\0'\4\f\0004\5\0\0B\0\5\0016\0\5\0009\0\6\0009\0\a\0'\2\r\0'\3\v\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\1\vsilent\2$<Plug>kommentary_visual_default\6v\"<Plug>kommentary_line_default\6#$<Plug>kommentary_motion_default\14<leader>#\6n\20nvim_set_keymap\bapi\bvim\1\0\1 prefer_single_line_comments\2\fdefault\23configure_language\22kommentary.config\frequire\0", "config", "kommentary")
time([[Config for kommentary]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_dapconfig\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\n'\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14:redo<CR>\nprintD\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0+:UndotreeToggle<CR> :UndotreeFocus<CR>\nprintŸ\1\1\0\a\0\f\0\0216\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0003\6\a\0=\6\b\5B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0'\4\5\0005\5\n\0003\6\v\0=\6\b\5B\0\5\1K\0\1\0\0\1\0\1\fnoremap\2\bC-U\rcallback\0\1\0\1\fnoremap\2\5\6U\6n\20nvim_set_keymap\bapi\bvim\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plug_lspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_floaterm\frequire\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_diffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: colorbuddy.nvim
time([[Config for colorbuddy.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_colorbuddy\frequire\0", "config", "colorbuddy.nvim")
time([[Config for colorbuddy.nvim]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plug_hlsearch\frequire\0", "config", "nvim-hlslens")
time([[Config for nvim-hlslens]], false)
-- Config for: Navigator.nvim
time([[Config for Navigator.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_navigator\frequire\0", "config", "Navigator.nvim")
time([[Config for Navigator.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_dashboard\frequire\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: move.nvim
time([[Config for move.nvim]], true)
try_loadstring("\27LJ\2\n³\3\0\0\6\0\15\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\4\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\a\0'\4\r\0005\5\14\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2/<Cmd>lua require('move').MoveBlock(-1)<CR>\1\0\2\vsilent\2\fnoremap\2.<Cmd>lua require('move').MoveBlock(1)<CR>\6v\1\0\2\vsilent\2\fnoremap\2.<Cmd>lua require('move').MoveLine(-1)<CR>\r<C-A-Up>\1\0\2\vsilent\2\fnoremap\2-<Cmd>lua require('move').MoveLine(1)<CR>\15<C-A-Down>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "move.nvim")
time([[Config for move.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plug_lspconfis\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: NoCLC.nvim
time([[Config for NoCLC.nvim]], true)
try_loadstring("\27LJ\2\nf\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\15cursorline\2\20load_at_startup\2\17cursorcolumn\2\nsetup\vno-clc\frequire\0", "config", "NoCLC.nvim")
time([[Config for NoCLC.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: express_line.nvim
time([[Config for express_line.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plug_expressline\frequire\0", "config", "express_line.nvim")
time([[Config for express_line.nvim]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plug_bufferline\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
