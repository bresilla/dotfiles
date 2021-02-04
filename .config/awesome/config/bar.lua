local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local gears = require("gears")

local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi


local taglist_buttons = gears.table.join(
        awful.button({ }, 1, function(t) t:view_only() end),
        awful.button({ modkey }, 1, function(t)
                                    if client.focus then
                                        client.focus:move_to_tag(t)
                                    end
                                end),
        awful.button({ }, 3, awful.tag.viewtoggle),
        awful.button({ modkey }, 3, function(t)
                                    if client.focus then
                                        client.focus:toggle_tag(t)
                                    end
                                end),
        awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
        awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end)
    )


taglist = {}
taglist.init = function(s)
    local mytaglist = awful.widget.taglist {
            screen  = s,
            filter  = awful.widget.taglist.filter.all,
            layout   = {
                spacing = dpi(16),
                spacing_widget = {
                    color  = beautiful.transparent,
                    widget = wibox.widget.separator,
                },
                layout  = wibox.layout.fixed.horizontal
            },
            widget_template = {
                {
                    {
                        left  = dpi(64),
                        right = dpi(64),
                        widget = wibox.container.margin
                    },
                    id     = 'background_role',
                    widget = wibox.container.background,
                    },
                left  = dpi(10),
                right  = dpi(10),
                widget = wibox.container.margin
            },
            buttons = taglist_buttons,
        }
    return mytaglist
end



awful.screen.connect_for_each_screen(function(s)
    local bar_taglist = taglist.init(s)

    s.topbar = awful.wibar({
        screen = s,
        width = dpi(4),
        position = 'left', 
        type = "dock",
        border_width = beautiful.border_width,
        border_color = "#000000",
        bg = "#000000",
    })

    s.topbar:setup {
        layout = wibox.layout.align.vertical, 
        expand = "none",
        {   -- Left
            layout = wibox.layout.fixed.vertical, 
        }, 
        {   -- Middle
            {
                bar_taglist,
                direction = 'west',
                widget = wibox.container.rotate,
            },
            layout = wibox.layout.fixed.vertical, 
        },
        {   -- Right 
            layout = wibox.layout.fixed.vertical, 
        }
    }
end)
