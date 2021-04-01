require('specs').setup{ 
    show_jumps  = true,
    min_jump =5,
    popup = {
        delay_ms = 5, -- delay before popup displays
        inc_ms = 20, -- time increments used for fade/resize effects 
        blend = 30, -- starting blend, between 0-100 (fully transparent), see :h winblend
        width = 20,
        winhl = "CursorJump",
        fader = require('specs').linear_fader,
        resizer = require('specs').slide_resizer
    }
}
