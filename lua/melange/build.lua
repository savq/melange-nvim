-- Scripts to compile Lush colors to different targets, including:
    -- Viml
    -- Alacritty

local uv = vim.loop
local lush = require('lush')
local c = require('melange.colors')

local function build_alacritty()
    return table.concat({
        "  primary:",
        "    foreground: '" .. c.Normal.fg .. "'",
        "    background: '" .. c.Normal.bg .. "'",
        "  normal:",
        "    white:   '" .. c.Normal.fg .. "'",
        "    black:   '" .. c.Normal.bg .. "'",
        "    red:     '" .. c.Error.fg .. "'",
        "    yellow:  '" .. c.Function.fg .. "'",
        "    green:   '" .. c.TSKeywordFunction.fg .. "'", -- teal
        "    cyan:    '" .. c.Type.fg .. "'",
        "    blue:    '" .. c.String.fg .. "'",
        "    magenta: '" .. c.Constant.fg .. "'",
        "  bright:",
        "    white:   '" .. c.Search.fg .. "'",             -- pop
        "    black:   '" .. c.Conceal.fg .. "'",            -- faded
        "    red:     '" .. c.Operator.fg .. "'",
        "    yellow:  '" .. c.Statement.fg .. "'",
        "    green:   '" .. c.Question.fg .. "'",
        "    cyan:    '" .. c.Type.fg .. "'",
        "    blue:    '" .. c.String.fg .. "'",
        "    magenta: '" .. c.Number.fg .. "'",           -- purple
    }, "\n")
end

local function build_viml()
    local parsed = lush(c)
    local compiled = lush.compile(parsed, {force_clean = true })
    return table.concat(compiled, '\n')
end

local targets = {
    alacritty = {build = build_alacritty, dir = './term/alacritty.yml'},
    viml      = {build = build_viml, dir = './colors/melange.vim'},
}

local function build(t)
    local target = targets[t]
    local colors = target.build()
    local fd = assert(uv.fs_open(target.dir, 'w', 420))
    uv.fs_write(fd, colors, -1)
    assert(uv.fs_close(fd))
end

return {
    build = build,
}
