---------------------------------- BUFFER LINE  -----------------------------------------
local Color, colors, Group, groups, styles = require("colorbuddy").setup()
Group.new('TabLineFill',          nil,          nil)
Group.new('BufferCurrent',        nil,          nil)
Group.new('BufferCurrentMod',     nil,          nil)
Group.new('BufferCurrentSign',    nil,          nil)
Group.new('BufferCurrentTarget',  nil,          nil)
Group.new('BufferVisible',        nil,          nil)
Group.new('BufferVisibleMod',     nil,          nil)
Group.new('BufferVisibleSign',    nil,          nil)
Group.new('BufferVisibleTarget',  nil,          nil)
Group.new('BufferInactive',       nil,          nil)
Group.new('BufferInactiveMod',    nil,          nil)
Group.new('BufferInactiveSign',   nil,          nil)
Group.new('BufferInactiveTarget', nil,          nil)
Group.new('BufferTabpages',       nil,          nil)
Group.new('BufferTabpageFill',    nil,          nil)



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
      fill = {
        guifg = TabLineFill,
        guibg = TabLineFill
      },
      background = {
        guifg = TabLineFill,
        guibg = TabLineFill
      },
      tab = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
      },
      tab_selected = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
      },
      tab_close = {
        guifg = TabLineFill,
        guibg = TabLineFill
      },
      buffer_visible = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
      },
      buffer_selected = {
        guifg = BufferCurrent,
        guibg = BufferCurrent,
        gui = "bold,italic"
      },
      modified = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
      },
      modified_visible = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
      },
      modified_selected = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
      },
      duplicate_selected = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
        gui = "italic",
      },
      duplicate_visible = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
        gui = "italic",
      },
      duplicate = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
        gui = "italic",
      },
      separator_selected = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
      },
      separator_visible = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
      },
      separator = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
      },
      indicator_selected = {
        guifg = BufferCurrent,
        guibg = BufferCurrent
      },
      pick_selected = {
        guifg = BufferCurrent,
        guibg = BufferCurrent,
        gui = "bold,italic"
      },
      pick_visible = {
        guifg = BufferCurrent,
        guibg = BufferCurrent,
        gui = "bold,italic"
      },
      pick = {
        guifg = BufferCurrent,
        guibg = BufferCurrent,
        gui = "bold,italic"
      }
    };
}




