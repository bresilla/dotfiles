local Color, colors, Group, groups, styles = require("colorbuddy").setup()

function theme_light()
    bg = "#ffffff"
    fg = "#000000"
    bg_alt = "#f0f0f0"
    fg_alt = "#505050"
    bg_dim = "#f8f8f8"
    fg_dim = "#282828"
    bg_active = "#e0e0e0"
    fg_active = "#191919"
    bg_inactive = "#efedef"
    fg_inactive = "#424242"
    bg_special_cold = "#dde3f4"
    fg_special_cold = "#093060"
    bg_special_mild = "#c4ede0"
    fg_special_mild = "#184034"
    bg_special_warm = "#f0e0d4"
    fg_special_warm = "#5d3026"
    bg_special_calm = "#f8ddea"
    fg_special_calm = "#61284f"
    red = "#a60000"
    green = "#005e00"
    yellow = "#813e00"
    blue = "#0030a6"
    magenta = "#721045"
    cyan = "#00538b"
    red_alt = "#972500"
    green_alt = "#315b00"
    yellow_alt = "#70480f"
    blue_alt = "#223fbf"
    magenta_alt = "#8f0075"
    cyan_alt = "#30517f"
    red_alt_other = "#a0132f"
    green_alt_other = "#145c33"
    yellow_alt_other = "#863927"
    blue_alt_other = "#0000bb"
    magenta_alt_other = "#5317ac"
    cyan_alt_other = "#005a5f"
    red_faint = "#7f1010"
    green_faint = "#104410"
    yellow_faint = "#5f4400"
    blue_faint = "#002f88"
    magenta_faint = "#752f50"
    cyan_faint = "#12506f"
    red_alt_faint = "#702f00"
    green_alt_faint = "#30440f"
    yellow_alt_faint = "#5d5000"
    blue_alt_faint = "#003f78"
    magenta_alt_faint = "#702565"
    cyan_alt_faint = "#354f6f"
    red_alt_other_faint = "#7f002f"
    green_alt_other_faint = "#0f443f"
    yellow_alt_other_faint = "#5e3a20"
    blue_alt_other_faint = "#1f2f6f"
    magenta_alt_other_faint = "#5f3f7f"
    cyan_alt_other_faint = "#2e584f"
    red_nuanced = "#5f0000"
    green_nuanced = "#004000"
    yellow_nuanced = "#3f3000"
    blue_nuanced = "#201f55"
    magenta_nuanced = "#541f4f"
    cyan_nuanced = "#0f3360"
    red_nuanced_bg = "#fff1f0"
    green_nuanced_bg = "#ecf7ed"
    yellow_nuanced_bg = "#fff3da"
    blue_nuanced_bg = "#f3f3ff"
    magenta_nuanced_bg = "#fdf0ff"
    cyan_nuanced_bg = "#ebf6fa"
    red_intense = "#b60000"
    green_intense = "#006800"
    yellow_intense = "#904200"
    blue_intense = "#1111ee"
    magenta_intense = "#7000e0"
    cyan_intense = "#205b93"
    red_subtle_bg = "#f2b0a2"
    green_subtle_bg = "#aecf90"
    yellow_subtle_bg = "#e4c340"
    blue_subtle_bg = "#b5d0ff"
    magenta_subtle_bg = "#f0d3ff"
    cyan_subtle_bg = "#c0efff"
    red_intense_bg = "#ff8892"
    green_intense_bg = "#5ada88"
    yellow_intense_bg = "#f5df23"
    blue_intense_bg = "#6aaeff"
    magenta_intense_bg = "#d5baff"
    cyan_intense_bg = "#42cbd4"
    red_refine_bg = "#ffcccc"
    red_refine_fg = "#780000"
    green_refine_bg = "#aceaac"
    green_refine_fg = "#004c00"
    yellow_refine_bg = "#fff29a"
    yellow_refine_fg = "#604000"
    blue_refine_bg = "#8ac7ff"
    blue_refine_fg = "#002288"
    magenta_refine_bg = "#ffccff"
    magenta_refine_fg = "#770077"
    cyan_refine_bg = "#8eecf4"
    cyan_refine_fg = "#004850"
    red_active = "#930000"
    green_active = "#005300"
    yellow_active = "#703700"
    blue_active = "#0033c0"
    magenta_active = "#6320a0"
    cyan_active = "#004882"
    red_fringe_bg = "#ff9a9a"
    green_fringe_bg = "#86cf86"
    yellow_fringe_bg = "#e0c050"
    blue_fringe_bg = "#82afff"
    magenta_fringe_bg = "#f0a3ff"
    cyan_fringe_bg = "#00d6e0"
