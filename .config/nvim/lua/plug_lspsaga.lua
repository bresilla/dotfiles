local saga = require 'lspsaga'

saga.init_lsp_saga()

vim.keymap.set('n', 'gr', [[<cmd>lua require('lspsaga.rename').rename()<CR>]])
vim.keymap.set('n', 'gk', [[<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>]])
vim.keymap.set('n', 'gd', [[<cmd>lua require('lspsaga.provider').preview_definition()<CR>]])
vim.keymap.set('n', 'gf', [[<cmd>lua vim.lsp.diagnostic.goto_next { min_severity = "info", show_config=true }<CR>]])
