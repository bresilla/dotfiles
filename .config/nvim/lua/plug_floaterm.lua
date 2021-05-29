-- vim.g.floaterm_position = 'center'
-- vim.g.floaterm_autoinsert = 1
-- vim.g.floaterm_width = float2nr(&columns/1.2)
-- vim.g.floaterm_height = float2nr(winheight(0)/1.5)
-- vim.g.floaterm_title = ''
-- vim.g.floaterm_borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'}
-- vim.g.floaterm_autoclose = 1

-- ===  RUNNER === "
-- vimp.nnoremap({'silent'},       '<f7>',                 [[:FloatermNew --autoclose=0 build<cr>]])
-- vimp.nnoremap({'silent'},       '<C-f7>',                 [[:FloatermNew --autoclose=0 run<cr>]])
-- vimp.tnoremap({'silent'},       '<f7>',                 [[<C-\><C-n>:FloatermKill!<CR>]])
-- vimp.tnoremap({'silent'},       '<C-f7>',                 [[<C-\><C-n>:FloatermKill!<CR>]])
-- vimp.tnoremap({'silent'},       '<ESC>',                 [[<C-\><C-n>:FloatermKill!<CR>]])

require'FTerm'.setup({
    dimensions  = {
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5
    },
    border = 'double' -- or 'double'
})

-- Keybinding
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Closer to the metal
map('n', '<F7>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<F7>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