end

function theme_dark()
    bg = "#000000"
    fg = "#ffffff"
    bg_alt = "#181a20"
    fg_alt = "#a8a8a8"
    bg_dim = "#110b11"
    fg_dim = "#e0e6f0"
    bg_active = "#2f2f2f"
    fg_active = "#f5f5f5"
    bg_inactive = "#202020"
    fg_inactive = "#bebebe"
    bg_special_cold = "#203448"
    fg_special_cold = "#c6eaff"
    bg_special_mild = "#00322e"
    fg_special_mild = "#bfebe0"
    bg_special_warm = "#382f27"
    fg_special_warm = "#f8dec0"
    bg_special_calm = "#392a48"
    fg_special_calm = "#fbd6f4"
    red = "#ff8059"
    green = "#44bc44"
    yellow = "#eecc00"
    blue = "#29aeff"
    magenta = "#feacd0"
    cyan = "#00d3d0"
    red_alt = "#f4923b"
    green_alt = "#80d200"
    yellow_alt = "#cfdf30"
    blue_alt = "#72a4ff"
    magenta_alt = "#f78fe7"
    cyan_alt = "#4ae8fc"
    red_alt_other = "#ff9977"
    green_alt_other = "#00cd68"
    yellow_alt_other = "#f0ce43"
    blue_alt_other = "#00bdfa"
    magenta_alt_other = "#b6a0ff"
    cyan_alt_other = "#6ae4b9"
    red_faint = "#ffa0a0"
    green_faint = "#88cf88"
    yellow_faint = "#d2b580"
    blue_faint = "#92baff"
    magenta_faint = "#e0b2d6"
    cyan_faint = "#a0bfdf"
    red_alt_faint = "#f5aa80"
    green_alt_faint = "#a8cf88"
    yellow_alt_faint = "#cabf77"
    blue_alt_faint = "#a4b0ff"
    magenta_alt_faint = "#ef9fe4"
    cyan_alt_faint = "#90c4ed"
    red_alt_other_faint = "#ff9fbf"
    green_alt_other_faint = "#88cfaf"
    yellow_alt_other_faint = "#d0ba95"
    blue_alt_other_faint = "#8fc5ff"
    magenta_alt_other_faint = "#d0b4ff"
    cyan_alt_other_faint = "#a4d0bb"
    red_nuanced = "#ffcccc"
    green_nuanced = "#b8e2b8"
    yellow_nuanced = "#dfdfb0"
    blue_nuanced = "#bfd9ff"
    magenta_nuanced = "#e5cfef"
    cyan_nuanced = "#a8e5e5"
    red_nuanced_bg = "#2c0614"
    green_nuanced_bg = "#001904"
    yellow_nuanced_bg = "#221000"
    blue_nuanced_bg = "#0f0e39"
    magenta_nuanced_bg = "#230631"
    cyan_nuanced_bg = "#041529"
    red_intense = "#fb6859"
    green_intense = "#00fc50"
    yellow_intense = "#ffdd00"
    blue_intense = "#00a2ff"
    magenta_intense = "#ff8bd4"
    cyan_intense = "#30ffc0"
    red_subtle_bg = "#762422"
    green_subtle_bg = "#2f4a00"
    yellow_subtle_bg = "#604200"
    blue_subtle_bg = "#10387c"
    magenta_subtle_bg = "#49366e"
    cyan_subtle_bg = "#00415e"
    red_intense_bg = "#a4202a"
    green_intense_bg = "#006800"
    yellow_intense_bg = "#874900"
    blue_intense_bg = "#2a40b8"
    magenta_intense_bg = "#7042a2"
    cyan_intense_bg = "#005f88"
    red_refine_bg = "#77002a"
    red_refine_fg = "#ffb9ab"
    green_refine_bg = "#00422a"
    green_refine_fg = "#9ff0cf"
    yellow_refine_bg = "#693200"
    yellow_refine_fg = "#e2d980"
    blue_refine_bg = "#242679"
    blue_refine_fg = "#8ec6ff"
    magenta_refine_bg = "#71206a"
    magenta_refine_fg = "#ffcaf0"
    cyan_refine_bg = "#004065"
    cyan_refine_fg = "#8ae4f2"
    red_active = "#ffa49e"
    green_active = "#70e030"
    yellow_active = "#efdf00"
    blue_active = "#00ccff"
    magenta_active = "#d0acff"
    cyan_active = "#00ddc0"
    red_fringe_bg = "#8f0040"
    green_fringe_bg = "#006000"
    yellow_fringe_bg = "#6f4a00"
    blue_fringe_bg = "#3a30ab"
    magenta_fringe_bg = "#692089"
    cyan_fringe_bg = "#0068a0"
