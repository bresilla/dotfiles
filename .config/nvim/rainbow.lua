foreground="#eceaf7"
background="#0a0813"
cursor="#1036be"
color0="#0a0813"
color1="#1036be"
color2="#22248b"
color3="#8b3792"
color4="#275dba"
color5="#3c7acc"
color6="#72a0ce"
color7="#9694ab"
color8="#605e74"
color9="#3561ff"
color10="#1418ff"
color11="#ee30ff"
color12="#488bff"
color13="#6faeff"
color14="#a7d3ff"
color15="#eceaf7"
color232="#000000"
color233="#020104"
color234="#030307"
color235="#05040b"
color236="#07060e"
color237="#090711"
color238="#0f0b1a"
color239="#171533"
color240="#1c1c4f"
color241="#1e236d"
color242="#1d2c8d"
color243="#1732ad"
color244="#3b44c3"
color245="#6861ce"
color246="#8c80d8"
color247="#aa9fe2"
color248="#c8c0ec"
color249="#e5e1f5"
color250="#eeedf8"
color251="#f2f0f9"
color252="#f5f4fb"
color253="#f8f8fc"
color254="#fcfbfe"
color255="#ffffff"
color160="#0a0813"
color161="#251522"
color162="#3e1d32"
color163="#592542"
color164="#752d53"
color165="#923465"
color166="#a94a79"
color167="#b96b91"
color168="#c78aaa"
color169="#d4aac3"
color170="#e1cadd"
color171="#eceaf7"
color172="#0a0813"
color173="#1a2025"
color174="#283538"
color175="#364c4d"
color176="#446462"
color177="#537d78"
color178="#68928e"
color179="#82a4a2"
color180="#9cb5b6"
color181="#b6c6cc"
color182="#d1d8e1"
color183="#eceaf7"
color184="#0a0813"
color185="#171330"
color186="#1f1a4f"
color187="#242170"
color188="#272993"
color189="#272eb8"
color190="#4742d0"
color191="#7462d9"
color192="#9582e1"
color193="#b4a4e9"
color194="#d0c7f0"
color195="#eceaf7"
color196="#0a0813"
color197="#211630"
color198="#37204f"
color199="#4d2970"
color200="#663293"
color201="#7e3cb8"
color202="#9451cf"
color203="#a770d8"
color204="#bb8ee0"
color205="#ccade8"
color206="#dccbf0"
color207="#eceaf7"
color208="#0a0813"
color209="#241f26"
color210="#3c343a"
color211="#564a4f"
color212="#716165"
color213="#8d7a7b"
color214="#a38f91"
color215="#b2a0a4"
color216="#c0b2b8"
color217="#cfc5cd"
color218="#ddd7e2"
color219="#eceaf7"
color220="#0a0813"
color221="#182030"
color222="#22354f"
color223="#2a4c70"
color224="#326394"
color225="#397bb9"
color226="#5392d0"
color227="#77a3d8"
color228="#97b4e0"
color229="#b4c5e8"
color230="#d0d8ef"
color231="#eceaf7"
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

Color.new('Red',        color166)
Color.new('Blue',       color190)
Color.new('Green',      color178)
Color.new('Yellow',     color214)

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
