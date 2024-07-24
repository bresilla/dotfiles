require'FTerm'.setup({
    dimensions  = {
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5
    },
    border = 'double' -- or 'double'
})

vim.keymap.set({'n', 't'}, '<M-t>', [[<CMD>lua require("FTerm").toggle()<CR>]], {noremap = true, silent = true})

function fterm(comm)
    local aterm = require("FTerm.terminal"):new():setup({
        cmd = comm,
        dimensions = {
            height = 0.8,
            width = 0.8,
            x = 0.5,
            y = 0.5
        },
    })
    aterm:open()
end

function term(cmd)
    local newterm = require('toggleterm.terminal').Terminal:new({
        cmd = cmd,
        dir = "git_dir",
        -- shade_filetypes = {},
        -- shade_terminals = false,
        hide_numbers = true,
        start_in_insert = true,
        insert_mappings = true,
        close_on_exit = true,
        shell = vim.o.shell,
        direction = "float",
        float_opts = {
            border = "curved",
            highlights = {
                border = "ToggleTermBorder",
                background = "ToggleTermBack",
            }
        },
        -- function to run on opening the terminal
        on_open = function(term)
            vim.cmd("startinsert!")
            vim.api.nvim_buf_set_keymap(term.bufnr, "i", "<ESC>", "<cmd>close<CR>", {noremap = true, silent = true})
            vim.api.nvim_buf_set_keymap(term.bufnr, "n", "<ESC>", "<cmd>close<CR>", {noremap = true, silent = true})
            vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<ESC>", "<cmd>close<CR>", {noremap = true, silent = true})

            vim.api.nvim_buf_set_keymap(term.bufnr, "i", "<CR>", "<cmd>close<CR>", {noremap = true, silent = true})
            vim.api.nvim_buf_set_keymap(term.bufnr, "n", "<CR>", "<cmd>close<CR>", {noremap = true, silent = true})
            vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<CR>", "<cmd>close<CR>", {noremap = true, silent = true})
        end,
        -- function to run on closing the terminal
        on_close = function(term)
            vim.cmd("CloseTerminal")
        end,
    })
    newterm:toggle()
end

vim.keymap.set({'n', 'i'}, '<F7>', [[<CMD>lua term('build && run')<CR>]], {noremap = true, silent = true})
vim.keymap.set('t', '<F7>', [[<CMD>ToggleTerm<CR>]], {noremap = true, silent = true})