end


function named_colors()
    Color.new("bg"     , bg)
    Color.new("fg"     , fg)
    Color.new("bg_alt" , bg_alt)
    Color.new("fg_alt" , fg_alt)
    Color.new("bg_dim" , bg_dim)
    Color.new("fg_dim" , fg_dim)
    Color.new("bg_active"   , bg_active)
    Color.new("fg_active"   , fg_active)
    Color.new("bg_inactive" , bg_inactive)
    Color.new("fg_inactive" , fg_inactive)
    Color.new("bg_special_cold" , bg_special_cold)
    Color.new("fg_special_cold" , fg_special_cold)
    Color.new("bg_special_mild" , bg_special_mild)
    Color.new("fg_special_mild" , fg_special_mild)
    Color.new("bg_special_warm" , bg_special_warm)
    Color.new("fg_special_warm" , fg_special_warm)
    Color.new("bg_special_calm" , bg_special_calm)
    Color.new("fg_special_calm" , fg_special_calm)
    Color.new("red"     , red)
    Color.new("green"   , green)
    Color.new("yellow"  , yellow)
    Color.new("blue"    , blue)
    Color.new("magenta" , magenta)
    Color.new("cyan"    , cyan)
    Color.new("red_alt"     , red_alt)
    Color.new("green_alt"   , green_alt)
    Color.new("yellow_alt"  , yellow_alt)
    Color.new("blue_alt"    , blue_alt)
    Color.new("magenta_alt" , magenta_alt)
    Color.new("cyan_alt"    , cyan_alt)
    Color.new("red_alt_other"     , red_alt_other)
    Color.new("green_alt_other"   , green_alt_other)
    Color.new("yellow_alt_other"  , yellow_alt_other)
    Color.new("blue_alt_other"    , blue_alt_other)
    Color.new("magenta_alt_other" , magenta_alt_other)
    Color.new("cyan_alt_other"    , cyan_alt_other)
    Color.new("red_faint"     , red_faint)
    Color.new("green_faint"   , green_faint)
    Color.new("yellow_faint"  , yellow_faint)
    Color.new("blue_faint"    , blue_faint)
    Color.new("magenta_faint" , magenta_faint)
    Color.new("cyan_faint"    , cyan_faint)
    Color.new("red_alt_faint"     , red_alt_faint)
    Color.new("green_alt_faint"   , green_alt_faint)
    Color.new("yellow_alt_faint"  , yellow_alt_faint)
    Color.new("blue_alt_faint"    , blue_alt_faint)
    Color.new("magenta_alt_faint" , magenta_alt_faint)
    Color.new("cyan_alt_faint"    , cyan_alt_faint)
    Color.new("red_alt_other_faint"     , red_alt_other_faint)
    Color.new("green_alt_other_faint"   , green_alt_other_faint)
    Color.new("yellow_alt_other_faint"  , yellow_alt_other_faint)
    Color.new("blue_alt_other_faint"    , blue_alt_other_faint)
    Color.new("magenta_alt_other_faint" , magenta_alt_other_faint)
    Color.new("cyan_alt_other_faint"    , cyan_alt_other_faint)
    Color.new("red_nuanced"     , red_nuanced)
    Color.new("green_nuanced"   , green_nuanced)
    Color.new("yellow_nuanced"  , yellow_nuanced)
    Color.new("blue_nuanced"    , blue_nuanced)
    Color.new("magenta_nuanced" , magenta_nuanced)
    Color.new("cyan_nuanced"    , cyan_nuanced)
    Color.new("red_nuanced_bg"     , red_nuanced_bg)
    Color.new("green_nuanced_bg"   , green_nuanced_bg)
    Color.new("yellow_nuanced_bg"  , yellow_nuanced_bg)
    Color.new("blue_nuanced_bg"    , blue_nuanced_bg)
    Color.new("magenta_nuanced_bg" , magenta_nuanced_bg)
    Color.new("cyan_nuanced_bg"    , cyan_nuanced_bg)
    Color.new("red_intense"     , red_intense)
    Color.new("green_intense"   , green_intense)
    Color.new("yellow_intense"  , yellow_intense)
    Color.new("blue_intense"    , blue_intense)
    Color.new("magenta_intense" , magenta_intense)
    Color.new("cyan_intense"    , cyan_intense)
    Color.new("red_subtle_bg"     , red_subtle_bg)
    Color.new("green_subtle_bg"   , green_subtle_bg)
    Color.new("yellow_subtle_bg"  , yellow_subtle_bg)
    Color.new("blue_subtle_bg"    , blue_subtle_bg)
    Color.new("magenta_subtle_bg" , magenta_subtle_bg)
    Color.new("cyan_subtle_bg"    , cyan_subtle_bg)
    Color.new("red_intense_bg"     , red_intense_bg)
    Color.new("green_intense_bg"   , green_intense_bg)
    Color.new("yellow_intense_bg"  , yellow_intense_bg)
    Color.new("blue_intense_bg"    , blue_intense_bg)
    Color.new("magenta_intense_bg" , magenta_intense_bg)
    Color.new("cyan_intense_bg"    , cyan_intense_bg)
    Color.new("red_refine_bg"     , red_refine_bg)
    Color.new("red_refine_fg"     , red_refine_fg)
    Color.new("green_refine_bg"   , green_refine_bg)
    Color.new("green_refine_fg"   , green_refine_fg)
    Color.new("yellow_refine_bg"  , yellow_refine_bg)
    Color.new("yellow_refine_fg"  , yellow_refine_fg)
    Color.new("blue_refine_bg"    , blue_refine_bg)
    Color.new("blue_refine_fg"    , blue_refine_fg)
    Color.new("magenta_refine_bg" , magenta_refine_bg)
    Color.new("magenta_refine_fg" , magenta_refine_fg)
    Color.new("cyan_refine_bg"    , cyan_refine_bg)
    Color.new("cyan_refine_fg"    , cyan_refine_fg)
    Color.new("red_active"     , red_active)
    Color.new("green_active"   , green_active)
    Color.new("yellow_active"  , yellow_active)
    Color.new("blue_active"    , blue_active)
    Color.new("magenta_active" , magenta_active)
    Color.new("cyan_active"    , cyan_active)
    Color.new("red_fringe_bg"     , red_fringe_bg)
    Color.new("green_fringe_bg"   , green_fringe_bg)
    Color.new("yellow_fringe_bg"  , yellow_fringe_bg)
    Color.new("blue_fringe_bg"    , blue_fringe_bg)
    Color.new("magenta_fringe_bg" , magenta_fringe_bg)
    Color.new("cyan_fringe_bg"    , cyan_fringe_bg)
