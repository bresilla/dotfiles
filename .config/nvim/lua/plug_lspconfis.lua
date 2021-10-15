vim.cmd([[sign define LspDiagnosticsSignError text=× texthl=LspDiagnosticsSignError linehl= numhl=]])
vim.cmd([[sign define LspDiagnosticsSignWarning text=! texthl=LspDiagnosticsSignWarning linehl= numhl=]])
vim.cmd([[sign define LspDiagnosticsSignInformation text=+ texthl=LspDiagnosticsSignInformation linehl= numhl=]])
vim.cmd([[sign define LspDiagnosticsSignHint text=➜ texthl=LspDiagnosticsSignHint linehl= numhl=]])

--------------------------------- LSP LANGUAGES  -----------------------------------------
require'lspconfig'.clangd.setup{
    cmd = { "clangd", "--background-index" };
    filetypes = { "cpp" };
    -- on_attach = function() signature_setup() end;
}

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.rust_analyzer.setup{
    cmd = { "rust-analyzer" };
    filetypes = { "rust" };
    -- capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

-- require'lspconfig'.rls.setup{
    -- cmd = { "rls" };
    -- filetypes = { "rust" };
-- }

require'lspconfig'.sumneko_lua.setup{
  cmd = {"lua-language-server"};
}
require'lspconfig'.pylsp.setup{}
-- require'lspconfig'.pyls.setup{}
-- require'lspconfig'.pyls_ms.setup{}

--------------------------------- DIAGNOSTICS  -----------------------------------------
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = false,
        virtual_text = { spacing = 30 },
        update_in_insert = false,
    }
)

vim.lsp.diagnostic.get_virtual_text_chunks_for_line = function(bufnr, line, line_diagnostics)
    local win_width = vim.api.nvim_win_get_width(0)
    if #line_diagnostics == 0 or win_width < 50 then return nil end

    local last = line_diagnostics[#line_diagnostics]
    local diag_msg = string.format("× %s", last.message:gsub("\r", ""):gsub("\n", "  "))
    local diag_length = #(diag_msg)
    local text_length = #(vim.api.nvim_buf_get_lines(bufnr, line, line + 1, false)[1] or '')
    local get_highlight = vim.lsp.diagnostic._get_severity_highlight_name
    local three_dots = "..."

    cut_text = math.floor(0.25 * win_width)

    if diag_length > cut_text then
        diag_length = cut_text
        diag_msg = diag_msg:sub(0, diag_length - #three_dots) .. three_dots
    end

    if text_length > math.floor(0.75 * win_width) then
        diag_msg = diag_msg:sub(0, win_width - text_length - #line_diagnostics - 8 - #three_dots) .. three_dots
    end

    local virt_texts = { { string.rep("━", win_width - diag_length - #line_diagnostics - text_length - 7), "LspDiagnosticsVirtualTextSpace" } }
    for i = 1, #line_diagnostics - 1 do
        table.insert(virt_texts, {"×", get_highlight(line_diagnostics[i].severity)})
    end
    if last.message then
        table.insert(virt_texts, {diag_msg, get_highlight(last.severity)})
        return virt_texts
    end
    return virt_texts
end
