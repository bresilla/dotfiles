local windline = require('windline')
local helper = require('windline.helpers')
local b_components = require('windline.components.basic')
local state = _G.WindLine.state

local lsp_comps = require('windline.components.lsp')
local git_comps = require('windline.components.git')


local basic = {}
basic.divider = { b_components.divider, '' }
basic.bg = { ' ', 'StatusLine' }

local colors_mode = {
    Normal = { 'red', 'black' },
    Insert = { 'green', 'black' },
    Visual = { 'yellow', 'black' },
    Replace = { 'blue_light', 'black' },
    Command = { 'magenta', 'black' },
}

basic.vi_mode = {
    hl_colors = colors_mode,
    text = function()
        return { { '  ' .. state.mode[1] .. ' ', state.mode[2] .. '  ' }, }
    end,
}

basic.double_slash = {
    hl_colors = {
        default = { 'red', 'black' }
    },
    text = function()
        return { {'  //  '} }
    end,
}

local default = {
    filetypes={'default'},
    active={
        basic.double_slash,
        basic.vi_mode,
      --- components...
    },
    inactive={
      --- components...
    }
}

windline.setup({
  statuslines = {
      default,
  }
})

require('wlfloatline').setup()
