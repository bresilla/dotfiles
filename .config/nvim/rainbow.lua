foreground="#f8fbfb"
background="#131515"
cursor="#acdfe2"
color0="#131515"
color1="#acdfe2"
color2="#c5e0e2"
color3="#659cab"
color4="#a6c5c9"
color5="#5391a4"
color6="#96b6ba"
color7="#adb2b3"
color8="#767b7b"
color9="#f5fefe"
color10="#ffffff"
color11="#7eddf8"
color12="#d9f8fc"
color13="#64d6f9"
color14="#bef1f8"
color15="#f8fbfb"
color232="#000000"
color233="#040404"
color234="#070909"
color235="#0b0d0d"
color236="#0e1010"
color237="#111313"
color238="#191c1c"
color239="#303a3b"
color240="#495c5d"
color241="#647f80"
color242="#80a4a6"
color243="#9dcbce"
color244="#b3e1e4"
color245="#c0e6e8"
color246="#ceebed"
color247="#dbf0f1"
color248="#e8f5f6"
color249="#f5fafa"
color250="#f9fcfc"
color251="#fafcfc"
color252="#fbfdfd"
color253="#fdfefe"
color254="#fefefe"
color255="#ffffff"
-- === COLORBUDDY ===
local Color, colors, Group, groups, styles = require("colorbuddy").setup()
-- package.path = '/home/bresilla/.cache/wal/rainbow.lua'
-- local colorz = require("rainbow.lua")

Color.new('r0',           color0)
Color.new('r1',           color1)
Color.new('r2',           color2)
Color.new('r3',           color3)
Color.new('r4',           color4)
Color.new('r5',           color5)
Color.new('r6',           color6)
Color.new('r7',           color7)
Color.new('r8',           color8)
Color.new('r9',           color9)
Color.new('r10',          color10)
Color.new('r11',          color11)
Color.new('r12',          color12)
Color.new('r13',          color13)
Color.new('r14',          color14)
Color.new('r15',          color15)

Color.new('r232',         color232)
Color.new('r233',         color233)
Color.new('r234',         color234)
Color.new('r235',         color235)
Color.new('r236',         color236)
Color.new('r237',         colo237r)
Color.new('r238',         color238)
Color.new('r239',         color239)
Color.new('r240',         color240)
Color.new('r241',         color241)
Color.new('r242',         color242)
Color.new('r243',         color243)
Color.new('r244',         color244)
Color.new('r245',         color245)
Color.new('r246',         color246)
Color.new('r247',         color247)
Color.new('r248',         color248)
Color.new('r249',         color249)
Color.new('r250',         color250)
Color.new('r251',         color251)
Color.new('r252',         color252)
Color.new('r253',         color253)
Color.new('r254',         color253)
Color.new('r255',         color255)

Color.new('Redish',       "#8c4c4c")
Color.new('Orangeish',    "#6c4c00")
Color.new('Violetish',    "#8c6cac")
Color.new('Cyanish',      "#6cac8c")

Color.new('Red',          "#ff0000")
Color.new('Blue',         "#0000ff")
Color.new('Green',        "#00ff00")
Color.new('Yellow',       "#ffff00")

vim.g.terminal_color_0  = color0
vim.g.terminal_color_8  = color8
vim.g.terminal_color_1  = color1
vim.g.terminal_color_9  = color9
vim.g.terminal_color_2  = color2
vim.g.terminal_color_10 = color10
vim.g.terminal_color_3  = color3
vim.g.terminal_color_11 = color11
vim.g.terminal_color_4  = color4
vim.g.terminal_color_12 = color12
vim.g.terminal_color_5  = color5
vim.g.terminal_color_13 = color13
vim.g.terminal_color_6  = color6
vim.g.terminal_color_14 = color14
vim.g.terminal_color_7  = color7
vim.g.terminal_color_15 = color15


-- === HIGHLIGHTS === "
--background
Group.new('Normal',                 nil,                  colors.r0)
Group.new('NormalNC',               nil,                  colors.r0)
--visual select
Group.new('Visual',                 nil,                  colors.r239,          styles.bold)
--cursor
Group.new('Search',                 colors.r0,            colors.r9)
Group.new('CursorLine',             nil,                  colors.r236,          styles.bold)
Group.new('CursorColumn',           nil,                  colors.r236,          styles.bold)
Group.new('Cursor',                 colors.r15,           colors.r1)
--similar words
Group.new('illuminatedWord',        nil,                  colors.r0,            styles.bold)
--squicky lines "~" hide
Group.new('EndOfBuffer',            colors.r0,            colors.r0)
--splits and number backgrounds,
Group.new('VertSplit',              colors.r239,            colors.r0)
Group.new('foldcolumn',             nil,                  colors.r0)
Group.new('LineNr',                 colors.r248,          colors.r0)
Group.new('SignColumn',             nil,                  colors.r0)
Group.new('CursorLineNR',           colors.r1,            colors.r0,            styles.bold)
--special characters of endline
Group.new('NonText',                colors.r235,          colors.r0) 
--completion menu
Group.new('Pmenu',                  colors.r15,           colors.r239)
Group.new('PmenuSel',               colors.r1,            colors.r236,          styles.bold)
Group.new('PmenuSbar',              nil,                  colors.r0)
Group.new('PmenuThumb',             nil,                  colors.r0)
--parenthesis
Group.new('MatchParen',             colors.r15,           colors.r1,            styles.bold)


