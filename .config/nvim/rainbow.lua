foreground="#f1fdff"
background="#0e1617"
cursor="#32eaff"
color0="#0e1617"
color1="#32eaff"
color2="#06c8ea"
color3="#5684b9"
color4="#079cbe"
color5="#52759f"
color6="#3c618a"
color7="#9fb6ba"
color8="#687e82"
color9="#98f5ff"
color10="#57e6ff"
color11="#76b6ff"
color12="#2cd8ff"
color13="#5fa4f8"
color14="#2e8ffe"
color15="#f1fdff"
color232="#000000"
color233="#030505"
color234="#05090a"
color235="#080d0e"
color236="#0a1112"
color237="#0c1415"
color238="#121d1f"
color239="#1e3d42"
color240="#266068"
color241="#2d8590"
color242="#31abbb"
color243="#33d6e8"
color244="#54ebff"
color245="#7feeff"
color246="#a0f2ff"
color247="#bbf6ff"
color248="#d4f9ff"
color249="#ebfcff"
color250="#f3fdff"
color251="#f5feff"
color252="#f8feff"
color253="#fafeff"
color254="#fdffff"
color255="#ffffff"
color160="#0e1617"
color161="#2d2d2b"
color162="#4d4641"
color163="#6f6058"
color164="#937c71"
color165="#b9998a"
color166="#d0afa0"
color167="#d7beb2"
color168="#decec5"
color169="#e5ddd8"
color170="#ebedeb"
color171="#f1fdff"
color172="#0e1617"
color173="#1d372f"
color174="#2a5c49"
color175="#368464"
color176="#42ae81"
color177="#4dd99f"
color178="#68f2b6"
color179="#8af5c5"
color180="#a7f7d3"
color181="#c1fae1"
color182="#d9fbf0"
color183="#f1fdff"
color184="#0e1617"
color185="#1e2b3a"
color186="#2b4161"
color187="#38598b"
color188="#4571b8"
color189="#518de6"
color190="#6ba1fe"
color191="#8cb4ff"
color192="#a8c5ff"
color193="#c2d8ff"
color194="#daeaff"
color195="#f1fdff"
color196="#0e1617"
color197="#292e3a"
color198="#444861"
color199="#62648b"
color200="#8182b7"
color201="#a2a0e5"
color202="#b9b7fd"
color203="#c5c4fe"
color204="#d0d2fe"
color205="#dbe0ff"
color206="#e6efff"
color207="#f1fdff"
color208="#0e1617"
color209="#29372f"
color210="#455c49"
color211="#638365"
color212="#83ad82"
color213="#a4d9a1"
color214="#bbf0b7"
color215="#c6f3c6"
color216="#d1f6d4"
color217="#dcf8e2"
color218="#e7fbf1"
color219="#f1fdff"
color220="#0e1617"
color221="#1b373a"
color222="#245d60"
color223="#2b848a"
color224="#2eafb6"
color225="#2ddbe4"
color226="#52f4fc"
color227="#80f5fd"
color228="#a2f8fd"
color229="#bffafe"
color230="#d9fbfe"
color231="#f1fdff"
-- === COLORBUDDY ===
local Color, colors, Group, groups, styles = require("colorbuddy").setup()
-- package.path = '/home/bresilla/.cache/wal/rainbow.lua'
-- local colorz = require("rainbow.lua")

Color.new('r0',         color0)
Color.new('r1',         color1)
Color.new('r2',         color2)
Color.new('r3',         color3)
Color.new('r4',         color4)
Color.new('r5',         color5)
Color.new('r6',         color6)
Color.new('r7',         color7)
Color.new('r8',         color8)
Color.new('r9',         color9)
Color.new('r10',        color10)
Color.new('r11',        color11)
Color.new('r12',        color12)
Color.new('r13',        color13)
Color.new('r14',        color14)
Color.new('r15',        color15)

Color.new('r232',       color232)
Color.new('r233',       color233)
Color.new('r234',       color234)
Color.new('r235',       color235)
Color.new('r236',       color236)
Color.new('r237',       colo237r)
Color.new('r238',       color238)
Color.new('r239',       color239)
Color.new('r240',       color240)
Color.new('r241',       color241)
Color.new('r242',       color242)
Color.new('r243',       color243)
Color.new('r244',       color244)
Color.new('r245',       color245)
Color.new('r246',       color246)
Color.new('r247',       color247)
Color.new('r248',       color248)
Color.new('r249',       color249)
Color.new('r250',       color250)
Color.new('r251',       color251)
Color.new('r252',       color252)
Color.new('r253',       color253)
Color.new('r254',       color253)
Color.new('r255',       color255)

Color.new('ac_d',      color239)
Color.new('ac_l',      color248)

Color.new('Redish',     "#8c4c4c")
Color.new('Orangeish',  "#6c4c00")
Color.new('Violetish',  "#8c6cac")
Color.new('Cyanish',    "#6cac8c")

Color.new('Red',        "#ff0000")
Color.new('Blue',       "#0000ff")
Color.new('Green',      "#00ff00")
Color.new('Yellow',     "#ffff00")

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
Group.new('Visual',                 nil,                  colors.ac_d,          styles.bold)
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
Group.new('VertSplit',              colors.ac_d,            colors.r0)
Group.new('foldcolumn',             nil,                  colors.r0)
Group.new('LineNr',                 colors.ac_l,          colors.r0)
Group.new('SignColumn',             nil,                  colors.r0)
Group.new('CursorLineNR',           colors.r1,            colors.r0,            styles.bold)
--special characters of endline
Group.new('NonText',                colors.r235,          colors.r0) 
--completion menu
Group.new('Pmenu',                  colors.r15,           colors.ac_d)
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
Group.new('BufferVisible',          colors.ac_l,          colors.ac_d)
Group.new('BufferVisibleMod',       colors.r0,            colors.ac_d)
Group.new('BufferVisibleSign',      colors.r0,            colors.ac_d)
Group.new('BufferVisibleTarget',    colors.r0,            colors.ac_d)
Group.new('BufferInactive',         colors.ac_l,          colors.ac_d)
Group.new('BufferInactiveMod',      colors.r0,            colors.ac_d)
Group.new('BufferInactiveSign',     colors.r0,            colors.ac_d)
Group.new('BufferInactiveTarget',   colors.r0,            colors.ac_d)
Group.new('BufferTabpages',         colors.r0,            colors.ac_d)
Group.new('BufferTabpageFill',      colors.r0,            colors.ac_d)
Group.new('TabLineFill',            colors.r1,            colors.ac_d)


-- === STATUS-LINE === "
Group.new('StatusLine',             colors.ac_l,          colors.ac_d)
Group.new('StatusLineNC',           colors.r0,            colors.ac_d)
--express_line
Group.new('ElNormal',               colors.r1,            colors.r0,            styles.bold)
Group.new('ElInsert',               colors.r0,            colors.r1,            styles.bold)


-- === WHICH KEY === "
-- Group.new('WhichKey'          Operator)
-- Group.new('WhichKeySeperator' DiffAdded)
-- Group.new('WhichKeyGroup',     Identifier)
-- Group.new('WhichKeyDesc'      Function)
-- Group.new('WhichKeyFloating'  Pmenu)v


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
Group.new('DashboardCenter',            colors.ac_l,     nil)
Group.new('DashboardFooter',            colors.r1,       nil)
