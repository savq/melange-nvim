-- Templates to compile Melange colors to different terminal config formats

vim.cmd("packadd lush.nvim")
local lush = require("lush")
local uv = vim.loop

local terms = {
    alacritty = {ext="yml"},
    kitty     = {ext="conf"},
    wezterm   = {ext="toml"},
}

-- Reload melange module
local function get_colorscheme(variant)
    package.loaded["melange"] = nil
    vim.opt.background = variant
    return require("melange")
end

-- Format each entry in a table, and concatenate them into a single string
local function concat_format(t)
    return table.concat(vim.tbl_map(function(x) return string.format(unpack(x)) end, t), "\n")
end

-- Write the contents of a buffer to a file
local function write_file(file, buf)
    local fd = assert(uv.fs_open(file, 'w', 420))
    uv.fs_write(fd, buf, -1)
    uv.fs_write(fd, '\n', -1)
    assert(uv.fs_close(fd))
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

local function viml_build(l)
    local vimcolors = {}
    for _,l in ipairs{"dark", "light"} do
        -- Compile lush table, concatenate to a single string, and remove blend property
        vimcolors[l] = string.gsub(table.concat(vim.fn.sort(lush.compile(get_colorscheme(l))), "\n"), "%s*blend=NONE", "")
    end
    return write_file("./colors/melange.vim", string.format(viml_template, vimcolors.dark, vimcolors.light))
end

function terms.alacritty.build(g, c, b)
    return concat_format {
        {"colors:"};
        {"  primary:"};
        {"    foreground: '%s'", g.fg};
        {"    background: '%s'", g.bg};
        {"  normal:"};
        {"    black:   '%s'", g.overbg};
        {"    red:     '%s'", c.red};
        {"    green:   '%s'", c.green};
        {"    yellow:  '%s'", b.yellow};
        {"    blue:    '%s'", b.blue};
        {"    magenta: '%s'", c.magenta};
        {"    cyan:    '%s'", c.cyan};
        {"    white:   '%s'", g.faded};
        {"  bright:"};
        {"    black:   '%s'", g.sel};
        {"    red:     '%s'", b.red};
        {"    green:   '%s'", b.green};
        {"    yellow:  '%s'", b.yellow};
        {"    blue:    '%s'", b.blue};
        {"    magenta: '%s'", b.magenta};
        {"    cyan:    '%s'", b.cyan};
        {"    white:   '%s'", g.fg};
    }
end

function terms.kitty.build(g, c, b)
    return concat_format {
        {"background %s", g.bg};
        {"foreground %s", g.fg};
        {"cursor     %s", g.fg};
        {"url_color  %s", b.blue};

        {"selection_background    %s", g.sel};
        {"selection_foreground    %s", g.fg};
        {"tab_bar_background      %s", g.overbg};
        {"active_tab_background   %s", g.overbg};
        {"active_tab_foreground   %s", c.yellow};
        {"inactive_tab_background %s", g.overbg};
        {"inactive_tab_foreground %s", g.faded};

        -- normal
        {"color0  %s",  g.overbg};
        {"color1  %s",  c.red};
        {"color2  %s",  c.green};
        {"color3  %s",  b.yellow};
        {"color4  %s",  b.blue};
        {"color5  %s",  c.magenta};
        {"color6  %s",  c.cyan};
        {"color7  %s",  g.faded};
        -- bright
        {"color8  %s", g.sel};
        {"color9  %s", b.red};
        {"color10 %s", b.green};
        {"color11 %s", b.yellow};
        {"color12 %s", b.blue};
        {"color13 %s", b.magenta};
        {"color14 %s", b.cyan};
        {"color15 %s", g.fg};
    }
end

function terms.wezterm.build(g, c, b)
    return concat_format {
        {'[colors]'};
        {'foreground    = "%s"', g.fg};
        {'background    = "%s"', g.bg};
        {'cursor_bg     = "%s"', g.fg};
        {'cursor_border = "%s"', g.fg};
        {'cursor_fg     = "%s"', g.bg};
        {'selection_bg  = "%s"', g.sel};
        {'selection_fg  = "%s"', g.fg};
        {'ansi = ["%s","%s","%s","%s","%s","%s","%s","%s"]',
            g.overbg,
            c.red,
            c.green,
            b.yellow,
            b.blue,
            c.magenta,
            c.cyan,
            g.fg};
        {'brights = ["%s","%s","%s","%s","%s","%s","%s","%s"]',
            g.sel,
            b.red,
            b.green,
            b.yellow,
            b.blue,
            b.magenta,
            b.cyan,
            g.fg};
    }
end

local function build()
    local colors;
    for l, b in pairs{dark="tints", light="shades"} do
        colors = get_colorscheme(l).Melange.lush
        for k, v in pairs(terms) do
            write_file(
                string.format("./term/%s/melange_%s.%s", k, l, v.ext),
                v.build(colors.grays, colors.tones, colors[b])
            )
        end
    end
    viml_build()
end

return {build = build}

