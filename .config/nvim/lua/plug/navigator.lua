require('Navigator').setup()

vim.keymap.set('n', '<C-l>', [[<CMD>lua require('Navigator').right()<CR>]], {silent = true })
vim.keymap.set('i', '<C-l>', [[<CMD>lua require('Navigator').right()<CR>]], {silent = true })

vim.keymap.set('n', '<C-h>', [[<CMD>lua require('Navigator').left()<CR>]], {silent = true })
vim.keymap.set('i', '<C-h>', [[<CMD>lua require('Navigator').left()<CR>]], {silent = true })

vim.keymap.set('n', '<C-j>', [[<CMD>lua require('Navigator').down()<CR>]], {silent = true })
vim.keymap.set('i', '<C-j>', [[<CMD>lua require('Navigator').down()<CR>]], {silent = true })

vim.keymap.set('n', '<C-k>', [[<CMD>lua require('Navigator').up()<CR>]], {silent = true })
vim.keymap.set('i', '<C-k>', [[<CMD>lua require('Navigator').up()<CR>]], {silent = true })

