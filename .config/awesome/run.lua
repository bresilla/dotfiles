local awful = require("awful")
local gears = require("gears")

local function run_once(cmd)
    local findme = cmd
    local firstspace = cmd:find(' ')
    if firstspace then findme = cmd:sub(0, firstspace - 1) end
    awful.spawn.easy_async_with_shell(string.format(
                                          'pgrep -u $USER -x %s > /dev/null || (%s)',
                                          findme, cmd))
end

-- Disable Bell
run_once("xset -b")
-- Wallpaper thingy
run_once("/home/bresilla/dots/.func/wm/rainbow regen &")
-- monitors 
run_once([[ 
  xrandr --output $MONITOR1 --primary --mode 3840x2160 --pos 0x2160 --rotate normal --output $MONITOR2 --mode 3840x2160 --pos 0x0 --rotate normal --output DP2 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off &
  ]])

return autostart
