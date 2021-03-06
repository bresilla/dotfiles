vim.g.floaterm_position = 'center'
vim.g.floaterm_autoinsert = 1
-- vim.g.floaterm_width = float2nr(&columns/1.2)
-- vim.g.floaterm_height = float2nr(winheight(0)/1.5)
vim.g.floaterm_title = ''
vim.g.floaterm_borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'}
vim.g.floaterm_autoclose = 1

-- ===  RUNNER === "
vimp.nnoremap({'silent'},       '<f7>',                 [[:FloatermNew --autoclose=0 build<cr>]])
vimp.nnoremap({'silent'},       '<C-f7>',                 [[:FloatermNew --autoclose=0 run<cr>]])
vimp.tnoremap({'silent'},       '<f7>',                 [[<C-\><C-n>:FloatermKill!<CR>]])
vimp.tnoremap({'silent'},       '<C-f7>',                 [[<C-\><C-n>:FloatermKill!<CR>]])
vimp.tnoremap({'silent'},       '<ESC>',                 [[<C-\><C-n>:FloatermKill!<CR>]])


