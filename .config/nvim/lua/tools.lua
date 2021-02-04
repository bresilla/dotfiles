---------------------------------------------- === TOOLS === ----------------------------------------------
require('tools.lspconfig')
require('tools.dapconfig')
-- require('tools.treesitter')
require('tools.hlsearch')
require('tools.telescope')
require('tools.snippets')
-- require('tools.bufferline')
require('tools.expressline')
require('tools.nvimtree')
require('tools.floaterm')
require('tools.dashboard')
require('tools.colorbuddy')

---------------------------------------------- === OTHER === ----------------------------------------------
require('other.blame')


---------------------------------------------- === LAST MAP === ----------------------------------------------
vimp.nnoremap({'silent', 'expr'}, '<ESC>', function()
    vim.cmd('nohlsearch')
    -- vim.cmd(':FloatermKill!')
    -- vim.lsp.diagnostic.clear(0)
    vim.lsp.diagnostic.display(nil, 0)
    vim.api.nvim_buf_clear_namespace(0, -1, 0, -1)
    require('hlslens').disable()
    return [[<ESC>]]
end)
