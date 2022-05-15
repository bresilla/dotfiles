vim.g.indentLine_char_list = { '│' }
vim.g.indent_blankline_char_highlight_list = {'IndentLine'}
vim.g.indentLine_fileTypeExclude ={ 'dashboard' }
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {'class', 'function', 'method', 'if', 'while', 'for'}

-- vim.g.indent_blankline_show_trailing_blankline_indent = false
-- vim.g.indent_blankline_char_highlight_list = {"IndentOdd", "IndentEven"}
-- vim.g.indent_blankline_space_char_highlight_list = {"IndentOdd", "IndentEven"}

-- === CHANGE INDENT === "
vim.keymap.set("v", '>', [[>gv]])
vim.keymap.set("v", '<', [[<gv]])
