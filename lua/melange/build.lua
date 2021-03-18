-- Scripts to compile Lush colors to different targets, including:
    -- Viml
    -- Alacritty
    -- kitty

local uv = vim.loop
local lush = require('lush')
local c = require('melange.colors')

local targets = {}

function targets.alacritty()
    return table.concat({
        "  primary:",
        "    foreground: '" .. c.Normal.fg .. "'",
        "    background: '" .. c.Normal.bg .. "'",
        "  normal:",
        "    white:   '" .. c.Normal.fg .. "'",
        "    black:   '" .. c.Normal.bg .. "'",
        "    red:     '" .. c.Error.fg .. "'",
        "    yellow:  '" .. c.Function.fg .. "'",
        "    green:   '" .. c.PreProc.fg .. "'",        -- teal
        "    cyan:    '" .. c.Type.fg .. "'",
        "    blue:    '" .. c.String.fg .. "'",
        "    magenta: '" .. c.Constant.fg .. "'",
        "  bright:",
        "    white:   '" .. c.MatchParen.fg .. "'",     -- pop
        "    black:   '" .. c.ColorColumn.bg .. "'",    -- overbg
        "    red:     '" .. c.Operator.fg .. "'",
        "    yellow:  '" .. c.Statement.fg .. "'",      -- orange
        "    green:   '" .. c.Question.fg .. "'",
        "    cyan:    '" .. c.Type.fg .. "'",
        "    blue:    '" .. c.String.fg .. "'",
        "    magenta: '" .. c.Number.fg .. "'",         -- purple
    }, "\n")
end

function targets.kitty()
    return table.concat({
        "background " .. c.Normal.bg,
        "foreground " .. c.Normal.fg,

        "cursor " .. c.Normal.fg,
        "url_color " .. c.TSURI.fg,

        "selection_background " .. c.Visual.bg,
        "selection_foreground " .. c.Normal.fg,

        "tab_bar_background " .. c.TabLineFill.bg,
        "active_tab_background " .. c.TabLineSel.bg,
        "active_tab_foreground " .. c.Normal.fg,
        "inactive_tab_background " .. c.TabLine.bg,
        "inactive_tab_foreground " .. c.Normal.fg,

        -- normal
        "color0 " .. c.Normal.bg,
        "color1 " .. c.Error.fg,
        "color2 " .. c.PreProc.fg,
        "color3 " .. c.Function.fg,
        "color4 " .. c.String.fg,
        "color5 " .. c.Constant.fg,
        "color6 " .. c.Type.fg,
        "color7 " .. c.Normal.fg,
        -- bright
        "color8 " .. c.ColorColumn.bg,
        "color9 " .. c.Operator.fg,
        "color10 " .. c.Question.fg,
        "color11 " .. c.Statement.fg,
        "color12 " .. c.String.fg,
        "color13 " .. c.Number.fg,
        "color14 " .. c.Type.fg,
        "color15 " .. c.MatchParen.fg,
        ""
    }, "\n")
end

function targets.viml()
    local parsed = lush(c)
    local compiled = lush.compile(parsed, {force_clean = true })
    table.insert(compiled, 4, "let g:colors_name = 'melange'")
    return table.concat(compiled, '\n')
end

local function build(t, dir)
    local colors = targets[t]()
    local fd = assert(uv.fs_open(dir, 'w', 420))
    uv.fs_write(fd, colors, -1)
    assert(uv.fs_close(fd))
end

return {
    build = build,
}
