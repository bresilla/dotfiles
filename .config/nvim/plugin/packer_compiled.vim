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
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["comfortable-motion.vim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/comfortable-motion.vim"
  },
  ["compe-tabnine"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/compe-tabnine"
  },
  ["cosco.vim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/cosco.vim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  direnv = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/direnv"
  },
  ["express_line.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/express_line.nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/formatter.nvim"
  },
  ["incsearch.vim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/incsearch.vim"
  },
  indentline = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/indentline"
  },
  ["lspsaga.nvim"] = {
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
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
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
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/snippets.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["timer.nvim"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/timer.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-bufferclose"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-bufferclose"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-fakeclip"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-fakeclip"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-move"] = {
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
  ["vim-tmux-focus-events"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-tmux-focus-events"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  vimpeccable = {
    loaded = true,
    path = "/home/bresilla/.local/share/nvim/site/pack/packer/start/vimpeccable"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
