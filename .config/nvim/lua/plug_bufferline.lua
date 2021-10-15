-- vimp = require('vimp')
vimp.bind('n',            '<C-Pagedown>',             [[:BufferNext<CR>]])
vimp.bind('n',            '<C-Pageup>',               [[:BufferPrevious<CR>]])
vimp.bind('n',            '<C-M-Pagedown>',           [[:BufferMoveNext<CR>]])
vimp.bind('n',            '<C-M-Pageup>',             [[:BufferMovePrevious<CR>]])

-- vimp.bind('c',            'q',             [[:BufferClose<CR>]])

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
