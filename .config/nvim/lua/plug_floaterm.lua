-- vim.g.floaterm_position = 'center'
-- vim.g.floaterm_autoinsert = 1
-- vim.g.floaterm_width = float2nr(&columns/1.2)
-- vim.g.floaterm_height = float2nr(winheight(0)/1.5)
-- vim.g.floaterm_title = ''
-- vim.g.floaterm_borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'}
-- vim.g.floaterm_autoclose = 1

-- ===  RUNNER === "
-- vimp.nnoremap({'silent'},       '<f7>',                 [[:FloatermNew --autoclose=0 build<cr>]])
-- vimp.nnoremap({'silent'},       '<C-f7>',                 [[:FloatermNew --autoclose=0 run<cr>]])
-- vimp.tnoremap({'silent'},       '<f7>',                 [[<C-\><C-n>:FloatermKill!<CR>]])
-- vimp.tnoremap({'silent'},       '<C-f7>',                 [[<C-\><C-n>:FloatermKill!<CR>]])
-- vimp.tnoremap({'silent'},       '<ESC>',                 [[<C-\><C-n>:FloatermKill!<CR>]])

require'FTerm'.setup({
    dimensions  = {
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5
    },
    border = 'double' -- or 'double'
})

-- Keybinding
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Closer to the metal
map('n',    '<M-t>',                [[<CMD>lua require("FTerm").toggle()<CR>]],                 opts)
map('t',    '<M-t>',                [[<CMD>lua require("FTerm").toggle()<CR>]],                 opts)

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

map('n',    '<F7>',                       [[<CMD>lua term('build && run')<CR>]],                    opts)
map('t',    '<F7>',                       [[<CMD>ToggleTerm<CR>]],                           opts)
