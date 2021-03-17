-- Scripts to compile Lush colors to different targets, including:
    -- Viml
    -- Alacritty

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
