--------------------------------- TELESCOPE  -----------------------------------------
vimp.nnoremap('<leader><leader>',       [[<cmd>lua require('telescope.builtin').git_files()<cr>]])
vimp.nnoremap('<C-Space>',              [[<cmd>lua require('telescope.builtin').buffers(center_list)<cr>]])



require('telescope').setup{
    defaults = {
        prompt_position = "bottom",
        prompt_prefix = ">>",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        shorten_path = true,
        width = 0.75,
        preview_cutoff = 120,
        results_height = 1,
        results_width = 0.8,
        color_devicons = true,
        use_less = true,
    },
}

center_list = require'telescope.themes'.get_dropdown({
  winblend = 10,
  width = 0.5,
  prompt = ">>",
  results_height = 6,
  previewer = false,
})


--- === DMENU/ROFI ===
vimp.nnoremap('<C-p>',                  [[:DmenuFinderFindFile<CR>]])
vim.g.dmenu_finder_dmenu_command = "/home/bresilla/dots/.func/wm/rofit"
