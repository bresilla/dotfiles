local awful = require("awful")
local wibox = require("wibox")

local shapes = require("utils.shapes")

local top_edge_height = 4

local set_titlebar = function(c, corner_top_left_img, top_edge, corner_top_right_img)
    awful.titlebar(c, {
        size = top_edge_height,
        bg = "transparent",
        position = "top",
    }):setup {
        wibox.widget.imagebox(corner_top_left_img, false),
        wibox.widget.imagebox(top_edge, false),
        wibox.widget.imagebox(corner_top_right_img, false),
        layout = wibox.layout.align.horizontal,
    }
end

local top = function(c, args)
    local corner_top_left_img = shapes.create_corner_top_left {
        color = args.client_color,
        radius = top_edge_height,
        height = top_edge_height,
        background_source = args.background_fill_top,
        stroke_offset_inner = 2.5,
        stroke_offset_outer = 1.5,
        stroke_source_inner = shapes.gradient(
            args.stroke_color_inner_top, args.stroke_color_inner_sides,
            top_edge_height, 0, 0.25),
        stroke_source_outer = shapes.gradient(
            args.stroke_color_outer_top, args.stroke_color_outer_sides,
            top_edge_height),
        stroke_width_inner = 2,
        stroke_width_outer = 2,
    }

    local corner_top_right_img = shapes.flip(corner_top_left_img, "horizontal")

    local top_edge = shapes.create_edge_top_middle {
        color = args.client_color,
        height = top_edge_height,
        background_source = args.background_fill_top,
        stroke_color_inner = args.stroke_color_inner_top,
        stroke_color_outer = args.stroke_color_outer_top,
        stroke_offset_inner = 2.25,
        stroke_offset_outer = 1.5,
        stroke_width_inner = 2,
        stroke_width_outer = 2,
        width = c.screen.geometry.width,
    }

    set_titlebar(c, corner_top_left_img, top_edge, corner_top_right_img)
end

return top
