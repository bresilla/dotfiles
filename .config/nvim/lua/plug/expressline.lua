local builtin = require('el.builtin')
local extensions = require('el.extensions')
local sections = require('el.sections')
local subscribe = require('el.subscribe')
local lsp_statusline = require('el.plugins.lsp_status')
local subscribe = require('el.subscribe')

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

local function current_line_percent()
  local current_line = vim.fn.line('.')
  local total_line = vim.fn.line('$')
  if current_line == 1 then
    return ' Top '
  elseif current_line == vim.fn.line('$') then
    return ' Bot '
  end
  local result,_ = math.modf((current_line/total_line)*100)
  return ' '.. result .. '%% '
end

function scrollbar_instance()
  local current_line = vim.fn.line('.')
  local total_lines = vim.fn.line('$')
  -- local default_chars = {'■        ', '■■       ', '■■■      ', '■■■■     ', '■■■■■    ', '■■■■■■   ', '■■■■■■■  ', '■■■■■■■■ ', '■■■■■■■■■'}
  -- local default_chars = {'        ', '       ', '      ', '     ', '    ', '   ', '  ', ' ', ''}
  local default_chars = {'█────────', '─█───────', '──█──────', '───█─────', '────█────', '─────█───', '──────█──', '───────█─', '────────█'}
  -- local default_chars = {'────────', '────────', '────────', '────────', '────────', '────────', '────────', '────────', '────────'}
  -- local default_chars = {'█░░░░░░░░', '░█░░░░░░░', '░░█░░░░░░', '░░░█░░░░░', '░░░░█░░░░', '░░░░░█░░░', '░░░░░░█░░', '░░░░░░░█░', '░░░░░░░░█'}
  local chars = default_chars
  local index = 1

  if  current_line == 1 then
    index = 1
  elseif current_line == total_lines then
    index = #chars
  else
    local line_no_fraction = vim.fn.floor(current_line) / vim.fn.floor(total_lines)
    index = vim.fn.float2nr(line_no_fraction * #chars)
    if index == 0 then
      index = 1
    end
  end
  percent = current_line_percent()
  return " " .. chars[index] .. " "
  -- return " │" .. chars[index] .. "│ "
  -- return "├" .. chars[index] .. "┤"
end

require('el').setup {
  generator = function(_, _)
    return {
      function(_, buffer)
        if vim.api.nvim_call_function('winwidth', {0}) < 70 then 
            return ''
        else 
          return '  //  '
        end
      end,
      extensions.gen_mode {
        format_string = '  %s  '
      },
      git_branch,
      ' ',
      git_changes,
      ' ',
      sections.split,
      builtin.filetype,
      ' ',
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
      ' ',
      '[', builtin.line_with_width(3), ':',  builtin.column_with_width(2), ']',
      sections.collapse_builtin {
        '[',
        builtin.help_list,
        builtin.readonly_list,
        ']',
      },
      subscribe.buf_autocmd(
        "el_scrol",
        "CursorMoved",
        function(_, buffer)
          if vim.api.nvim_call_function('winwidth', {0}) < 70 then return '' end
          local sec1 = sections.highlight('ElNormal', scrollbar_instance)()
          return " " .. sec1 .. " " .. current_line_percent() .. " "
        end
      ),
    }
  end
}

