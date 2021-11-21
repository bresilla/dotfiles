vim.cmd([[au FileType NvimTree set nocursorcolumn]])
vim.cmd([[au WinEnter NvimTree set nocursorcolumn cursorline]])
vim.cmd([[au FileType * lua vim.api.nvim_buf_set_keymap(0, 'n', '<tab>', ':lua tree_open()<CR>', {})]])

local function get_lua_cb(cb_name)
    return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end

function tree_open()
    require'bufferline.state'.set_offset(31)
    require'nvim-tree'.find_file(true)
end

function tree_comm(passable)
    require'nvim-tree'.on_keypress(passable)
    if vim.api.nvim_buf_get_option(0, 'filetype') ~= "NvimTree" then
        require'bufferline.state'.set_offset(0)
    end
end

vim.g.nvim_tree_root_folder_modifier = ":t"
vim.g.nvim_tree_disable_window_picker = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_show_icons = { git = 0, folders = 1, files = 1 }
vim.g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git_icons = {
        unstaged = "×",
        staged = "✓",
        unmerged = "═",
        renamed = "➜",
        untracked = "★",
        deleted = "-"
    },
    folder_icons = {
        default = "",
        open = ""
    }
}

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = true,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  diagnostics     = {
    enable      = false,
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {
        '.git',
        'node_modules',
        '.cache',
    }
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  view = {
    width = 30,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = true,
      list = {
        { key =  "<CR>",     cb = [[ :lua tree_comm('edit')<CR> ]] },
        { key = "<M-n>",     cb = [[ :lua tree_comm('create')<CR> ]] },
        { key = "<M-v>",     cb = [[ :lua tree_comm('vsplit')<CR> ]] },
        { key = "<M-x>",     cb = [[ :lua tree_comm('split')<CR> ]] },
        { key = "<M-t>",     cb = [[ :lua tree_comm('tabnew')<CR> ]] },
        { key = "<Tab>",     cb = [[ :lua tree_comm('close')<CR> ]] },
      }
    }
  }
}

