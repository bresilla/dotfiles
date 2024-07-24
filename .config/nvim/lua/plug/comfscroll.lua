require('neoscroll').setup({
    -- All these keys will be mapped. Pass an empty table ({}) for no mappings
    -- mappings = {'<ScrollWheelDown>', '<ScrollWheelUp>', '<Pagedown>', '<Pageup>' },
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing = false,              -- easing_function will be used in all scrolling animations with some defaults
    easing_function = function(x) return math.pow(x, 2) end -- default easing function

})

local easing1 = [[function(x) return math.pow(x, 2) end]]

local t = {}
t['<Pageup>'] = {'scroll', {'-vim.wo.scroll', 'true', '8', '16', easing1}}
t['<Pagedown>'] = {'scroll', { 'vim.wo.scroll', 'true', '8', '16', easing1}}

require('neoscroll.config').set_mappings(t)
