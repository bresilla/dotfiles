vim.keymap.set('n',            '<C-Pagedown>',             [[:BufferNext<CR>]])
vim.keymap.set('n',            '<C-Pageup>',               [[:BufferPrevious<CR>]])
vim.keymap.set('n',            '<C-M-Pagedown>',           [[:BufferMoveNext<CR>]])
vim.keymap.set('n',            '<C-M-Pageup>',             [[:BufferMovePrevious<CR>]])

vim.api.nvim_create_autocmd('BufWinEnter', {
    pattern = '*',
    callback = function()
        if vim.bo.filetype == 'NvimTree' then
            require'bufferline.state'.set_offset(30, 'FileTree')
        end
    end
})

vim.api.nvim_create_autocmd('BufWinLeave', {
    pattern = '*',
    callback = function()
        if vim.fn.expand('<afile>'):match('NvimTree') then
            require'bufferline.state'.set_offset(0)
        end
    end
})

vim.api.nvim_exec([[
function! NumBuffers()
    let i = bufnr('$')
    let j = 0
    while i >= 1
        if buflisted(i)
            let j+=1
        endif
        let i-=1
    endwhile
    return j
endfunction

function! WinBufClose(write)
    if a:write == 1
        let out = "write|"
    else
        let out = ""
    endif
    let n = NumBuffers()
    if n == 1
        return l:out . "quit"
    else
        return l:out . "bdelete"
    endif
endfunction
]], true)

vim.cmd([[cnoreabbrev <expr> q   WinBufClose(0)]])
vim.cmd([[cnoreabbrev <expr> wq   WinBufClose(1)]])
