local awful = require("awful")
local beautiful = require("beautiful")

local keys = require("config.keys")

rules = {
    -- All clients will match this rule.
    { rule = { },
        properties = { 
            border_width = beautiful.border_width,
            border_color = beautiful.border_normal,
            focus = awful.client.focus.filter,
            raise = true,
            keys = keys.clientkeys,
            buttons = keys.clientbuttons,
            screen = awful.screen.preferred,
            placement = awful.placement.no_overlap+awful.placement.no_offscreen,
            size_hints_honor = false
        }
    },

    -- Floating clients.
    { rule_any = {
        instance = {
          "pinentry",
          "scratch",
          "scratch_NOTE",
          "scratch_MAIN",
        },
        class = {
          "Arandr",
          "Sxiv",
          "scratch"
        },
        name = {
          "Event Tester",  -- xev.
        },
      }, 
        properties = { 
            border_width = beautiful.border_width,
            border_color = beautiful.border_normal,
            floating = true 
        }
    },
}

awful.rules.rules = rules
