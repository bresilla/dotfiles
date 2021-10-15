----------------------------------- CMP  -----------------------------------------
local cmp = require'cmp'
cmp.setup({
    mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<Exc>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<PageUp>'] = cmp.mapping.scroll_docs(1),
        ['<PageDown>'] = cmp.mapping.scroll_docs(-1),
    },
    sources = {
        -- { name = 'cmp_tabnine' },
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'snippy' },
    },
    snippet = {
        expand = function(args)
            require 'snippy'.expand_snippet(args.body)
        end
    },
    formatting = {
        format = function(entry, vim_item)
            vim_item.menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                luasnip = "[Snip]",
                nvim_lua = "[Lua]",
                latex_symbols = "[TEX]",
            })[entry.source.name]

            vim_item.kind = ({
                Text = '  ',
                Function = '  ',
                Method = ' ',
                Constructor = ' ',
                Field = ' ',
                Variable = '  ',
                Class = ' ',
                Interface = ' ',
                Module = ' ',
                Property = '  ',
                Unit = '  ',
                Value = ' ',
                Enum = '  ',
                Keyword = ' ',
                Snippet = ' ',
                Color = ' ',
                File = '  ',
                Reference = ' ',
                Folder = ' ',
                EnumMember = ' ',
                Constant = '  ',
                Struct = ' ',
                Event = ' ',
                Operator = '  ',
                TypeParameter = ' ',
            })[vim_item.kind]

            return vim_item
        end,
    },
})

--------------------------------- SIGNATURE  -----------------------------------------
require "lsp_signature".setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    handler_opts = {
        border = "none",
    },
    hint_enable = false,
    max_width = 200,
    padding = ' ',
})

-- local tabnine = require('cmp_tabnine.config')
-- tabnine:setup({
--         max_lines = 1000;
--         max_num_results = 5;
--         sort = true;
--     run_on_every_keystroke = true;
--     snippet_placeholder = '..';
-- })


--------------------------------- KEYBIND  -----------------------------------------
-- vimp.inoremap({'silent', 'expr'}, '<Esc>', function()
--     if vim.fn.pumvisible() == 1 then
--         return  vim.fn['compe#close']()
--     else
--         return [[<Esc>]]
--     end
-- end)
-- vimp.inoremap({'silent', 'expr'}, '<CR>', function()
--     local npairs = require('nvim-autopairs')
--     if vim.fn.pumvisible() ~= 0  then
--         if vim.fn.complete_info()["selected"] ~= -1 then
--             cmp.mapping.complete()
--             return npairs.esc("<c-y>")
--         else
--             vim.defer_fn(function()
--                 vim.fn["compe#confirm"]("<cr>")
--             end, 20)
--             return npairs.esc("<c-n>")
--         end
--     else
--         return npairs.check_break_line_char()
--     end
-- end)
-- vimp.inoremap({'silent', 'expr'}, '<Down>', function()
--     if vim.fn.pumvisible() == 1 then
--         return [[<C-n>]]
--     else
--         return [[<Down>]]
--     end
-- end)
-- vimp.inoremap({'silent', 'expr'}, '<Up>', function()
--     if vim.fn.pumvisible() == 1 then
--         return [[<C-p>]]
--     else
--         return [[<Up>]]
--     end
-- end)
