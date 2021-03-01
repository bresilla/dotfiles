require('formatter').setup({
  logging = false,
  filetype = {
    javascript = {
        -- prettier
       function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'},
            stdin = true
          }
        end
    },
    rust = {
      -- Rustfmt
      function()
        return {
          exe = "rustfmt",
          args = {"--emit=stdout"},
          stdin = true
        }
      end
    },
    -- lua = {
    --     -- luafmt
    --     function()
    --       return {
    --         exe = "luafmt",
    --         args = {"--indent-count", 2, "--stdin"},
    --         stdin = true
    --       }
    --     end
    --   }
  }
})

-- AUTOFORMAT ON SAVE
-- vim.api.nvim_exec([[
-- augroup FormatAutogroup
--   autocmd!
--   autocmd BufWritePost *.js,*.rs FormatWrite
-- augroup END
-- ]], true)
