-- Scripts to compile Lush colors to different targets:
    -- VimL
    -- Alacritty
    -- kitty

vim.cmd('packadd lush.nvim')

local uv = vim.loop
local lush = require('lush')

local targets = {}

function targets.alacritty(colorscheme)
    local c = colorscheme.Melange.lush
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

function targets.kitty(colorscheme)
    local c = colorscheme.Melange.lush
    return table.concat({
        "background " .. c.bg,
        "foreground " .. c.fg,
        "cursor "     .. c.fg,
        "url_color "  .. colorscheme.TSURI.fg,

        "selection_background " .. colorscheme.Visual.bg,
        "selection_foreground " .. c.fg,

        "tab_bar_background "      .. colorscheme.TabLineFill.bg,
        "active_tab_background "   .. colorscheme.TabLineSel.bg,
        "active_tab_foreground "   .. c.fg,
        "inactive_tab_background " .. colorscheme.TabLine.bg,
        "inactive_tab_foreground " .. c.fg,

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

local viml_template = [[
hi clear
syntax reset
set t_Co=256
let g:colors_name = 'melange'
if &background == 'dark'
%s
else
%s
endif
]]

function targets.viml(colorscheme)
    local parsed = lush(colorscheme)
    local compiled = lush.compile(parsed, {force_clean=false})
    for i,s in ipairs(compiled) do
        compiled[i] = s:gsub("%s*blend=NONE", "")    --Remove blend property
    end
    return table.concat(vim.fn.sort(compiled), '\n') --Sort items for better diffs
end

local function write_file(file, buf)
    local fd = assert(uv.fs_open(file, 'w', 420))
    uv.fs_write(fd, buf, -1)
    assert(uv.fs_close(fd))
end

local function buildall()
    local melange;     --module
    local colorscheme; --lush colorscheme
    local vimcolors = {}

    for _,l in ipairs{'dark', 'light'} do
        package.loaded['melange'] = nil
        vim.o.background = l
        melange = require('melange')

        write_file(string.format("./term/alacritty_%s.yml", l), targets.alacritty(melange))

        write_file(string.format("./term/kitty_%s.conf", l), targets.kitty(melange))

        vimcolors[l] = targets.viml(melange)
    end

    -- vim colors are written to the same file
    local buf = string.format(viml_template, vimcolors.dark, vimcolors.light)
    write_file("./colors/melange.vim", buf)
end

return {
    buildall = buildall,
}
