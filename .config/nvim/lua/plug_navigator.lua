require('Navigator').setup()

vimp.nnoremap({'override','silent'},       '<C-l>',              [[<CMD>lua require('Navigator').right()<CR>]])
vimp.inoremap({'override','silent'},       '<C-l>',              [[<CMD>lua require('Navigator').right()<CR>]])
vimp.nnoremap({'silent'},       '<C-h>',              [[<CMD>lua require('Navigator').left()<CR>]])
vimp.inoremap({'silent'},       '<C-h>',              [[<CMD>lua require('Navigator').left()<CR>]])
vimp.nnoremap({'silent'},       '<C-j>',              [[<CMD>lua require('Navigator').down()<CR>]])
vimp.inoremap({'silent'},       '<C-j>',              [[<CMD>lua require('Navigator').down()<CR>]])
vimp.nnoremap({'silent'},       '<C-k>',              [[<CMD>lua require('Navigator').up()<CR>]])
vimp.inoremap({'silent'},       '<C-k>',              [[<CMD>lua require('Navigator').up()<CR>]])

