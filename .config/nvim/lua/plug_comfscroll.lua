vim.g.comfortable_motion_no_default_key_mappings = 1
vim.g.comfortable_motion_impulse_multiplier = 2
vim.g.comfortable_motion_friction = 60.0
vim.g.comfortable_motion_air_drag = 4.0
vim.g.comfortable_motion_interval = 1000.0 / 60
vimp.nnoremap({'silent'},       '<ScrollWheelDown>',     [[:call comfortable_motion#flick(40)<CR>]])
vimp.inoremap({'silent'},       '<ScrollWheelDown>',     [[<C-O><ScrollWheelDown>]])
vimp.nnoremap({'silent'},       '<ScrollWheelUp>',       [[:call comfortable_motion#flick(-40)<CR>]])
vimp.inoremap({'silent'},       '<ScrollWheelUp>',       [[<C-O><ScrollWheelUp>]])
vimp.nnoremap({'silent'},       '<Pagedown>',            [[:call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0))<CR>]])
vimp.inoremap({'silent'},       '<Pagedown>',            [[<C-O><Pagedown>]])
vimp.nnoremap({'silent'},       '<Pageup>',              [[:call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * -winheight(0))<CR>]])
vimp.inoremap({'silent'},       '<Pageup>',              [[<C-O><Pageup>]])