end

function file_exists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
end

function fileToList(file)
    lines = {}
    if file_exists(file) then
        for line in io.lines(file) do
            lines[#lines + 1] = line
        end
    end
    return lines
end

function lule_colors()
    rainbow = fileToList('/home/bresilla/.cache/wal/colors')
    Color.new('r0',         rainbow[0+1])
    Color.new('r1',         rainbow[1+1])
    Color.new('r2',         rainbow[2+1])
    Color.new('r3',         rainbow[3+1])
    Color.new('r4',         rainbow[4+1])
    Color.new('r5',         rainbow[5+1])
    Color.new('r6',         rainbow[6+1])
    Color.new('r7',         rainbow[7+1])
    Color.new('r8',         rainbow[8+1])
    Color.new('r9',         rainbow[9+1])
    Color.new('r10',        rainbow[10+1])
    Color.new('r11',        rainbow[11+1])
    Color.new('r12',        rainbow[12+1])
    Color.new('r13',        rainbow[13+1])
    Color.new('r14',        rainbow[14+1])
    Color.new('r15',        rainbow[15+1])
    Color.new('r232',       rainbow[232+1])
    Color.new('r233',       rainbow[233+1])
    Color.new('r234',       rainbow[234+1])
    Color.new('r235',       rainbow[235+1])
    Color.new('r236',       rainbow[236+1])
    Color.new('r237',       rainbow[237+1])
    Color.new('r238',       rainbow[238+1])
    Color.new('r239',       rainbow[239+1])
    Color.new('r240',       rainbow[240+1])
    Color.new('r241',       rainbow[241+1])
    Color.new('r242',       rainbow[242+1])
    Color.new('r243',       rainbow[243+1])
    Color.new('r244',       rainbow[244+1])
    Color.new('r245',       rainbow[245+1])
    Color.new('r246',       rainbow[246+1])
    Color.new('r247',       rainbow[247+1])
    Color.new('r248',       rainbow[248+1])
    Color.new('r249',       rainbow[249+1])
    Color.new('r250',       rainbow[250+1])
    Color.new('r251',       rainbow[251+1])
    Color.new('r252',       rainbow[252+1])
    Color.new('r253',       rainbow[253+1])
    Color.new('r254',       rainbow[253+1])
    Color.new('r255',       rainbow[255+1])
    Color.new('Red',        rainbow[56+1])
    Color.new('Yellow',     rainbow[104+1])
    Color.new('Blue',       rainbow[80+1])
    Color.new('Green',      rainbow[68+1])
    Color.new('Redish',     rainbow[18+1])
    Color.new('Violetish',  rainbow[42+1])
    Color.new('Orangeish',  rainbow[30+1])
    Color.new('ac_d',       rainbow[237+1])
    Color.new('ac_l',       rainbow[250+1])
end


function define_groups()
    -- === BACKGROUND && CURSOR === "
    Group.new('Normal',                 nil,                  nil)
    Group.new('NormalNC',               nil,                  nil)
    Group.new('Folded'         , colors.fg_special_mild , colors.bg_special_mild     , styles.none)
    Group.new('Error',                  nil,                  nil,                  styles.undercurl)
    Group.new('ErrorMsg'       , colors.fg              , colors.red_intense_bg)
    Group.new('Comment',                colors.r8,            nil,                  styles.italic)
    Group.new('Conceal'        , colors.fg_special_warm , colors.bg_dim              , styles.bold)
    Group.new('Cursor',                 colors.r15,           colors.r1)
    Group.new('CursorLine',             nil,                  colors.r236,          styles.bold)
    Group.new('CursorColumn',           nil,                  colors.r236,          styles.bold)
    Group.new('Visual',                 nil,                  colors.ac_d,          styles.bold)


    Group.new('ToggleTermBack',         nil,                  colors.r236)
    Group.new('ToggleTermBorder',       colors.r1,            colors.r236)

    -- === SPECAL CHARACTER === "
    --squicky lines "~" hide
    Group.new('EndOfBuffer',            colors.r0,            colors.r0)
    --special characters of endline
    Group.new('NonText',                colors.r240,          nil) 
    --other
    Group.new('Whitespace'     , colors.fg              , colors.none                , styles.bold)
    Group.new("Define"         , colors.fg              , colors.none                , styles.NONE)
    Group.new("Delimiter"      , colors.fg              , colors.none                , styles.NONE)
    Group.new('Float'          , colors.fg              , colors.none)
    Group.new("Special"        , colors.fg              , colors.none                , styles.NONE)
    Group.new("SpecialComment" , colors.fg_alt          , colors.none                , styles.NONE)
    Group.new("Title"          , colors.fg_special_cold , colors.none                , styles.bold)


    -- === SPLITS AND NUMBERS === "
    Group.new('VertSplit',              colors.ac_d,          colors.r0)
    Group.new('foldcolumn',             nil,                  colors.r0)
    Group.new('LineNr',                 colors.ac_l,          colors.r0)
    Group.new('SignColumn',             nil,                  colors.r0)
    Group.new('CursorLineNR',           colors.r1,            colors.r0,            styles.bold)


    -- === COMPLETION MENU === "
    Group.new('Pmenu',                  colors.r15,           colors.ac_d)
    Group.new('PmenuSel',               colors.r1,            colors.r236,          styles.bold)
    Group.new('PmenuSbar',              nil,                  colors.r0)
    Group.new('PmenuThumb',             nil,                  colors.r0)
    Group.new('NormalFloat',            colors.r15,           colors.ac_d,          styles.bold)


    -- === PARENTHESES === "
    Group.new('MatchParen',             colors.r0,            colors.r1,            styles.bold)
    Group.new('Number'     ,            colors.fg     ,       colors.none)
    Group.new("Operator"   ,            groups.Normal ,       colors.none            , styles.NONE)


    -- === NVIM-TREE === "
    Group.new('NvimTreeNormal',         nil,                  colors.ac_d)
    Group.new('NvimTreeEndOfBuffer',    colors.ac_d,            colors.ac_d)
    Group.new('NvimTreeVertSplit',      colors.ac_d,          colors.ac_d)
    Group.new('NvimTreeStatusLine',     colors.ac_d,          colors.ac_d)
    Group.new('NvimTreeCursorLine',     nil,                  colors.r0,            styles.bold)


    -- === INDENTATIONS === "
    Group.new('IndentLine',             colors.ac_d,          nil)
    Group.new('IndentOdd',              colors.ac_d,                  colors.r0)
    Group.new('IndentEven',             colors.ac_d,                  colors.r236)

    -- === TABS === "
    Group.new('TabLine'        , colors.fg_dim          , colors.fg_inactive)
    Group.new('TabLineSel'     , colors.fg              , colors.bg_alt)
    Group.new('TabLineFill',            colors.r1,            colors.ac_d)
    Group.new('BufferCurrent',          colors.r1,            colors.r0,            styles.bold)
    Group.new('BufferCurrentMod',       colors.r1,            colors.r0)
    Group.new('BufferCurrentSign',      colors.r0,            colors.r0)
    Group.new('BufferCurrentTarget',    colors.r15,           colors.r0)
    Group.new('BufferVisible',          colors.r15,            colors.r236,          styles.bold)
    Group.new('BufferVisibleMod',       colors.r0,            colors.r236)
    Group.new('BufferVisibleSign',      colors.r0,            colors.r236)
    Group.new('BufferVisibleTarget',    colors.r0,            colors.r236)
    Group.new('BufferInactive',         colors.r15,            colors.ac_d)
    Group.new('BufferInactiveMod',      colors.r0,            colors.ac_d)
    Group.new('BufferInactiveSign',     colors.r0,            colors.ac_d)
    Group.new('BufferInactiveTarget',   colors.r0,            colors.ac_d)
    Group.new('BufferTabpages',         colors.r15,            colors.ac_d)
    Group.new('BufferTabpageFill',      colors.r0,            colors.ac_d)


    -- === STATUS-LINE === "
    Group.new('StatusLine',             colors.ac_l,          colors.ac_d)
    Group.new('StatusLineNC',           colors.r0,            colors.ac_d)
    --express_line
    Group.new('ElNormal',               colors.r1,            colors.r0,            styles.bold)
    Group.new('ElInsert',               colors.r0,            colors.r1,            styles.bold)
    Group.new('ElFileType',             colors.r1,            colors.ac_d,          styles.bold)


    -- === WHICH KEY === "
    -- Group.new('WhichKey'          Operator)
    -- Group.new('WhichKeySeperator' DiffAdded)
    -- Group.new('WhichKeyGroup',     Identifier)
    -- Group.new('WhichKeyDesc'      Function)
    -- Group.new('WhichKeyFloating'  Pmenu)v


    -- === DIAGNOSTICS === "
    Group.new('LspDiagnosticsVirtualTextSpace',         colors.r232,          colors.r0,            styles.italic)
    Group.new('LspDiagnosticsVirtualTextError',         colors.Redish,        colors.r232,          styles.italic)
    Group.new('LspDiagnosticsSignError',                colors.Redish,        colors.r0,            styles.bold)
    Group.new('LspDiagnosticsFloatingError',            colors.Redish,        nil)
    -- Group.new('LspDiagnosticsUnderlineError',           nil,                  nil,                  styles.undercurl) 
    Group.new('LspDiagnosticsVirtualTextWarning',       colors.Orangeish,     colors.r232,          styles.italic)
    Group.new('LspDiagnosticsSignWarning',              colors.Orangeish,     colors.r0,            styles.bold)
    Group.new('LspDiagnosticsFloatingWarning',          colors.Orangeish,     nil)
    -- Group.new('LspDiagnosticsUnderlineWarning',         nil,                  nil,                  styles.undercurl) 
    Group.new('LspDiagnosticsVirtualTextInformation',   colors.Violetish,     colors.r232,          styles.italic)
    Group.new('LspDiagnosticsSignInformation',          colors.Violetish,     colors.r0,            styles.bold)
    Group.new('LspDiagnosticsFloatingInformation',      colors.Violetish,     nil)
    -- Group.new('LspDiagnosticsUnderlineInformation',     nil,                  nil,                  styles.undercurl) 
    Group.new('LspDiagnosticsVirtualTextHint',          colors.Violetish,     colors.r232,          styles.italic)
    Group.new('LspDiagnosticsSignHint',                 colors.Violetish,     colors.r0,            styles.bold)
    Group.new('LspDiagnosticsFloatingHint',             colors.Violetish,     nil)
    -- Group.new('LspDiagnosticsUnderlineHint',            nil,                  nil,                  styles.undercurl) 
    --
    Group.new('DapBreakpointSign',                      colors.Red,       nil)
    Group.new('DapStopSign',                            colors.Green,     nil)


    -- === SEARCH ===
    Group.new('Search',                     colors.r0,            colors.r1)
    Group.new('HlSearchCur',                colors.r0,            colors.r1)
    Group.new('HlSearchLensCur',            colors.r0,            colors.ac_d)
    Group.new('HlSearchLens',               colors.r0,            colors.ac_d)
    -- Group.new('illuminatedWord',            nil,                  colors.ac_d,            styles.bold)
    Group.new('CursorWord',                 colors.ac_l,          colors.ac_d,            nil)
    Group.new('CursorJump',                 colors.ac_d,          colors.ac_l,            nil)



    -- === GIT & GITSIGNS ===
    Group.new("DiffAdd"    ,                colors.Green,    colors.r0)
    Group.new("DiffChange" ,                colors.Yellow,   colors.r0)
    Group.new("DiffDelete" ,                colors.Red,      colors.r0)
    Group.new("DiffText"   ,                colors.Blue,     colors.r0)
    Group.new('GitSignsAdd',               colors.Green,    colors.r0)
    Group.new('GitSignsChange',            colors.Yellow,   colors.r0)
    Group.new('GitSignsDelete',            colors.Red,      colors.r0)
    Group.new('GitSignsChangeDelete',      colors.Blue,     colors.r0)
    Group.new('GitBlameVirt',               colors.r0,       colors.ac_d,       styles.italic + styles.bold)


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


    -- === DASHBOARD ===
    Group.new('DashboardHeader',            colors.r1,       nil)
    Group.new('DashboardCenter',            colors.ac_l,     nil)
    Group.new('DashboardFooter',            colors.r1,       nil)

    -- === COMPLETION ===
    Group.new('CmpItemKindText',            colors.r0,             colors.orange)
    Group.new('CmpItemKindMethod',          colors.r0,             colors.blue)
    Group.new('CmpItemKindFunction',        colors.r0,             colors.blue)
    Group.new('CmpItemKindConstructor',     colors.r0,             colors.yellow)
    Group.new('CmpItemKindField',           colors.r0,             colors.blue)
    Group.new('CmpItemKindClass',           colors.r0,             colors.yellow)
    Group.new('CmpItemKindInterface',       colors.r0,             colors.yellow)
    Group.new('CmpItemKindModule',          colors.r0,             colors.blue)
    Group.new('CmpItemKindProperty',        colors.r0,             colors.blue)
    Group.new('CmpItemKindValue',           colors.r0,             colors.orange)
    Group.new('CmpItemKindVariable',        colors.r0,             colors.orange)
    Group.new('CmpItemKindEnum',            colors.r0,             colors.yellow)
    Group.new('CmpItemKindKeyword',         colors.r0,             colors.purple)
    Group.new('CmpItemKindSnippet',         colors.r0,             colors.green)
    Group.new('CmpItemKindFile',            colors.r0,             colors.blue)
    Group.new('CmpItemKindEnumMember',      colors.r0,             colors.cyan)
    Group.new('CmpItemKindConstant',        colors.r0,             colors.orange)
    Group.new('CmpItemKindStruct',          colors.r0,             colors.yellow)
    Group.new('CmpItemKindTypeParameter',   colors.r0,             colors.yellow)


    -- === SYNTAX ===
    Group.new('Function'       , colors.magenta_faint           , colors.none)
    Group.new('Warning'        , colors.yellow_alt_faint        , colors.none)
    Group.new('Boolean'        , colors.blue_faint              , colors.none                , styles.bold)
    Group.new('Character'      , colors.blue_alt_faint          , colors.none)
    Group.new('Conditional'    , colors.magenta_alt_other_faint , colors.none)
    Group.new('Constant'       , colors.blue_alt_other_faint    , colors.none)
    Group.new("Directory"      , colors.blue_faint              , colors.none                , styles.none)
    Group.new("Exception"      , colors.magenta_alt_other_faint , colors.none                , styles.NONE)
    Group.new("Identifier"     , colors.blue_alt_other_faint    , colors.none                , styles.NONE)
    Group.new("Include"        , colors.red_alt_other_faint     , colors.none                , styles.NONE)
    Group.new('Keyword'        , colors.magenta_alt_other_faint , colors.none)
    Group.new("Label"          , colors.cyan_faint              , colors.none                , styles.NONE)
    Group.new('PreProc'        , colors.red_alt_other_faint     , colors.none)
    Group.new("Repeat"         , colors.magenta_alt_other_faint , colors.none                , styles.NONE)
    Group.new("SpecialChar"    , colors.blue_alt_other_faint    , colors.none                , styles.NONE)
    Group.new("Statement"      , colors.magenta_alt_other_faint , colors.none                , styles.NONE)
    Group.new("StorageClass"   , colors.magenta_alt_other_faint , colors.none                , styles.NONE)
    Group.new("String"         , colors.blue_alt_faint          , colors.none                , styles.NONE)
    Group.new("Structure"      , colors.magenta_alt_other_faint , colors.none                , styles.NONE)
    Group.new("Tag"            , colors.magenta_active          , colors.none                , styles.NONE)
    Group.new("Todo"           , colors.magenta_faint           , colors.none                , styles.bold)
    Group.new("Type"           , colors.magenta_alt_faint       , colors.none                , styles.NONE)
    Group.new("Typedef"        , colors.magenta_alt_faint       , colors.none                , styles.NONE)
    Group.new("Underlined"     , colors.none                    , colors.blue_nuanced_bg     , styles.underline)
    Group.new('Type'           , colors.magenta_alt_faint       , colors.none)


    -- === TREESITTER ===
    Group.new("TSError"          , groups.Error                    , groups.Error     , styles.bold)
    Group.new("TSPunctDelimiter" , colors.fg                       , colors.bg)
    Group.new("TSPunctBracket"   , colors.fg                       , colors.bg)
    Group.new("TSConstant"       , groups.Constant                 , groups.Constant  , groups.Constant)
    Group.new("TSConstBuiltin"   , groups.Constant                 , groups.Constant  , groups.Constant)
    Group.new("TSConstMacro"     , groups.Constant                 , groups.Constant  , groups.Constant)
    Group.new("TSString"         , groups.String                   , groups.String    , groups.String)
    Group.new("TSStringRegex"    , colors.red_refine_fg            , colors.none)
    Group.new("TSStringEscape"   , colors.yellow_active            , colors.none)
    Group.new("TSCharacter"      , groups.Character                , groups.Character , groups.Character)
    Group.new("TSNumber"         , groups.Number                   , groups.Number    , groups.Number)
    Group.new('TSBoolean',                  colors.r1,      nil,            no)
    Group.new("TSFloat"          , groups.Number                   , groups.Number    , groups.Number)
    Group.new("TSFunction"       , groups.Function                 , groups.Function  , groups.Function)
    Group.new("TSFuncBuiltin"    , groups.Function                 , groups.Function  , groups.Function)
    Group.new("TSFuncMacro"      , groups.Function                 , groups.Function  , groups.Function)

    Group.new("TSParameter"       , colors.cyan_faint              , colors.none  , styles.none)
    Group.new("TSConstructor"     , colors.magenta_alt_faint       , colors.none)
    Group.new("TSKeywordFunction" , colors.magenta_alt_faint       , colors.none  , styles.none)
    Group.new("TSLiteral"         , colors.blue_alt_faint          , colors.none  , styles.bold)
    Group.new("TSVariable"        , colors.cyan_faint              , colors.none  , styles.none)
    Group.new("TSVariableBuiltin" , colors.magenta_alt_other_faint , colors.none  , styles.none)

    Group.new("TSParameterReference" , groups.TSParameter     , groups.TSParameter , groups.TSParameter)
    Group.new("TSMethod"             , groups.Function        , groups.Function    , groups.Function)
    Group.new("TSConditional"        , groups.Conditional     , groups.Conditional , groups.Conditional)
    Group.new("TSRepeat"             , groups.Repeat          , groups.Repeat      , groups.Repeat)
    Group.new("TSLabel"              , groups.Label           , groups.Label       , groups.Label)
    Group.new("TSOperator"           , groups.Operator        , groups.Operator    , groups.Operator)
    Group.new("TSKeyword"            , groups.Keyword         , groups.Keyword     , groups.Keyword)
    Group.new("TSException"          , groups.Exception       , groups.Exception   , groups.Exception)
    Group.new("TSType"               , groups.Type            , groups.Type        , styles.none)
    Group.new("TSTypeBuiltin"        , groups.Type            , groups.Type        , styles.none)
    Group.new("TSStructure"          , groups.Structure       , groups.Structure   , groups.Structure)
    Group.new("TSInclude"            , groups.Include         , groups.Include     , groups.Include)
    Group.new("TSAnnotation"         , colors.blue_nuanced_bg , colors.none)
    Group.new("TSStrong"             , colors.fg              , colors.bg          , styles.bold)
    Group.new("TSTitle"              , colors.cyan_nuanced    , colors.none)


    -- === SPELLING ===
    Group.new("SpellBad" , colors.Red , colors.none , styles.none)
    Group.new("SpellCap" , colors.Red , colors.none , styles.none)

end


function mycolors(theme)
    if (theme == "light") then
        theme_light()
    else
        theme_dark()
    end
    named_colors()
    lule_colors()
    define_groups()
end


themecolor = fileToList('/home/bresilla/.cache/wal/theme')[1] or "dark"
mycolors(themecolor)
