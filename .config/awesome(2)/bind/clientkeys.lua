-- Standard Awesome library
local gears = require("gears")
local awful = require("awful")

local _M = {}
local modkey = "Mod4"
local altkey = "Mod1"
local agrkey = "Mod5"



-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function _M.get()
  local clientkeys = gears.table.join(
    awful.key({ modkey    }, "Escape",      function (c) c:kill() end,
        {description = "close", group = "client"}),
    awful.key({ modkey,           }, "f",
        function (c)
            c.fullscreen = not c.fullscreen
            c:raise()
        end,
        {description = "toggle fullscreen", group = "client"}),
    awful.key({ modkey }, "g",  awful.client.floating.toggle,
        {description = "toggle floating", group = "client"})

  )

  return clientkeys
end

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

return setmetatable({}, { 
  __call = function(_, ...) return _M.get(...) end 
})
