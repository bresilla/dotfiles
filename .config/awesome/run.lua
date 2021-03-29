local awful = require("awful")
local gears = require("gears")

local function run_once(cmd)
    local findme = cmd
    local firstspace = cmd:find(' ')
    if firstspace then findme = cmd:sub(0, firstspace - 1) end
    awful.spawn.easy_async_with_shell(string.format('pgrep -u $USER -x %s > /dev/null || (%s)', findme, cmd))
end

-- PROFILE SOURCE
run_once("source /home/bresilla/.profile")
-- GPG
run_once("export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket) && gpgconf --launch gpg-agent")
-- Disable Bell
run_once("xset -b")
-- Wallpaper thingy
run_once("/home/bresilla/dots/.func/wm/rainbow regen")
-- monitors 
run_once("xrandr --output eDP-1 --primary --mode 3840x2160 --pos 0x2160 --output DP-1 --mode 3840x2160 --pos 0x0")

return autostart
