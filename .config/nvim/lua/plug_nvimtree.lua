vim.cmd([[au FileType NvimTree set nocursorcolumn]])
vim.cmd([[au WinEnter NvimTree set nocursorcolumn cursorline]])
vim.cmd([[au FileType * lua vim.api.nvim_buf_set_keymap(0, 'n', '<tab>', ':NvimTreeToggle<CR>', {})]])

vim.keymap.set({"n"}, '<tab>', [[ :NvimTreeToggle<CR> ]], {remap = true})

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
    width = 29,
    side = 'left',
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
  },
  renderer = {
    add_trailing = false,
    group_empty = false,
    highlight_git = false,
    full_name = false,
    highlight_opened_files = "none",
    root_folder_modifier = ":~",
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        item = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = false,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
  },
}

