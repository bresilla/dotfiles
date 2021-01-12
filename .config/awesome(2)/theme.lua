local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local gears = require("gears")
local dpi = xresources.apply_dpi

local themes_path = "~/.config/awesome/" 

local theme = {}

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

theme.highlight = "#F43E5C"
theme.transparent = "'#282A3600"


theme.useless_gap   = dpi(8)
theme.border_width  = dpi(1)
theme.border_normal = theme.bg_very_light
theme.border_focus  = theme.bg_very_light
theme.border_marked = theme.bg_very_light
theme.rounded_corners = true
theme.border_radius = dpi(15)

return theme
