foreground="#f9eefd"
background="#140c16"
cursor="#b742fa"
color0="#140c16"
color1="#b742fa"
color2="#ed68e2"
color3="#f38ef5"
color4="#8934dd"
color5="#ea59bc"
color6="#cb58ce"
color7="#ae9bb7"
color8="#77657f"
color9="#dda3ff"
color10="#ffbcf9"
color11="#ffeaff"
color12="#bb78ff"
color13="#ffaae4"
color14="#fb8dff"
color15="#f9eefd"
color232="#000000"
color233="#040205"
color234="#080409"
color235="#0c060d"
color236="#0f0811"
color237="#120b14"
color238="#1a111e"
color239="#331b40"
color240="#4e2465"
color241="#6b2d8d"
color242="#8836b7"
color243="#a73ee3"
color244="#be55fb"
color245="#cd75fc"
color246="#da93fd"
color247="#e4affd"
color248="#eecbfd"
color249="#f7e7fd"
color250="#faf0fd"
color251="#fbf3fe"
color252="#fcf6fe"
color253="#fdf9fe"
color254="#fefcff"
color255="#ffffff"
color160="#140c16"
color161="#341929"
color162="#57223e"
color163="#7c2b53"
color164="#a3336b"
color165="#cc3a83"
color166="#e55299"
color167="#ec76ab"
color168="#f295c0"
color169="#f6b3d4"
color170="#f8d1e8"
color171="#f9eefd"
color172="#140c16"
color173="#2b252d"
color174="#443f45"
color175="#5e5a60"
color176="#7a767b"
color177="#979498"
color178="#adaaaf"
color179="#bcb7be"
color180="#cbc4cd"
color181="#dad2dd"
color182="#e9e0ed"
color183="#f9eefd"
color184="#140c16"
color185="#281738"
color186="#3d1f5d"
color187="#522784"
color188="#682eae"
color189="#7c35da"
color190="#974cf3"
color191="#ad6ef6"
color192="#c38ef8"
color193="#d6aefa"
color194="#e8cefc"
color195="#f9eefd"
color196="#140c16"
color197="#321a37"
color198="#52255c"
color199="#742f84"
color200="#9838ae"
color201="#be42da"
color202="#d65af2"
color203="#e17cf5"
color204="#e89af8"
color205="#efb6fa"
color206="#f5d2fb"
color207="#f9eefd"
color208="#140c16"
color209="#33242d"
color210="#563c46"
color211="#7b5561"
color212="#a2707d"
color213="#cb8c9b"
color214="#e3a2b1"
color215="#e8b1c0"
color216="#edc0cf"
color217="#f1d0de"
color218="#f5dfed"
color219="#f9eefd"
color220="#140c16"
color221="#2a2537"
color222="#413d5c"
color223="#5a5884"
color224="#7474ae"
color225="#8f92da"
color226="#a6a6f2"
color227="#b7b4f5"
color228="#c8c2f7"
color229="#d9d1f9"
color230="#e9dffb"
color231="#f9eefd"
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

Color.new('Red',        color166)
Color.new('Yellow',     color214)
Color.new('Blue',       color190)
Color.new('Green',      color178)

Color.new('Redish',     color163)
Color.new('Violetish',  color198)
Color.new('Orangeish',  color211)
Color.new('Cyanish',    color223)


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
Group.new('VertSplit',              colors.ac_d,          colors.r0)
Group.new('foldcolumn',             nil,                  colors.r0)
Group.new('LineNr',                 colors.ac_l,          colors.r0)
Group.new('SignColumn',             nil,                  colors.r0)
Group.new('CursorLineNR',           colors.r1,            colors.r0,            styles.bold)
--special characters of endline
Group.new('NonText',                colors.r240,          colors.r0) 
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
