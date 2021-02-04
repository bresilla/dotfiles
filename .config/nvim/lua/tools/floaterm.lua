vim.g.floaterm_position = 'center'
vim.g.floaterm_autoinsert = 1
-- vim.g.floaterm_width = float2nr(&columns/1.2)
-- vim.g.floaterm_height = float2nr(winheight(0)/1.5)
vim.g.floaterm_title = ''
vim.g.floaterm_borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'}
vim.g.floaterm_autoclose = 1

-- ===  RUNNER === "
vimp.nnoremap({'silent'},       '<f8>',                 [[:FloatermNew --autoclose=0 build<cr>]])
vimp.nnoremap({'silent'},       '<f9>',                 [[:FloatermNew --autoclose=0 run<cr>]])
vimp.tnoremap({'silent'},       '<f8>',                 [[<C-\><C-n>:FloatermKill!<CR>:FloatermNew --autoclose=0 build<cr>]])
vimp.tnoremap({'silent'},       '<f9>',                 [[<C-\><C-n>:FloatermKill!<CR>:FloatermNew --autoclose=0 run<cr>]])
vimp.tnoremap({'silent'},       '<ESC>',                 [[<C-\><C-n>:FloatermKill!<CR>]])


