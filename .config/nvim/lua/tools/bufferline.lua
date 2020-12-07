---------------------------------- BUFFER LINE  -----------------------------------------
require'bufferline'.setup{
  options = {
    view = "multiwindow",
    numbers = "none",
    mappings = true,
    buffer_close_icon= '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is deduplicated
    tab_size = 18,
    show_buffer_close_icons = true,
    -- [focused and unfocused]. eg: { '|', '|' }
    -- separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
    always_show_bufferline = true,
  },
  highlights = {
      background = {
        guifg = tablinefill,
        guibg = tablinefill
      },
    }
}




