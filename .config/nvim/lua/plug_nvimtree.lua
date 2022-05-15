vim.cmd([[au FileType NvimTree set nocursorcolumn]])
vim.cmd([[au WinEnter NvimTree set nocursorcolumn cursorline]])
vim.cmd([[au FileType * lua vim.api.nvim_buf_set_keymap(0, 'n', '<tab>', ':NvimTreeToggle<CR>', {})]])

vim.keymap.set({"n"}, '<tab>', [[ :NvimTreeToggle<CR> ]], {remap = true})

vim.g.nvim_tree_root_folder_modifier = ":t"
vim.g.nvim_tree_indent_markers = 1
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
  actions = {
    open_file = {
        quit_on_open  = true,
        window_picker = {
            enable = false,
        },
    }
  },
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
        { key =  "<CR>",     action = "edit"   },
        { key = "<M-n>",     action = "create" },
        { key = "<M-v>",     action = "vsplit" },
        { key = "<M-x>",     action = "split"  },
        { key = "<M-t>",     action = "tabnew" },
        { key = "<Tab>",     action = "close"  },
        { key = "<M-r>",     action = "refresh"  },
      }
    }
  }
}

