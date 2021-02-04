vim.cmd([[au CursorHold   * lua require'other.blame'.blameVirtText() ]]) 
vim.cmd([[au CursorMoved  * lua require'other.blame'.clearBlameVirtText() ]]) 
vim.cmd([[au CursorMovedI * lua require'other.blame'.clearBlameVirtText() ]]) 

local M = {}

-- skip scratch buffer or unkown filetype, nvim's terminal window, and other known filetypes need to bypass
local bypass_ft = {'', 'bin', '.', 'vim-plug', 'LuaTree', 'startify', 'nerdtree', 'dashboard'}

function M.blameVirtText()
    local win_width = vim.api.nvim_win_get_width(0)
    local line = vim.api.nvim_win_get_cursor(0)
    local text_length = #(vim.api.nvim_buf_get_lines(0, line[1] - 1, line[1], false)[1] or '')

    -- if text_length == 0 then return end
    if vim.bo.buftype ~= '' then return end

    for _,v in ipairs(bypass_ft) do
        if vim.bo.filetype == v then return end
    end

    vim.api.nvim_buf_clear_namespace(0, 2, 0, -1) -- clear out virtual text from namespace 2 (the namespace we will set later)
    local currFile = vim.fn.expand('%')
    local blame = vim.fn.system(string.format('git blame -c -L %d,%d %s', line[1], line[1], currFile))
    local hash = vim.split(blame, '%s')[1]
    local cmd = string.format("git show %s ", hash).."--format=' >>  %an | %ar '"
    if hash == '00000000' then
        return
    else
        text = vim.fn.system(cmd)
        text = vim.split(text, '\n')[1]
        if text:find("fatal") then return end
    end
    local virt_texts = { { string.rep(" ", win_width - #text - text_length - 7) } }
    table.insert(virt_texts, {text, 'GitBlameVirt'})
    vim.api.nvim_buf_set_virtual_text(0, 2, line[1] - 1, virt_texts, {}) -- set virtual text for namespace 2 with the content from git and assign it to the higlight group 'GitLens'
end

function M.clearBlameVirtText() -- important for clearing out the text when our cursor moves
    vim.api.nvim_buf_clear_namespace(0, 2, 0, -1)
end

return M
