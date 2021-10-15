vimp.rbind({'silent'},           '/',                 [[<Plug>(incsearch-forward)]])
vimp.rbind({'silent'},           '<leader>/',         [[<Plug>(incsearch-forward)]])
vimp.nnoremap({'silent', 'expr'}, '*', function() return [[ *``<Cmd>lua require('hlslens').start()<CR> ]] end)
-- vimp.nnoremap({'silent', 'expr'}, 'n', function() return [[ <Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR> ]] end)

require('hlslens').setup({
    override_line_lens = function(lnum, loc, idx, r_idx, count, hls_ns)
        local sfw = vim.v.searchforward == 1
        local indicator, text, chunks
        local a_r_idx = math.abs(r_idx)
        if a_r_idx > 1 then
            indicator = string.format('%d%s', a_r_idx, sfw ~= (r_idx > 1) and ' ▲ ' or ' ▼ ')
        elseif a_r_idx == 1 then
            indicator = sfw ~= (r_idx == 1) and ' ▲ ' or ' ▼ '
        else
            indicator = ''
        end

        if loc ~= 'c' then
            text = string.format('[%s%d]', indicator, idx)
            chunks = {{' ', 'Ignore'}, {text, 'HlSearchLens'}}
        else
            if indicator ~= '' then
                text = string.format('[%s%d/%d]', indicator, idx, count)
            else
                text = string.format('[%d/%d]', idx, count)
            end
            chunks = {{' ', 'Ignore'}, {text, 'HlSearchLensCur'}}
        end
        vim.api.nvim_buf_clear_namespace(0, -1, lnum - 1, lnum)
        vim.api.nvim_buf_set_extmark(0, hls_ns, lnum - 1, 0, {virt_text = chunks})
    end
})
