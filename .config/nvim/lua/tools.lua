require('tools.lspconfig')
require('tools.treesitter')
require('tools.telescope')
require('tools.snippets')
-- require('tools.bufferline')
require('tools.expressline')
require('tools.luatree')
require('tools.floaterm')
require('tools.dashboard')
require('tools.colorbuddy')

--------------------------- OTHER
require('other.blame')
vim.cmd([[au CursorHold   * lua require'other.blame'.blameVirtText() ]]) 
vim.cmd([[au CursorMoved  * lua require'other.blame'.clearBlameVirtText() ]]) 
vim.cmd([[au CursorMovedI * lua require'other.blame'.clearBlameVirtText() ]]) 