--------------------------------- LSP LANGUAGES  -----------------------------------------
require'lspconfig'.clangd.setup{
    cmd = { "clangd", "--background-index" };
    on_attach=require'completion'.on_attach;
}

require'lspconfig'.sumneko_lua.setup{
  cmd = {"/env/LSP/lua/lua-language-server"};
}

require'lspconfig'.pyls.setup{}

vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler



--------------------------------- COMPLETION  -----------------------------------------
-- vim.g.completion_chain_complete_list = { default = { complete_items = {'lsp','snippet','tabnine'} } }
-- vim.g.completion_enable_snippet = 'UltiSnips'
-- autocmd BufEnter * lua require'completion'.on_attach()



--------------------------------- DIAGNOSTICS  -----------------------------------------
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = false,
        virtual_text = { spacing = 30 },
        update_in_insert = true,
    }
)

vim.lsp.diagnostic.get_virtual_text_chunks_for_line = function(bufnr, line, line_diagnostics)
    local win_width = vim.api.nvim_win_get_width(0)
    if #line_diagnostics == 0 or win_width < 50 then return nil end

    local last = line_diagnostics[#line_diagnostics]
    local diag_msg = string.format("* %s", last.message:gsub("\r", ""):gsub("\n", "  "))
    local diag_length = #(diag_msg)
    local text_length = #(vim.api.nvim_buf_get_lines(bufnr, line, line + 1, false)[1] or '')
    local get_highlight = vim.lsp.diagnostic._get_severity_highlight_name
    local three_dots = "..."

    cut_text = math.floor(0.25 * win_width)

    if diag_length > cut_text then
        diag_length = cut_text
        diag_msg = diag_msg:sub(0, diag_length - #three_dots) .. three_dots
    end

    local virt_texts = { { string.rep("━", win_width - diag_length - #line_diagnostics - text_length - 8), "LspDiagnosticsVirtualTextSpace" } }
    for i = 1, #line_diagnostics - 1 do
        table.insert(virt_texts, {"*", get_highlight(line_diagnostics[i].severity)})
    end
    if last.message then
        table.insert(virt_texts, {diag_msg, get_highlight(last.severity)})
        return virt_texts
    end
    return virt_texts
end
