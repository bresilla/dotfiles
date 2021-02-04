local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local gears = require("gears")
local dpi = xresources.apply_dpi

local themes_path = "~/.config/awesome/" 

function fileToList(file)
    -- see if the file exists
    function file_exists(file)
        local f = io.open(file, "rb")
        if f then f:close() end
        return f ~= nil
    end
    -- get all lines from a file, returns an empty 
    -- list/table if the file does not exist
    if not file_exists(file) then return {} end
    lines = {}
    for line in io.lines(file) do 
        lines[#lines + 1] = line
    end
    return lines
end

function getColor(col)
    rainbow = fileToList('/home/bresilla/.cache/wal/colors')
    return rainbow[col+1]
end


local theme = {}

theme.rainbow = fileToList('/home/bresilla/.cache/wal/colors')

theme.font          = "Roboto Medium 9"
theme.titlefont     = "Roboto Bold 9"
theme.fontname      = "Roboto Medium 9"

theme.bg_normal     = "#1C1E26"
theme.bg_focus      = theme.bg_normal
theme.bg_urgent     = theme.bg_normal
theme.bg_minimize   = "#aaaaaa"
theme.bg_systray    = theme.bg_normal
theme.bg_light      = "#232530"
theme.bg_very_light = "#2E303E"
theme.bg_dark       = "#1A1C23" 

theme.fg_normal     = "#dddddd"
theme.fg_dark       = "#cccccc"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.highlight     = "#F43E5C"
theme.transparent   = "#282A3600"


theme.useless_gap   = dpi(8)
theme.border_width  = dpi(3)
theme.border_normal = getColor(232)
theme.border_focus  = getColor(1)
theme.border_marked = getColor(1)
theme.rounded_corners = true
theme.border_radius = dpi(15)

theme.taglist_bg_focus = getColor(236)
theme.taglist_bg_occupied = getColor(240)
theme.taglist_bg_empty = getColor(246)

awesome.emit_signal("awesome::refresh")
return theme
