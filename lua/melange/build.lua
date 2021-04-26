-- Scripts to compile Lush colors to different targets:
    -- VimL
    -- Alacritty
    -- kitty

local uv = vim.loop
local lush = require('lush')

local targets = {}

function targets.alacritty(c)
    return table.concat({
        "  primary:",
        "    foreground: '" .. c.fg .. "'",
        "    background: '" .. c.bg .. "'",
        "  normal:",
        "    white:   '" .. c.fg     .. "'",
        "    black:   '" .. c.mid    .. "'",
        "    red:     '" .. c.red    .. "'",
        "    yellow:  '" .. c.yellow .. "'",
        "    green:   '" .. c.teal   .. "'",
        "    cyan:    '" .. c.cyan   .. "'",
        "    blue:    '" .. c.blue   .. "'",
        "    magenta: '" .. c.purple .. "'",
        "  bright:",
        "    white:   '" .. c.fg      .. "'",
        "    black:   '" .. c.drop    .. "'",
        "    red:     '" .. c.salmon  .. "'",
        "    yellow:  '" .. c.orange  .. "'",
        "    green:   '" .. c.green   .. "'",
        "    cyan:    '" .. c.cyan    .. "'",
        "    blue:    '" .. c.blue    .. "'",
        "    magenta: '" .. c.magenta .. "'",
    }, "\n")
end

function targets.kitty(c, melange)
    return table.concat({
        "background " .. c.bg,
        "foreground " .. c.fg,
        "cursor "     .. c.fg,
        "url_color "  .. melange.TSURI.fg,

        "selection_background " .. melange.Visual.bg,
        "selection_foreground " .. melange.Normal.fg,

        "tab_bar_background "      .. melange.TabLineFill.bg,
        "active_tab_background "   .. melange.TabLineSel.bg,
        "active_tab_foreground "   .. melange.Normal.fg,
        "inactive_tab_background " .. melange.TabLine.bg,
        "inactive_tab_foreground " .. melange.Normal.fg,

        -- normal
        "color0 " .. c.bg,
        "color1 " .. c.red,
        "color2 " .. c.teal,
        "color3 " .. c.yellow,
        "color4 " .. c.blue,
        "color5 " .. c.purple,
        "color6 " .. c.cyan,
        "color7 " .. c.fg,
        -- bright
        "color8 " .. c.overbg,
        "color9 " .. c.salmon,
        "color10 " .. c.green,
        "color11 " .. c.orange,
        "color12 " .. c.blue,
        "color13 " .. c.purple,
        "color14 " .. c.cyan,
        "color15 " .. c.fg,
        ""
    }, "\n")
end

function targets.viml(_, melange)
    local parsed = lush(melange)
    local compiled = lush.compile(parsed, {force_clean=false})
    for i,s in ipairs(compiled) do
        compiled[i] = s:gsub("%s*blend=NONE", "")    --Remove blend property
    end
    --table.insert(compiled, 4, "let g:colors_name = 'melange'")
    return table.concat(compiled, '\n')
end


local function build(t, file, melange, c)
    local colors = targets[t](c, melange)
    local fd = assert(uv.fs_open(file, 'w', 420))
    uv.fs_write(fd, colors, -1)
    assert(uv.fs_close(fd))
end


local function buildall()
    -- Build dark colorschemes
    vim.o.background = 'dark'
    package.loaded['melange.colors'] = nil
    local melange = require('melange.colors')
    local c = melange.Melange.lush

    build("viml",      "./colors/melange_dark.vim", melange, c)
    build("alacritty", "./term/alacritty_dark.yml", melange, c)
    build("kitty",     "./term/kitty_dark.conf", melange, c)

    -- Build light colorschemes
    vim.o.background = 'light'
    package.loaded['melange.colors'] = nil
    melange = require('melange.colors')
    c = melange.Melange.lush

    build("viml",      "./colors/melange_light.vim", melange, c)
    build("alacritty", "./term/alacritty_light.yml", melange, c)
    build("kitty",     "./term/kitty_light.conf", melange, c)
end

return {
    build = build,
    buildall = buildall,
}
