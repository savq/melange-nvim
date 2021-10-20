-- Templates for various terminal configuration formats

vim.cmd("packadd lush.nvim")
local lush = require("lush")
local uv = vim.loop

-- Reload melange module
local function get_colorscheme(variant)
    package.loaded["melange"] = nil
    vim.opt.background = variant
    return require("melange")
end

-- Get the directory where the melange plugin is located
local function get_melange_dir()
    return debug.getinfo(1).source:match("@?(.*/)"):gsub("/lua/melange/$", "")
end

-- Write a string to a file
local function write_file(file, str)
    local fd = assert(uv.fs_open(get_melange_dir() .. file, 'w', 420))
    uv.fs_write(fd, str, -1)
    assert(uv.fs_close(fd))
end

-- Perl-like interpolation
local function interpolate(str, tbl)
    return str:gsub("($%a%w*)", function(k) return tostring(tbl[k:sub(2, -1)]) end)
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
        vimcolors[l] = table.concat(vim.fn.sort(lush.compile(get_colorscheme(l), {exclude_keys={"blend"}})), "\n")
    end
    return write_file("/colors/melange.vim", string.format(viml_template, vimcolors.dark, vimcolors.light))
end

local function build(terminals)
    local colors;
    for _, l in ipairs{"dark", "light"} do
        colors = get_colorscheme(l).Melange.lush
        for term, attrs in pairs(terminals) do
            write_file(
                string.format("/term/%s/melange_%s.%s", term, l, attrs.ext),
                interpolate(attrs.template,
                    {
                        bg        = colors.a.bg,
                        overbg    = colors.a.overbg,
                        sel       = colors.a.sel,
                        com       = colors.a.com,
                        faded     = colors.a.faded,
                        fg        = colors.a.fg,

                        black     = colors.a.overbg,
                        red       = colors.c.red,
                        green     = colors.c.green,
                        yellow    = colors.b.yellow,
                        blue      = colors.b.blue,
                        magenta   = colors.c.magenta,
                        cyan      = colors.c.cyan,
                        white     = colors.a.com,

                        brblack   = colors.a.sel,
                        brred     = colors.b.red,
                        brgreen   = colors.b.green,
                        bryellow  = colors.b.yellow,
                        brblue    = colors.b.blue,
                        brmagenta = colors.b.magenta,
                        brcyan    = colors.b.cyan,
                        brwhite   = colors.a.faded,
                    }
                )
            )
        end
    end
end

local terms = {
    alacritty = {ext="yml"},
    kitty     = {ext="conf"},
    wezterm   = {ext="toml"},
}

terms.alacritty.template = [[
colors:
  primary:
    foreground: '$fg'
    background: '$bg'
  normal:
    black:   '$black'
    red:     '$red'
    green:   '$green'
    yellow:  '$yellow'
    blue:    '$blue'
    magenta: '$magenta'
    cyan:    '$cyan'
    white:   '$white'
  bright:
    black:   '$brblack'
    red:     '$brred'
    green:   '$brgreen'
    yellow:  '$bryellow'
    blue:    '$brblue'
    magenta: '$brmagenta'
    cyan:    '$brcyan'
    white:   '$brwhite'
]]

terms.kitty.template = [[
background $bg
foreground $fg
cursor     $fg
url_color  $blue
selection_background    $sel
selection_foreground    $fg
tab_bar_background      $overbg
active_tab_background   $overbg
active_tab_foreground   $yellow
inactive_tab_background $overbg
inactive_tab_foreground $faded
color0  $black
color1  $red
color2  $green
color3  $yellow
color4  $blue
color5  $magenta
color6  $cyan
color7  $white
color8  $brblack
color9  $brred
color10 $brgreen
color11 $bryellow
color12 $brblue
color13 $brmagenta
color14 $brcyan
color15 $brwhite
]]

terms.wezterm.template = [[
[colors]
foreground    = "$fg"
background    = "$bg"
cursor_bg     = "$fg"
cursor_border = "$fg"
cursor_fg     = "$bg"
selection_bg  = "$sel"
selection_fg  = "$fg"
ansi = ["$black", "$red", "$green", "$yellow", "$blue", "$magenta", "$cyan", "$white"]
brights = ["$brblack", "$brred", "$brgreen", "$bryellow", "$brblue", "$brmagenta", "$brcyan", "$brwhite"]
]]

return {build = function() build(terms); viml_build() end}
