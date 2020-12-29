---------------------------------------------- === TOOLS === ----------------------------------------------
require('tools.lspconfig')
require('tools.treesitter')
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
    -- vim.cmd('FloatermHide')
    -- vim.lsp.diagnostic.clear(0)
    vim.lsp.diagnostic.display(nil, 0)
    require('hlslens').disable()
    return [[<ESC>]]
end)
