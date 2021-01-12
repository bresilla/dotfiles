local awful = require("awful")
local gears = require("gears")
local beautiful = require("beautiful")
local naughty = require("naughty")
local util = require("utils.shifty")

local hotkeys_popup = require("awful.hotkeys_popup")

-- Define mod key
local modkey = "Mod4"
local altkey = "Mod1"
local agrkey = "Mod5"

local keys = {}



keys.desktopbuttons = gears.table.join(
    awful.button({ }, 1, function() awesome.emit_signal("dashboard::toggle") end)
)

keys.globalkeys = gears.table.join(
    awful.key({ modkey, "Control" }, "r",       awesome.restart,            {description = "reload awesome", group = "awesome"}),
    awful.key({ modkey, "Control" }, "q",       awesome.quit,               {description = "quit awesome", group = "awesome"}),
    awful.key({ modkey,           }, "s",       hotkeys_popup.show_help,    {description = "show help", group= "awesome"}),

    awful.key({ }, "F7", function () awful.layout.inc( 1 ) end,             {description = "select next layout", group = "layout"}),

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


    -- master height & width
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

keys.globalkeys = gears.table.join( keys.globalkeys,
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

for i = 1, 9 do
    keys.globalkeys = gears.table.join(keys.globalkeys,
        -- View tag only.
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = awful.screen.focused()
                        local tag = screen.tags[i]
                        if tag then
                           tag:view_only()
                        end
                  end,
                  {description = "view tag #"..i, group = "tag"}),
        -- Move client to tag.
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
                          local tag = client.focus.screen.tags[i]
                          if tag then
                              client.focus:move_to_tag(tag)
                          end
                     end
                  end,
                  {description = "move focused client to tag #"..i, group = "tag"})
    )
end

keys.clientkeys = gears.table.join(
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

keys.globalkeys = gears.table.join( keys.globalkeys,
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

keys.clientbuttons = gears.table.join(
    awful.button({ }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
    end),
    awful.button({ modkey }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.move(c)
    end),
    awful.button({ modkey }, 3, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.resize(c)
    end)
)

root.keys(keys.globalkeys)
root.buttons(keys.desktopbuttons)

return keys
