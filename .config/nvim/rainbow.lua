foreground="#f2f3fa"
background="#0f1015"
cursor="#648ae2"
color0="#0f1015"
color1="#648ae2"
color2="#87a0d3"
color3="#98b0da"
color4="#4e6bb4"
color5="#6d85b8"
color6="#94a9ca"
color7="#a1a5b2"
color8="#6b6e7a"
color9="#adc6ff"
color10="#c1d6ff"
color11="#d9e7ff"
color12="#6994ff"
color13="#8fb2fc"
color14="#c7dcfd"
color15="#f2f3fa"
color232="#000000"
color233="#030304"
color234="#050609"
color235="#08090d"
color236="#0b0c10"
color237="#0d0e13"
color238="#14151c"
color239="#22283b"
color240="#313c5d"
color241="#3f5081"
color242="#4e67a6"
color243="#5d7fce"
color244="#7393e4"
color245="#8fa4e9"
color246="#a8b6ed"
color247="#bfc8f1"
color248="#d6dbf5"
color249="#eceef9"
color250="#f4f5fb"
color251="#f6f7fc"
color252="#f8f9fc"
color253="#fafbfd"
color254="#fdfdfe"
color255="#ffffff"
color160="#0f1015"
color161="#2d2127"
color162="#4c3239"
color163="#6d434d"
color164="#905562"
color165="#b46877"
color166="#cc7d8d"
color167="#d594a1"
color168="#deacb7"
color169="#e6c3cd"
color170="#ecdbe3"
color171="#f2f3fa"
color172="#0f1015"
color173="#212c2a"
color174="#334940"
color175="#466858"
color176="#598971"
color177="#6dab8a"
color178="#83c2a0"
color179="#9accb2"
color180="#b0d6c3"
color181="#c6e0d5"
color182="#dce9e8"
color183="#f2f3fa"
color184="#0f1015"
color185="#201f35"
color186="#302d58"
color187="#3f3c7d"
color188="#4f4ca5"
color189="#5f5dcf"
color190="#7771e6"
color191="#948aeb"
color192="#ada3ef"
color193="#c5bdf3"
color194="#dcd8f7"
color195="#f2f3fa"
color196="#0f1015"
color197="#2a2235"
color198="#463357"
color199="#63467d"
color200="#8359a4"
color201="#a26dce"
color202="#bc82e5"
color203="#c799ea"
color204="#d2afee"
color205="#ddc6f2"
color206="#e8dcf6"
color207="#f2f3fa"
color208="#0f1015"
color209="#2b2b2a"
color210="#484841"
color211="#68675a"
color212="#898773"
color213="#aba98e"
color214="#c2c0a3"
color215="#cccab4"
color216="#d5d4c5"
color217="#dfded7"
color218="#e9e9e8"
color219="#f2f3fa"
color220="#0f1015"
color221="#202b34"
color222="#304857"
color223="#40677d"
color224="#5088a4"
color225="#60a9ce"
color226="#78c1e5"
color227="#93cbe9"
color228="#add5ee"
color229="#c5dff2"
color230="#dce9f6"
color231="#f2f3fa"
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
