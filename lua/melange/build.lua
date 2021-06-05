-- Scripts to compile Lush colors to different targets:
    -- VimL
    -- Alacritty
    -- kitty
-- NOTE: In terminal color palettes orange replaces cyan

vim.cmd('packadd lush.nvim')

local uv = vim.loop
local lush = require('lush')

-- format each entry in a table, and concatenate them into a single string
local function concat_format(t)
    return table.concat(vim.tbl_map(function(x) return string.format(unpack(x)) end, t), "\n")
end

-- write the contents of a buffer to a file
local function write_file(file, buf)
    local fd = assert(uv.fs_open(file, 'w', 420))
    uv.fs_write(fd, buf, -1)
    uv.fs_write(fd, '\n', -1)
    assert(uv.fs_close(fd))
end

local targets = {}

function targets.alacritty(colorscheme)
    local c = colorscheme.Melange.lush
    return concat_format {
        {"colors:"};
        {"  primary:"};
        {"    foreground: '%s'", c.fg};
        {"    background: '%s'", c.bg};
        {"  normal:"};
        {"    black:   '%s'", c.mid};
        {"    red:     '%s'", c.red};
        {"    green:   '%s'", c.teal};
        {"    yellow:  '%s'", c.yellow};
        {"    blue:    '%s'", c.aqua};
        {"    magenta: '%s'", c.purple};
        {"    cyan:    '%s'", c.orange};
        {"    white:   '%s'", c.fg};
        {"  bright:"};
        {"    black:   '%s'", c.drop};
        {"    red:     '%s'", c.salmon};
        {"    green:   '%s'", c.green};
        {"    yellow:  '%s'", c.yellow};
        {"    blue:    '%s'", c.blue};
        {"    magenta: '%s'", c.magenta};
        {"    cyan:    '%s'", c.papaya};
        {"    white:   '%s'", c.fg};
    }
end

function targets.kitty(colorscheme)
    local c = colorscheme.Melange.lush
    return concat_format {
        {"background %s", c.bg};
        {"foreground %s", c.fg};
        {"cursor     %s", c.fg};
        {"url_color  %s", colorscheme.TSURI.fg};

        {"selection_background    %s", colorscheme.Visual.bg};
        {"selection_foreground    %s", c.fg};
        {"tab_bar_background      %s", colorscheme.TabLineFill.bg};
        {"active_tab_background   %s", colorscheme.TabLineSel.bg};
        {"active_tab_foreground   %s", c.fg};
        {"inactive_tab_background %s", colorscheme.TabLine.bg};
        {"inactive_tab_foreground %s", c.fg};

        -- normal
        {"color0  %s",  c.bg};
        {"color1  %s",  c.red};
        {"color2  %s",  c.teal};
        {"color3  %s",  c.yellow};
        {"color4  %s",  c.aqua};
        {"color5  %s",  c.purple};
        {"color6  %s",  c.orange};
        {"color7  %s",  c.fg};
        -- bright
        {"color8  %s", c.overbg};
        {"color9  %s", c.salmon};
        {"color10 %s", c.green};
        {"color11 %s", c.yellow};
        {"color12 %s", c.blue};
        {"color13 %s", c.magenta};
        {"color14 %s", c.papaya};
        {"color15 %s", c.fg};
    }
end

function targets.wezterm(colorscheme)
    local c = colorscheme.Melange.lush
    return concat_format {
        {'[colors]'};
        {'foreground    = "%s"', c.fg};
        {'background    = "%s"', c.bg};
        {'cursor_bg     = "%s"', c.fg};
        {'cursor_border = "%s"', c.fg};
        {'cursor_fg     = "%s"', c.bg};
        {'selection_bg  = "%s"', c.fg};
        {'selection_fg  = "%s"', c.bg};
        {'ansi = ["%s","%s","%s","%s","%s","%s","%s","%s"]',
            c.bg, c.red, c.teal, c.yellow, c.aqua, c.purple, c.orange, c.drop};
        {'brights = ["%s","%s","%s","%s","%s","%s","%s","%s"]',
            c.overbg, c.salmon, c.green, c.yellow, c.blue, c.magenta, c.papaya, c.fg};
    }
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

local function buildall()
    local melange;     --module
    local colorscheme; --lush colorscheme
    local vimcolors = {}

    for _,l in ipairs{'dark', 'light'} do
        package.loaded['melange'] = nil
        vim.o.background = l
        melange = require('melange')

        for t,f in pairs{alacritty='yml', kitty='conf', wezterm='toml'} do
            write_file(string.format("./term/%s/melange_%s.%s", t, l, f), targets[t](melange))
        end

        vimcolors[l] = targets.viml(melange)
    end

    -- vim colors are written to the same file
    local buf = string.format(viml_template, vimcolors.dark, vimcolors.light)
    write_file("./colors/melange.vim", buf)
end

buildall()

return {
    buildall = buildall,
}

