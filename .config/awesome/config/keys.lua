local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
local gears = require("gears")
local beautiful = require("beautiful")
local naughty = require("naughty")
local util = require("utils.shifty")
local scratch = require("utils.scratch")

-- Define mod key
local modkey = "Mod4"
local altkey = "Mod1"
local agrkey = "Mod5"

local keys = {}



keys.desktopbuttons = gears.table.join(
    awful.button({ }, 1, function() awesome.emit_signal("dashboard::toggle") end)
)

keys.globalkeys = gears.table.join(
    awful.key({ modkey, "Control" }, "r",       
        function ()
            awesome.restart()
            awful.spawn.easy_async_with_shell("lule create -- set", function(out)
                naughty.notify { text = "RESTARTED" }
            end)
        end,
        {description = "reload awesome", group = "awesome"}
    ),

    awful.key({ modkey, "Control" }, "l",       awesome.emit_signal("awesome::refresh"),            {description = "reload awesome", group = "awesome"}),
    awful.key({ modkey, "Control" }, "q",       awesome.quit,               {description = "quit awesome", group = "awesome"}),
    awful.key({ modkey,           }, "s",       hotkeys_popup.show_help,    {description = "show help", group= "awesome"}),

    awful.key({ modkey, altkey    }, "Up",      awful.tag.viewprev,         {description = "view previous", group = "tag"}),
    awful.key({ modkey, altkey    }, "Down",    awful.tag.viewnext,         {description = "view next", group = "tag"}),

        -- Move client to another workspace by direction (up+down)
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

        -- Focus client by direction (arrow keys)
    awful.key({ modkey }, "Down",
        function()
            awful.client.focus.global_bydirection("down")
        end,
        {description = "focus down", group = "client"}),
    awful.key({ modkey }, "Up",
        function()
            awful.client.focus.global_bydirection("up")
        end,
        {description = "focus up", group = "client"}),
    awful.key({ modkey }, "Left",
        function()
            awful.client.focus.global_bydirection("left")
        end,
        {description = "focus left", group = "client"}),
    awful.key({ modkey }, "Right",
        function()
            awful.client.focus.global_bydirection("right")
        end,
        {description = "focus right", group = "client"}),

        -- Swap client by direction (arrow keys)
    awful.key({ altkey }, "Down",
        function()
            awful.client.swap.global_bydirection("down")
        end,
        {description = "swap down", group = "client"}),
    awful.key({ altkey }, "Up",
        function()
            awful.client.swap.global_bydirection("up")
        end,
        {description = "swap up", group = "client"}),
    awful.key({ altkey }, "Left",
        function()
            awful.client.swap.global_bydirection("left")
        end,
        {description = "swap left", group = "client"}),
    awful.key({ altkey }, "Right",
        function()
            awful.client.swap.global_bydirection("right")
        end,
        {description = "swap right", group = "client"})
)


keys.globalkeys = gears.table.join( keys.globalkeys,
    awful.key({  }, "dead_acute", 
        function () 
            awful.spawn("/env/cpp/bin/tmass -l /home/bresilla/.config/tmux load NOTE")
            scratch.toggle(
                "kitty --name=scratch_NOTE -e tmux attach -t NOTE", 
                { instance = "scratch_NOTE" }, 
                { 
                    width = 3500,
                    height = 1900,
                    placement = awful.placement.centered,
                }
            )
        end,
        {description = "user launcher", group = "launcher"}),
    awful.key({  }, "dead_circumflex", 
        function () 
            awful.spawn("/env/cpp/bin/tmass -l /home/bresilla/.config/tmux load MAIN")
            scratch.toggle(
                "kitty --name=scratch_MAIN -e tmux attach -t MAIN", 
                { instance = "scratch_MAIN" }, 
                { 
                    width = 2500,
                    height = 1050,
                    placement = awful.placement.centered,
                }
            )
        end,
        {description = "user launcher", group = "launcher"}),
    awful.key({ agrkey }, "space", function () awful.spawn("/home/bresilla/.config/rofi/menu/ROOT") end,
        {description = "user launcher", group = "launcher"}),
    awful.key({ modkey }, "space", function () awful.spawn("/home/bresilla/.config/rofi/menu/BROWSE") end,
        {description = "user launcher", group = "launcher"}),
    awful.key({ altkey }, "space", function () awful.spawn("/home/bresilla/.config/rofi/menu/USER") end,
        {description = "user launcher", group = "launcher"}),
    
    awful.key({ modkey, altkey }, "Insert", function () awful.spawn("/home/bresilla/.config/rofi/menu/screens") end,
        {description = "user launcher", group = "launcher"}),
    awful.key({ modkey, altkey }, "Escape", function () awful.spawn("/home/bresilla/.config/rofi/menu/power") end,
        {description = "user launcher", group = "launcher"}),
    awful.key({ modkey, altkey }, "Delete", function () awful.spawn("/home/bresilla/.config/rofi/menu/CONFIG") end,
        {description = "user launcher", group = "launcher"}),

    awful.key({}, "Print", function () awful.spawn("flameshot gui") end,
        {description = "user application", group = "application"})
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

    awful.key({ modkey, altkey }, "XF86AudioPlay", function ()
        awful.spawn.easy_async_with_shell("play ~/.config/dunst/scripts/bleep.wav; systemctl --user restart spotifyd", function(stdout)
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
    awful.button({ altkey }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.resize(c)
    end)
)

root.keys(keys.globalkeys)
root.buttons(keys.desktopbuttons)

return keys
