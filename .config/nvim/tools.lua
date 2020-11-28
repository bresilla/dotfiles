vim.highlight.on_yank {
    on_visual = true
}

--------------------------------- LSP LANGUAGES  -----------------------------------------
require'lspconfig'.clangd.setup{
    cmd = { "clangd", "--background-index" };
    on_attach=require'completion'.on_attach;
}

require'lspconfig'.sumneko_lua.setup{
  cmd = {"/env/LSP/lua/lua-language-server"};
}


--------------------------------- TREESITTER  -----------------------------------------
require'nvim-treesitter.configs'.setup {
    highlight = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = true },
}

require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {'typescript.tsx', 'typescript', 'tsx'}
  },

  indent = { enable = true },

  incremental_selection = {
    enable = true,
    keymaps = { -- mappings for incremental selection (visual mappings)
      init_selection = '<M-w>',    -- maps in normal mode to init the node/scope selection
      node_incremental = '<M-w>',  -- increment to the upper named parent
      scope_incremental = '<M-e>', -- increment to the upper scope (as defined in locals.scm)
      node_decremental = '<M-C-w>',  -- decrement to the previous node
    },
  },

  refactor = {
    highlight_definitions = {enable = true},
    highlight_current_scope = {enable = false},
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = 'grr',
      },
    },

    -- TODO: This seems broken...
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = 'gnd', -- mapping to go to definition of symbol under cursor
        list_definitions = 'gnD', -- mapping to list all definitions in current file
      },
    },
  },
}

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

    cut_text = math.floor(0.25 * win_width)

    if diag_length > cut_text then
        diag_length = cut_text
        diag_msg = diag_msg:sub(0, diag_length-3) .. "..."
    end
    local virt_texts = { { string.rep("━", win_width - diag_length - text_length - 8), "LspDiagnosticsVirtualTextSpace" } }
    if last.message then
        table.insert(virt_texts, {diag_msg, get_highlight(last.severity)})
        return virt_texts
    end
    return virt_texts
end


--------------------------------- TELESCOPE  -----------------------------------------
require('telescope').setup{
    defaults = {
        prompt_position = "bottom",
        prompt_prefix = ">>",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        shorten_path = true,
        width = 0.75,
        preview_cutoff = 120,
        results_height = 1,
        results_width = 0.8,
        color_devicons = true,
        use_less = true,
    },
}

center_list = require'telescope.themes'.get_dropdown({
  winblend = 10,
  width = 0.5,
  prompt = ">>",
  results_height = 6,
  previewer = false,
})


--------------------------------- EXPRESS LINE  -----------------------------------------
local builtin = require('el.builtin')
local extensions = require('el.extensions')
local sections = require('el.sections')
local subscribe = require('el.subscribe')
local lsp_statusline = require('el.plugins.lsp_status')

local file_icon = subscribe.buf_autocmd("el_file_icon", "BufRead", function(_, bufnr)
  local icon = extensions.file_icon(_, bufnr)
  if icon then
    return icon .. ' '
  end
  return ''
end)

local git_branch = subscribe.buf_autocmd(
  "el_git_branch",
  "BufEnter",
  function(window, buffer)
    local branch = extensions.git_branch(window, buffer)
    if branch then
      return ' ' .. extensions.git_icon() .. ' ' .. branch
    end
  end
)

local git_changes = subscribe.buf_autocmd(
  "el_git_changes",
  "BufWritePost",
  function(window, buffer)
    return extensions.git_changes(window, buffer)
  end
)

require('el').setup {
  generator = function(_, _)
    return {
      '  //  ',
      extensions.gen_mode {
        format_string = '  %s  '
      },
      git_branch,
      ' ',
      sections.split,
      file_icon,
      sections.maximum_width(
        builtin.responsive_file(140, 90),
        0.30
      ),
      sections.collapse_builtin {
        ' ',
        builtin.modified_flag
      },
      sections.split,
      lsp_statusline.current_function,
      lsp_statusline.server_progress,
      git_changes,
      ' ',
      '[', builtin.line_with_width(3), ':',  builtin.column_with_width(2), ']',
      sections.collapse_builtin {
        '[',
        builtin.help_list,
        builtin.readonly_list,
        ']',
      },
      builtin.filetype,
    }
  end
}
