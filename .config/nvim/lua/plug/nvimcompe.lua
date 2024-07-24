
----------------------------------- CMP  -----------------------------------------
local cmp = require'cmp'
cmp.setup({
    mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<Exc>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<PageUp>'] = cmp.mapping.scroll_docs(1),
        ['<PageDown>'] = cmp.mapping.scroll_docs(-1),
        ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
        ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
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
    experimental = {
        native_menu = false,
        ghost_text = false,
    },
    confirmation = {
        get_commit_characters = function()
            return {}
        end,
    },
    completion = {
        completeopt = "menu,menuone,noinsert",
        keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%(-\w*\)*\)]],
        keyword_length = 1,
    },
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    formatting = {
        fields = { "kind", "abbr" },
        format = function(entry, vim_item)
            vim_item.menu = vim_item.kind
            vim_item.kind = ({
                Text = "  ",
                Method = "  ",
                Function = "  ",
                Constructor = "  ",
                Field = "  ",
                Variable = "  ",
                Class = " ﴯ ",
                Interface = "  ",
                Module = "  ",
                Property = " ﰠ ",
                Unit = "  ",
                Value = "  ",
                Enum = "  ",
                Keyword = "  ",
                Snippet = "  ",
                Color = "  ",
                File = "  ",
                Reference = "  ",
                Folder = "  ",
                EnumMember = "  ",
                Constant = "  ",
                Struct = "  ",
                Event = "  ",
                Operator = "  ",
                TypeParameter = "  "
            })[vim_item.kind]

            return vim_item
        end,
    },
    preselect = cmp.PreselectMode.None,
})
