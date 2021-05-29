vim.cmd([[au FileType NvimTree set nocursorcolumn]])

-- vim.call( [[au FileType LuaTree vim.api.nvim_buf_set_keymap(0, 'n', '<tab>', ':LuaTreeClose<CR>', {})]] )
vim.cmd([[au FileType NvimTree lua vim.api.nvim_buf_set_keymap(0, 'n', '<tab>', ':NvimTreeClose<CR>', {})]])
vim.cmd([[au FileType * lua vim.api.nvim_buf_set_keymap(0, 'n', '<tab>', ':NvimTreeToggle<CR>', {})]])

vim.g.nvim_tree_side = 'left'
vim.g.nvim_tree_size = 50
vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.nvim_tree_auto_open = 0
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_follow = 1
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

local function get_lua_cb(cb_name)
  return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end

vim.g.nvim_tree_bindings = {
    ["<CR>"]           = get_lua_cb("edit"),
    ["<M-v>"]          = get_lua_cb("vsplit"),
    ["<M-x>"]          = get_lua_cb("split"),
    ["<M-t>"]          = get_lua_cb("tabnew"),
    ["<Tab>"]          = get_lua_cb("close"),
}

