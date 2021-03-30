-- Scripts to compile Lush colors to different targets, including:
    -- VimL
    -- Alacritty
    -- kitty

local uv = vim.loop
local lush = require('lush')
local melange = require('melange.colors')
local c = melange.Melange.lush

local targets = {}

function targets.alacritty()
    return table.concat({
        "  primary:",
        "    foreground: '" .. c.g[6] .. "'",
        "    background: '" .. c.g[1] .. "'",
        "  normal:",
        "    white:   '" .. c.g[6]    .. "'",
        "    black:   '" .. c.g[2]    .. "'",
        "    red:     '" .. c.red     .. "'",
        "    yellow:  '" .. c.yellow  .. "'",
        "    green:   '" .. c.teal    .. "'",
        "    cyan:    '" .. c.cyan    .. "'",
        "    blue:    '" .. c.blue    .. "'",
        "    magenta: '" .. c.purple  .. "'",
        "  bright:",
        "    white:   '" .. c.g[6]    .. "'",
        "    black:   '" .. c.g[3]    .. "'",
        "    red:     '" .. c.salmon  .. "'",
        "    yellow:  '" .. c.orange  .. "'",
        "    green:   '" .. c.green   .. "'",
        "    cyan:    '" .. c.cyan    .. "'",
        "    blue:    '" .. c.blue    .. "'",
        "    magenta: '" .. c.magenta .. "'",
    }, "\n")
end

function targets.kitty()
    return table.concat({
        "background " .. c.g[1],
        "foreground " .. c.g[6],
        "cursor "     .. c.g[6],
        "url_color "  .. melange.TSURI.fg,

        "selection_background " .. melange.Visual.bg,
        "selection_foreground " .. melange.Normal.fg,

        "tab_bar_background "      .. melange.TabLineFill.bg,
        "active_tab_background "   .. melange.TabLineSel.bg,
        "active_tab_foreground "   .. melange.Normal.fg,
        "inactive_tab_background " .. melange.TabLine.bg,
        "inactive_tab_foreground " .. melange.Normal.fg,

        -- normal
        "color0 " .. c.g[1],
        "color1 " .. c.red,
        "color2 " .. c.teal,
        "color3 " .. c.yellow,
        "color4 " .. c.blue,
        "color5 " .. c.purple,
        "color6 " .. c.cyan,
        "color7 " .. c.g[6],
        -- bright
        "color8 " .. c.g[2],
        "color9 " .. c.salmon,
        "color10 " .. c.green,
        "color11 " .. c.orange,
        "color12 " .. c.blue,
        "color13 " .. c.purple,
        "color14 " .. c.cyan,
        "color15 " .. c.g[6],
        ""
    }, "\n")
end

function targets.viml()
    local parsed = lush(melange)
    local compiled = lush.compile(parsed, {force_clean=true})
    for i,s in ipairs(compiled) do
        compiled[i] = s:gsub("%s*blend=NONE", "")    --Remove blend property
    end
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
