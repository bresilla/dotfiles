local saga = require 'lspsaga'

saga.init_lsp_saga()

vimp.nnoremap('gr',      [[<cmd>lua require('lspsaga.rename').rename()<CR>]])
vimp.nnoremap('gk',      [[<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>]])
vimp.nnoremap('gd',      [[<cmd>lua require('lspsaga.provider').preview_definition()<CR>]])
vimp.nnoremap('gf',      [[<cmd>lua vim.lsp.diagnostic.goto_next { min_severity = "info", show_config=true }<CR>]])
