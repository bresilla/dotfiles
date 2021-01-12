local awful = require("awful")
local wibox = require("wibox")

local shapes = require("utils.shapes")

local set_left_titlebar = function(c, left_border_img, client_color)
    awful.titlebar(c, {
        position = "left",
        size = 3,
        bg = client_color,
        widget = wibox.container.background,
    }):setup{
        bgimage = left_border_img,
        widget = wibox.container.background,
    }
end

local left = function(c, args)
    -- The left side border
    local left_border_img = shapes.create_edge_left {
        client_color = args.client_color,
        height = c.screen.geometry.height,
        stroke_offset_inner = 1.5,
        stroke_offset_outer = 0.5,
        stroke_color_outer = args.stroke_color_outer_sides,
        stroke_width_inner = 2,
        stroke_width_outer = 2,
        inner_stroke_color = args.stroke_color_inner_sides,
    }
    set_left_titlebar(c, left_border_img, args.client_color)
end

return left
