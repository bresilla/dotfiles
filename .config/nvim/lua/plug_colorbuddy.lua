-- === COLORBUDDY ===
local Color, colors, Group, groups, styles = require("colorbuddy").setup()

function fileToList(file)
    -- see if the file exists
    function file_exists(file)
        local f = io.open(file, "rb")
        if f then f:close() end
        return f ~= nil
    end
    -- get all lines from a file, returns an empty 
    -- list/table if the file does not exist
    if not file_exists(file) then return {} end
    lines = {}
    for line in io.lines(file) do 
        lines[#lines + 1] = line
    end
    return lines
end


function mycolors(theme)

    if (theme == "light") then
        require('colorbuddy').colorscheme('modus-operandi')
    else
        require('colorbuddy').colorscheme('modus-vivendi')
    end

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

    Color.new('ac_d',       rainbow[237+1])
    Color.new('ac_l',       rainbow[250+1])

    Color.new('Red',        rainbow[56+1])
    Color.new('Yellow',     rainbow[104+1])
    Color.new('Blue',       rainbow[80+1])
    Color.new('Green',      rainbow[68+1])

    Color.new('Redish',     rainbow[18+1])
    Color.new('Violetish',  rainbow[42+1])
    Color.new('Orangeish',  rainbow[30+1])

    Color.new('TrueRed',     '#ff0000')
    Color.new('TrueGreen',   '#00ff00')

    -- vim.g.terminal_color_0  = rainbow[0+1]
    -- vim.g.terminal_color_1  = rainbow[1+1]
    -- vim.g.terminal_color_2  = rainbow[2+1]
    -- vim.g.terminal_color_3  = rainbow[3+1]
    -- vim.g.terminal_color_4  = rainbow[4+1]
    -- vim.g.terminal_color_5  = rainbow[5+1]
    -- vim.g.terminal_color_6  = rainbow[6+1]
    -- vim.g.terminal_color_7  = rainbow[7+1]
    -- vim.g.terminal_color_8  = rainbow[8+1]
    -- vim.g.terminal_color_9  = rainbow[9+1]
    -- vim.g.terminal_color_10 = rainbow[10+1]
    -- vim.g.terminal_color_11 = rainbow[11+1]
    -- vim.g.terminal_color_12 = rainbow[12+1]
    -- vim.g.terminal_color_13 = rainbow[13+1]
    -- vim.g.terminal_color_14 = rainbow[14+1]
    -- vim.g.terminal_color_15 = rainbow[15+1]


    -- === HIGHLIGHTS === "
    --background
    Group.new('Error',                  nil,                  nil,                  styles.undercurl)
    Group.new('Normal',                 nil,                  nil)
    Group.new('NormalNC',               nil,                  nil)
    Group.new('Comment',                colors.r8,            nil,                  styles.italic)
    --visual select
    Group.new('Visual',                 nil,                  colors.ac_d,          styles.bold)
    --cursor
    Group.new('CursorLine',             nil,                  colors.r236,          styles.bold)
    Group.new('CursorColumn',           nil,                  colors.r236,          styles.bold)
    Group.new('Cursor',                 colors.r15,           colors.r1)
    --squicky lines "~" hide
    Group.new('EndOfBuffer',            colors.r0,            colors.r0)
    --splits and number backgrounds,
    Group.new('VertSplit',              colors.ac_d,          colors.r0)
    Group.new('foldcolumn',             nil,                  colors.r0)
    Group.new('LineNr',                 colors.ac_l,          colors.r0)
    Group.new('SignColumn',             nil,                  colors.r0)
    Group.new('CursorLineNR',           colors.r1,            colors.r0,            styles.bold)
    --special characters of endline
    Group.new('NonText',                colors.r240,          nil) 
    --completion menu
    Group.new('Pmenu',                  colors.r15,           colors.ac_d)
    Group.new('PmenuSel',               colors.r1,            colors.r236,          styles.bold)
    Group.new('PmenuSbar',              nil,                  colors.r0)
    Group.new('PmenuThumb',             nil,                  colors.r0)
    Group.new('NormalFloat',            colors.r15,           colors.ac_d,          styles.bold)
    --parenthesis
    Group.new('MatchParen',             colors.r0,            colors.r1,            styles.bold)
    -- indentlines
    Group.new('IndentLine',             colors.ac_d,          nil)


    -- === TABS === "
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
    Group.new('DapBreakpointSign',                      colors.TrueRed,       nil)
    Group.new('DapStopSign',                            colors.TrueGreen,     nil)

    -- === SEARCH ===
    Group.new('Search',                     colors.r0,            colors.r1)
    Group.new('HlSearchCur',                colors.r0,            colors.r1)
    Group.new('HlSearchLensCur',            colors.r0,            colors.ac_d)
    Group.new('HlSearchLens',               colors.r0,            colors.ac_d)
    -- Group.new('illuminatedWord',            nil,                  colors.ac_d,            styles.bold)
    Group.new('CursorWord',                 colors.ac_l,          colors.ac_d,            nil)
    Group.new('CursorJump',                 colors.ac_d,          colors.ac_l,            nil)



    -- === GIT & GITGUTTER ===
    Group.new("DiffAdd"    ,                colors.Green,    colors.r0)
    Group.new("DiffChange" ,                colors.Yellow,   colors.r0)
    Group.new("DiffDelete" ,                colors.Red,      colors.r0)
    Group.new("DiffText"   ,                colors.Blue,     colors.r0)
    Group.new('GitGutterAdd',               colors.Green,    colors.r0)
    Group.new('GitGutterChange',            colors.Yellow,   colors.r0)
    Group.new('GitGutterDelete',            colors.Red,      colors.r0)
    Group.new('GitGutterChangeDelete',      colors.Blue,     colors.r0)
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


    -- === TREESITTER ===
    Group.new('TSBoolean',                  colors.r1,      nil,            no)
end


themecolor = fileToList('/home/bresilla/.cache/wal/theme') or "dark"
mycolors(themecolor[1])
