--------------------------------- TELESCOPE  -----------------------------------------
vim.keymap.set("n", "<leader><leader>", "<cmd>lua require('telescope.builtin').git_files()<cr>", {silent = true})
vim.keymap.set("n", "<C-Space", [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], {silent = true})
vim.keymap.set("n", "<C-p>", [[<cmd>lua require('telescope.builtin').lsp_references()<cr>]], {silent = true})
vim.keymap.set("n", "<C-b>", [[<cmd>lua require('telescope.builtin').buffers(center_list<cr>)]], {silent = true})

vim.keymap.set("n", "<leader>lf", [[<cmd>lua require('telescope.builtin').lsp_code_actions(center_list)<cr>]], {silent = true})
vim.keymap.set("n", "<leader>lr", [[<cmd>lua require('telescope.builtin').lsp_references()<cr>]], {silent = true})
vim.keymap.set("n", "<leader>ll", [[<cmd>lua require('telescope.builtin').lsp_references()<cr>]], {silent = true})
vim.keymap.set("n", "<leader>li", [[<cmd>lua require('telescope.builtin').lsp_implementations()<cr>]], {silent = true})
vim.keymap.set("n", "<leader>ld", [[<cmd>lua require('telescope.builtin').lsp_definitions()<cr>]], {silent = true})


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
