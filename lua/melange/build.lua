--- Templates for various terminal configuration formats

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
local function fwrite(str, file)
    local fd = assert(uv.fs_open(get_melange_dir() .. file, 'w', 420))
    uv.fs_write(fd, str, -1)
    assert(uv.fs_close(fd))
end

-- Perl-like interpolation
local function interpolate(str, tbl)
    return str:gsub("%$([%w_]+)", function(k) return tostring(tbl[k]) end)
end


local viml_template = [[
hi clear
syntax reset
set t_Co=256
let g:colors_name = 'melange'
if &background == 'dark'
$dark
else
$light
endif
]]

local function viml_build(l)
    local vimcolors = {}
    for _,l in ipairs{"dark", "light"} do
        -- Compile lush table, concatenate to a single string, and remove blend property
        vimcolors[l] = table.concat(vim.fn.sort(lush.compile(get_colorscheme(l), {exclude_keys={"blend"}})), "\n")
    end
    return fwrite(interpolate(viml_template, vimcolors), "/colors/melange.vim")
end

local function build(terminals)
    for _, l in ipairs{"dark", "light"} do
        local palette = get_colorscheme(l).Melange.lush
        local map = {
            bg        = palette.a.bg,
            fg        = palette.a.fg,
            black     = palette.a.overbg,
            red       = palette.c.red,
            green     = palette.c.green,
            yellow    = palette.b.yellow,
            blue      = palette.b.blue,
            magenta   = palette.c.magenta,
            cyan      = palette.c.cyan,
            white     = palette.a.com,
            brblack   = palette.a.sel,
            brred     = palette.b.red,
            brgreen   = palette.b.green,
            bryellow  = palette.b.yellow,
            brblue    = palette.b.blue,
            brmagenta = palette.b.magenta,
            brcyan    = palette.b.cyan,
            brwhite   = palette.a.faded,
        }
        for term, attrs in pairs(terminals) do
            fwrite(
                interpolate(attrs.template, map),
                string.format("/term/%s/melange_%s.%s", term, l, attrs.ext)
            )
        end
    end
end

local terminals = {
    alacritty = {ext="yml"},
    kitty     = {ext="conf"},
    termite   = {ext=""},
    wezterm   = {ext="toml"},
}

terminals.alacritty.template = [[
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

terminals.kitty.template = [[
background $bg
foreground $fg
cursor     $fg
url_color  $blue
selection_background    $brblack
selection_foreground    $fg
tab_bar_background      $black
active_tab_background   $black
active_tab_foreground   $yellow
inactive_tab_background $black
inactive_tab_foreground $brwhite
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

terminals.termite.template = [[
[colors]
foreground = $fg
background = $bg
color0     = $black
color1     = $red
color2     = $green
color3     = $yellow
color4     = $blue
color5     = $magenta
color6     = $cyan
color7     = $white
color8     = $brblack
color9     = $brred
color10    = $brgreen
color11    = $bryellow
color12    = $brblue
color13    = $brmagenta
color14    = $brcyan
color15    = $brwhite
highlight  = $sel
]]

terminals.wezterm.template = [[
[colors]
foreground    = "$fg"
background    = "$bg"
cursor_bg     = "$fg"
cursor_border = "$fg"
cursor_fg     = "$bg"
selection_bg  = "$brblack"
selection_fg  = "$fg"
ansi = ["$black", "$red", "$green", "$yellow", "$blue", "$magenta", "$cyan", "$white"]
brights = ["$brblack", "$brred", "$brgreen", "$bryellow", "$brblue", "$brmagenta", "$brcyan", "$brwhite"]
]]

return {build = function() build(terminals); viml_build() end}
