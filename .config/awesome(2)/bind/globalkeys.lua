-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
local util = require("util.shifty")
-- local hotkeys_popup = require("awful.hotkeys_popup").widget
local hotkeys_popup = require("awful.hotkeys_popup")
-- Menubar library
local menubar = require("menubar")

local modkey = "Mod4"
local altkey = "Mod1"
local agrkey = "Mod5"

local _M = {}

-- reading
-- https://awesomewm.org/wiki/Global_Keybindings

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function _M.get()
  local globalkeys = gears.table.join(
    awful.key({ modkey, "Control" }, "r",       awesome.restart,            {description = "reload awesome", group = "awesome"}),
    awful.key({ modkey, "Control" }, "q",       awesome.quit,               {description = "quit awesome", group = "awesome"}),
    awful.key({ modkey,           }, "s",       hotkeys_popup.show_help,    {description = "show help", group= "awesome"}),

    awful.key({ }, "F7", function () awful.layout.inc( 1 ) end,             {description = "select next layout", group = "layout"}),

    --   -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    -- Tag browsing
    awful.key({ modkey, altkey    }, "Left",    awful.tag.viewprev,         {description = "view previous", group = "tag"}),
    awful.key({ modkey, altkey    }, "Right",   awful.tag.viewnext,         {description = "view next", group = "tag"}),
    awful.key({ modkey, altkey    }, "Up",      awful.tag.viewprev,         {description = "view previous", group = "tag"}),
    awful.key({ modkey, altkey    }, "Down",    awful.tag.viewnext,         {description = "view next", group = "tag"}),
    awful.key({ modkey, altkey, "Shift"   }, "Up",
        function ()
            if client.focus then util.client.rel_send(-1) end
        end,
        {description = "move to prev tag", group = "tag"}),
    awful.key({ modkey, altkey, "Shift"   }, "Down",
        function ()
            if client.focus then util.client.rel_send(1) end
        end,
        {description = "move to next tag", group = "tag"}),

    --   -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    -- Layout manipulation
    awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact( 0.05)          end,
              {description = "increase master width factor", group = "layout"}),
    awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.05)          end,
              {description = "decrease master width factor", group = "layout"}),
    awful.key({ modkey,           }, "k",     function () awful.tag.incmhfact( 0.05)          end,
              {description = "increase master height factor", group = "layout"}),
    awful.key({ modkey,           }, "j",     function () awful.tag.incmhfact(-0.05)          end,
              {description = "decrease master height factor", group = "layout"}),

    awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1, nil, true) end,
              {description = "increase the number of master clients", group = "layout"}),
    awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1, nil, true) end,
              {description = "decrease the number of master clients", group = "layout"}),
    awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1, nil, true)    end,
              {description = "increase the number of columns", group = "layout"}),
    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1, nil, true)    end,
              {description = "decrease the number of columns", group = "layout"}),

    -- useless gaps
    awful.key({ modkey }, "+",     function () beautiful.useless_gap = beautiful.useless_gap + 5 end,
        {description = "increase useless gaps", group = "layout"}),
    awful.key({ modkey }, "-",     function () beautiful.useless_gap = beautiful.useless_gap - 5 end,
        {description = "decrease useless gaps", group = "layout"})
  )


  globalkeys = gears.table.join( globalkeys,
      awful.key({  }, "dead_acute", function () awful.spawn("/home/bresilla/dots/.func/wm/termop kitty NOTE 3500 1900") end,
          {description = "user launcher", group = "launcher"}),
      awful.key({  }, "dead_circumflex", function () awful.spawn("/home/bresilla/dots/.func/wm/termop kitty MAIN 2500 1050") end,
          {description = "user launcher", group = "launcher"}),

      awful.key({ agrkey }, "space", function () awful.spawn("/home/bresilla/.config/rofi/menu/ROOT") end,
          {description = "user launcher", group = "launcher"}),
      awful.key({ modkey }, "space", function () awful.spawn("/home/bresilla/.config/rofi/menu/BROWSE") end,
          {description = "user launcher", group = "launcher"}),
      awful.key({ altkey }, "space", function () awful.spawn("/home/bresilla/.config/rofi/menu/USER") end,
          {description = "user launcher", group = "launcher"})
  )

  globalkeys = gears.table.join( globalkeys,
      -- media controls
      awful.key({}, "XF86AudioLowerVolume", function ()
          awful.spawn.easy_async_with_shell("pulsemixer --change-volume -2", function(stdout)
              awesome.emit_signal("popup::volume", {amount = -2})
          end)
      end),
      awful.key({}, "XF86AudioRaiseVolume", function ()
          awful.spawn.easy_async_with_shell("pulsemixer --change-volume +2", function(stdout)
              awesome.emit_signal("popup::volume", {amount = 2})
          end)
      end),
      awful.key({}, "XF86AudioMute", function ()
          awful.spawn.easy_async_with_shell("pulsemixer --toggle-mute", function(stdout)
              awesome.emit_signal("popup::volume")
          end)
      end),

      -- Brightness
    awful.key({ }, "XF86MonBrightnessDown", function ()
        awful.spawn.easy_async_with_shell("light -U 2", function(stdout)
            awesome.emit_signal("popup::brightness", {amount = -2})
        end)
    end),
    awful.key({ }, "XF86MonBrightnessUp", function ()
        awful.spawn.easy_async_with_shell("light -A 2", function(stdout)
              awesome.emit_signal("popup::brightness", {amount = 2})
          end)
      end)
  )

  return globalkeys
end

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

return setmetatable({}, { 
  __call = function(_, ...) return _M.get(...) end 
})
