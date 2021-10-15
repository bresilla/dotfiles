--------------------------------- TELESCOPE  -----------------------------------------
vimp.nnoremap('<leader><leader>',       [[<cmd>lua require('telescope.builtin').git_files()<cr>]])
vimp.nnoremap('<C-Space>',                  [[<cmd>lua require('telescope.builtin').live_grep()<cr>]])
vimp.nnoremap('<C-p>',                  [[<cmd>lua require('telescope.builtin').lsp_references()<cr>]])
vimp.nnoremap('<C-b>',                  [[<cmd>lua require('telescope.builtin').buffers(center_list)<cr>]])

vimp.nnoremap('<leader>lf',                  [[<cmd>lua require('telescope.builtin').lsp_code_actions(center_list)<cr>]])
vimp.nnoremap('<leader>lr',                  [[<cmd>lua require('telescope.builtin').lsp_references()<cr>]])
vimp.nnoremap('<leader>ll',                  [[<cmd>lua require('telescope.builtin').lsp_references()<cr>]])
vimp.nnoremap('<leader>li',                  [[<cmd>lua require('telescope.builtin').lsp_implementations()<cr>]])
vimp.nnoremap('<leader>ld',                  [[<cmd>lua require('telescope.builtin').lsp_definitions()<cr>]])


local actions = require('telescope.actions')
local sorters = require('telescope.sorters')

require('telescope').setup{
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        layout_config = {
            prompt_position = "bottom",
            width = 0.75,
            preview_cutoff = 120,
        },
        prompt_prefix = ">>",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        -- shorten_path = true,
        file_ignore_patterns = {"bash/*","resources/*"},
        file_sorter =  require'telescope.sorters'.get_fuzzy_file,
        color_devicons = true,
        use_less = true,
        mappings = {
            i = {
                ["<M-s>"] = actions.select_horizontal,
                ["<M-v>"] = actions.select_vertical,
                ["<CR>"] = actions.select_default + actions.center,
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
            ["<M-s>"] = actions.select_horizontal,
            ["<M-v>"] = actions.select_vertical,
            ["<CR>"] = actions.select_default + actions.center,
        },
        n = {
            ["<esc>"] = actions.close
        },
    }
})
