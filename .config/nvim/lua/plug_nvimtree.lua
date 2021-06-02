vim.cmd([[au FileType NvimTree set nocursorcolumn]])
vim.cmd([[au WinEnter NvimTree set nocursorcolumn cursorline]])

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
vim.g.nvim_tree_root_folder_modifier = ":t"

local function get_lua_cb(cb_name)
    return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end

function tree_open()
    require'bufferline.state'.set_offset(31)
    require'nvim-tree'.find_file(true)
end

function tree_close(passable)
    require'nvim-tree'.on_keypress(passable)
    if vim.api.nvim_buf_get_option(0, 'filetype') ~= "NvimTree" then
        require'bufferline.state'.set_offset(0)
    end
end

vim.g.nvim_tree_bindings = {
    ["<CR>"]          = [[:lua tree_close('edit')<CR>]],
    ["<M-v>"]          = [[:lua tree_close('vsplit')<CR>]],
    ["<M-x>"]          = [[:lua tree_close('split')<CR>]],
    ["<M-t>"]          = [[:lua tree_close('tabnew')<CR>]],
    ["<Tab>"]          = [[:lua tree_close('close')<CR>]],
}
vim.cmd([[au FileType * lua vim.api.nvim_buf_set_keymap(0, 'n', '<tab>', ':lua tree_open()<CR>', {})]])

