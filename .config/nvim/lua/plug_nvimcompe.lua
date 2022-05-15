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
