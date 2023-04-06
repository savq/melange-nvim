--- Templates for various terminal configuration formats

local uv = vim.loop

-- Get the directory where the melange plugin is located
local function get_plugin_dir()
  return debug.getinfo(1).source:match('@?(.*/)'):gsub('/lua/melange/$', '')
end

-- Write a string to a file
local function fwrite(str, file)
  local fd = assert(uv.fs_open(file, 'w', 420), 'Failed  to write to file ' .. file) -- 0o644
  uv.fs_write(fd, str, -1)
  assert(uv.fs_close(fd))
end

local function mkdir(dir)
  return assert(uv.fs_mkdir(dir, 493), 'Failed to create directory ' .. dir) -- 0o755
end

-- Perl-like interpolation
local function interpolate(str, tbl)
  return str:gsub('%$([%w_]+)', tbl)
end

-- Turn melange naming conventions into more common ANSI names
local function get_palette(variant)
  package.loaded['melange/palettes/' .. variant] = nil
  local colors = require('melange/palettes/' .. variant)
  -- stylua: ignore
  return {
    bg             = colors.a.bg,
    fg             = colors.a.fg,
    dark_black     = colors.a.bg,
    dark_red       = colors.d.red,
    dark_green     = colors.d.green,
    dark_yellow    = colors.d.yellow,
    dark_blue      = colors.d.blue,
    dark_magenta   = colors.d.magenta,
    dark_cyan      = colors.d.cyan,
    dark_white     = colors.a.sel,
    black          = colors.a.float,
    red            = colors.c.red,
    green          = colors.c.green,
    yellow         = colors.c.yellow,
    blue           = colors.c.blue,
    magenta        = colors.c.magenta,
    cyan           = colors.c.cyan,
    white          = colors.a.com,
    bright_black   = colors.a.ui,
    bright_red     = colors.b.red,
    bright_green   = colors.b.green,
    bright_yellow  = colors.b.yellow,
    bright_blue    = colors.b.blue,
    bright_magenta = colors.b.magenta,
    bright_cyan    = colors.b.cyan,
    bright_white   = colors.a.fg,
  }
end

local function build(terminals)
  for _, variant in ipairs { 'dark', 'light' } do
    local palette = get_palette(variant)

    for term, attrs in pairs(terminals) do
      local dir = get_plugin_dir() .. '/term/' .. term
      if not uv.fs_stat(dir) then
        mkdir(dir)
      end

      local fmt = interpolate(attrs.template, palette)
      if term == 'foot' then
        fmt = fmt:gsub('#', '')
      end
      fwrite(fmt, string.format('%s/melange_%s%s', dir, variant, attrs.ext))
    end

    fwrite(vim.json.encode(palette), get_plugin_dir() .. string.format('/melange_%s.json', variant))
  end
end

-- stylua: ignore
local terminals = {
  alacritty  = { ext = '.yml' },    -- https://github.com/alacritty/alacritty/blob/master/alacritty.yml
  foot       = { ext = '.ini' },    -- https://codeberg.org/dnkl/foot/src/branch/master/themes
  kitty      = { ext = '.conf' },   -- https://sw.kovidgoyal.net/kitty/conf/#the-color-table
  terminator = { ext = '.config' }, -- TODO: Find docs or remove support
  wezterm    = { ext = '.toml' },   -- https://wezfurlong.org/wezterm/config/appearance.html
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
    black:   '$bright_black'
    red:     '$bright_red'
    green:   '$bright_green'
    yellow:  '$bright_yellow'
    blue:    '$bright_blue'
    magenta: '$bright_magenta'
    cyan:    '$bright_cyan'
    white:   '$bright_white'
]]

terminals.foot.template = [=[
[colors]
foreground = $fg
background = $bg
selection-background = $dark_white
selection-foreground = $fg
regular0   = $black
regular1   = $red
regular2   = $green
regular3   = $yellow
regular4   = $blue
regular5   = $magenta
regular6   = $cyan
regular7   = $white
bright0    = $bright_black
bright1    = $bright_red
bright2    = $bright_green
bright3    = $bright_yellow
bright4    = $bright_blue
bright5    = $bright_magenta
bright6    = $bright_cyan
bright7    = $bright_white
]=]

terminals.kitty.template = [=[
background $bg
foreground $fg
cursor     none
url_color  $blue
selection_background    $dark_white
selection_foreground    $fg
tab_bar_background      $black
active_tab_background   $black
active_tab_foreground   $yellow
inactive_tab_background $black
inactive_tab_foreground $bright_white
color0  $black
color1  $red
color2  $green
color3  $yellow
color4  $blue
color5  $magenta
color6  $cyan
color7  $white
color8  $bright_black
color9  $bright_red
color10 $bright_green
color11 $bright_yellow
color12 $bright_blue
color13 $bright_magenta
color14 $bright_cyan
color15 $bright_white
]=]

terminals.terminator.template = [=[
 [[melange]]
    background_color = "$bg"
    cursor_color = "$fg"
    foreground_color = "$fg"
    palette = "$black:$red:$green:$yellow:$blue:$magenta:$cyan:$white:$bright_black:$bright_red:$bright_green:$bright_yellow:$bright_blue:$bright_magenta:$bright_cyan:$bright_white"
]=]

terminals.wezterm.template = [=[
[colors]
foreground    = "$fg"
background    = "$bg"
cursor_bg     = "$fg"
cursor_border = "$fg"
cursor_fg     = "$bg"
selection_bg  = "$dark_white"
selection_fg  = "$fg"
ansi = [
  "$black",
  "$red",
  "$green",
  "$yellow",
  "$blue",
  "$magenta",
  "$cyan",
  "$white"
]
brights = [
  "$bright_black",
  "$bright_red",
  "$bright_green",
  "$bright_yellow",
  "$bright_blue",
  "$bright_magenta",
  "$bright_cyan",
  "$bright_white"
]
]=]

return {
  build = function()
    build(terminals)
  end,
}
