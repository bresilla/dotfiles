--------------------------------- TELESCOPE  -----------------------------------------
vimp.nnoremap('<leader><leader>',       [[<cmd>lua require('telescope.builtin').git_files()<cr>]])
vimp.nnoremap('<C-Space>',              [[<cmd>lua require('telescope.builtin').buffers(center_list)<cr>]])
vimp.nnoremap('<C-p>',                  [[<cmd>lua require('telescope.builtin').lsp_references()<cr>]])
vimp.nnoremap('<C-g>',                  [[<cmd>lua require('telescope.builtin').live_grep()<cr>]])
vimp.nnoremap('<C-f>',                  [[<cmd>lua require('telescope.builtin').lsp_code_actions(center_list)<cr>]])


local actions = require('telescope.actions')
local sorters = require('telescope.sorters')

require('telescope').setup{
    defaults = {
        prompt_position = "bottom",
        prompt_prefix = ">>",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        shorten_path = true,
        width = 0.75,
        file_ignore_patterns = {"bash/*","resources/*"},
        preview_cutoff = 120,
        results_height = 1,
        results_width = 0.8,
        color_devicons = true,
        use_less = true,
        mappings = {
            i = {
                ["<M-s>"] = actions.goto_file_selection_split,
                ["<M-v>"] = actions.goto_file_selection_vsplit,
                ["<CR>"] = actions.goto_file_selection_edit + actions.center,
            },
            n = {
                ["<esc>"] = actions.close
            },
        }
    }
}

center_list = require'telescope.themes'.get_dropdown({
    winblend = 10,
    width = 0.5,
    prompt = ">>",
    results_height = 6,
    previewer = false,
    mappings = {
        i = {
            ["<M-s>"] = actions.goto_file_selection_split,
            ["<M-v>"] = actions.goto_file_selection_vsplit,
            ["<CR>"] = actions.goto_file_selection_edit + actions.center,
        },
        n = {
            ["<esc>"] = actions.close
        },
    }
})