-- === TABS === "
Group.new('BufferCurrent',          colors.r1,            colors.r0,            styles.bold)
Group.new('BufferCurrentMod',       colors.r1,            colors.r0)
Group.new('BufferCurrentSign',      colors.r1,            colors.r0)
Group.new('BufferCurrentTarget',    colors.r15,           colors.r0)
Group.new('BufferVisible',          colors.r248,          colors.r239)
Group.new('BufferVisibleMod',       colors.r0,            colors.r239)
Group.new('BufferVisibleSign',      colors.r0,            colors.r239)
Group.new('BufferVisibleTarget',    colors.r0,            colors.r239)
Group.new('BufferInactive',         colors.r248,          colors.r239)
Group.new('BufferInactiveMod',      colors.r0,            colors.r239)
Group.new('BufferInactiveSign',     colors.r0,            colors.r239)
Group.new('BufferInactiveTarget',   colors.r0,            colors.r239)
Group.new('BufferTabpages',         colors.r0,            colors.r239)
Group.new('BufferTabpageFill',      colors.r0,            colors.r239)
Group.new('TabLineFill',            colors.r1,            colors.r239)


-- === STATUS-LINE === "
Group.new('StatusLine',             colors.r248,          colors.r239)
Group.new('StatusLineNC',           colors.r0,            colors.r239)
--express_line
Group.new('ElNormal',               colors.r1,            colors.r0,            styles.bold)
Group.new('ElInsert',               colors.r0,            colors.r1,            styles.bold)


-- === WHICH KEY === "
-- Group.new('default', link WhichKey          Operator)
-- Group.new('default', link WhichKeySeperator DiffAdded)
-- Group.new('default', link WhichKeyGroup,     Identifier)
-- Group.new('default', link WhichKeyDesc      Function)
-- Group.new('default', link WhichKeyFloating  Pmenu)v


-- === DIAGNOSTICS === "
Group.new('LspDiagnosticsVirtualTextSpace',         colors.r235,          colors.r0,            styles.italic)
-- sign define LspDiagnosticsSignError text=×
Group.new('LspDiagnosticsVirtualTextError',         colors.Redish,        colors.r235,          styles.italic)
Group.new('LspDiagnosticsSignError',                colors.Redish,        colors.r0,            styles.bold)
Group.new('LspDiagnosticsFloatingError',            colors.Redish,        nil,                  styles.italic)
-- sign define LspDiagnosticsSignWarning text=!
Group.new('LspDiagnosticsVirtualTextWarning',       colors.Orangeish,     colors.r235,          styles.italic)
Group.new('LspDiagnosticsSignWarning',              colors.Orangeish,     colors.r0,            styles.bold)
Group.new('LspDiagnosticsFloatingWarning',          colors.Orangeish,     nil,                  styles.italic)
-- sign define LspDiagnosticsSignInformation text=i
Group.new('LspDiagnosticsVirtualTextInformation',   colors.Violetish,     colors.r235,          styles.italic)
Group.new('LspDiagnosticsSignInformation',          colors.Violetish,     colors.r0,            styles.bold)
Group.new('LspDiagnosticsFloatingInformation',      colors.Violetish,     nil,                  styles.italic)
-- sign define LspDiagnosticsSignHint text=➜
Group.new('LspDiagnosticsVirtualTextHint',          colors.Cyanish,       colors.r235,          styles.italic)
Group.new('LspDiagnosticsSignHint',                 colors.Cyanish,       colors.r0,            styles.bold)
Group.new('LspDiagnosticsFloatingHint',             colors.Cyanish,       nil,                  styles.italic)


-- === GIT & GITGUTTER ===
Group.new("DiffAdd"    ,                colors.Green,    colors.r0)
Group.new("DiffChange" ,                colors.Yellow,   colors.r0)
Group.new("DiffDelete" ,                colors.Red,      colors.r0)
Group.new("DiffText"   ,                colors.Blue,     colors.r0)
Group.new('GitGutterAdd',               colors.Green,    colors.r0)
Group.new('GitGutterChange',            colors.Yellow,   colors.r0)
Group.new('GitGutterDelete',            colors.Red,      colors.r0)
Group.new('GitGutterChangeDelete',      colors.Blue,     colors.r0)


-- === MULTIPLE CURSORS ===
Group.new('VM_Mono',                    colors.r0,       colors.r1,       styles.reverse)
Group.new('VM_Extend',                  colors.r0,       colors.r1,       styles.reverse)
Group.new('VM_Cursor',                  colors.r0,       colors.r1,       styles.reverse)
Group.new('VM_Insert',                  colors.r0,       colors.r1,       styles.reverse)


-- === FLOAT-TERM ===
Group.new('FloatermBorder',             colors.r1,       colors.r0)
Group.new('Floaterm',                   nil,             colors.r0)


-- === TELESCOPE ===
Group.new('TelescopeBorder',            colors.r1,       nil)


-- === NVIM LUA TREE ===
Group.new('Directory',                  colors.r1,       nil)
Group.new('FolderIcon',                 colors.r1,       nil)


-- === NVIM LUA TREE ===
Group.new('DashboardHeader',            colors.r1,       nil)
