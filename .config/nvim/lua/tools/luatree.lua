vim.g.lua_tree_side = 'left'
vim.g.lua_tree_size = 50
vim.g.lua_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.lua_tree_auto_open = 0
vim.g.lua_tree_auto_close = 1
vim.g.lua_tree_quit_on_open = 1
vim.g.lua_tree_follow = 1
vim.g.lua_tree_indent_markers = 1
vim.g.lua_tree_show_icons = { git = 0, folders = 1, files = 1 }
vim.g.lua_tree_icons = {
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
vim.g.lua_tree_bindings = {
    edit =            '<CR>',
    edit_vsplit =     'v',
    edit_split =      's',
    edit_tab =        't',
    toggle_dotfiles = 'i',
    refresh =         'r',
    create =          'n',
    remove =          'd',
    rename =          'm',
    cut =             'x',
    copy =            'c',
    paste =           'p',
}

-- vim.call( [[au FileType LuaTree vim.api.nvim_buf_set_keymap(0, 'n', '<tab>', ':LuaTreeClose<CR>', {})]] )
