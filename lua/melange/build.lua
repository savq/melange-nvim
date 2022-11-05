--- Templates for various terminal configuration formats

local uv = vim.loop

-- Get the directory where the melange plugin is located
local function get_plugin_dir()
  return debug.getinfo(1).source:match('@?(.*/)'):gsub('/lua/melange/$', '')
end

-- Write a string to a file
local function fwrite(str, file)
  local fd = assert(uv.fs_open(file, 'w', 420), 'Failed to write to file: ' .. file) -- 0o644
  uv.fs_write(fd, str, -1)
  assert(uv.fs_close(fd))
end

local function mkdir(dir)
  return assert(uv.fs_mkdir(dir, 493), 'Failed to create directory: ' .. dir) -- 0o755
end

-- Perl-like interpolation
local function interpolate(str, tbl)
  return str:gsub('%$([%w_]+)', tbl)
end

-- Reload melange module
local function get_hl_groups(variant)
  package.loaded['melange/hl_groups'] = nil
  vim.opt.background = variant or vim.opt.background:get()
  return require 'melange/hl_groups'
end

-- melange names -> ANSI names
local function get_palette24(variant)
  local bg = vim.opt.background:get()
  local colors = require(string.format('melange/palettes/%s', bg))
  -- stylua: ignore
  return {
    bg           = colors.a.bg,
    fg           = colors.a.fg,
    dark_black   = colors.a.bg,
    dark_red     = colors.d.red,
    dark_green   = colors.d.green,
    dark_yellow  = colors.d.yellow,
    dark_blue    = colors.d.blue,
    dark_magenta = colors.d.magenta,
    dark_cyan    = colors.d.cyan,
    dark_white   = colors.a.com,
    black        = colors.a.overbg,
    red          = colors.c.red,
    green        = colors.c.green,
    yellow       = colors.c.yellow,
    blue         = colors.c.blue,
    magenta      = colors.c.magenta,
    cyan         = colors.c.cyan,
    white        = colors.a.faded,
    brblack      = colors.a.sel,
    brred        = colors.b.red,
    brgreen      = colors.b.green,
    bryellow     = colors.b.yellow,
    brblue       = colors.b.blue,
    brmagenta    = colors.b.magenta,
    brcyan       = colors.b.cyan,
    brwhite      = colors.a.fg,
  }
end

local function build(terminals)
  for _, bg in ipairs { 'dark', 'light' } do
    local palette = get_palette24(bg)
    for term_name, term in pairs(terminals) do
      -- Check directory exists
      local dir = get_plugin_dir() .. '/term/' .. term_name
      if not uv.fs_stat(dir) then
        mkdir(dir)
      end

      -- Write terminal emulator files
      fwrite(term.template:gsub('%$([%w_]+)', palette), ('%s/melange_%s%s'):format(dir, bg, term.ext))
    end

    -- Write JSON files
    fwrite(vim.json.encode(palette), get_plugin_dir() .. ('/palette/melange_%s.json'):format(bg))
  end
end

-- stylua:ignore
local terminals = {
  alacritty = { ext = '.yml' },
  kitty = { ext = '.conf' },
  terminator = { ext = '.config' },
  termite = { ext = '' },
  wezterm = { ext = '.toml' },
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

terminals.terminator.template = [=[
 [[melange]]
    background_color = "$bg"
    cursor_color = "$fg"
    foreground_color = "$fg"
    palette = "$black:$red:$green:$yellow:$blue:$magenta:$cyan:$white:$brblack:$brred:$brgreen:$bryellow:$brblue:$brmagenta:$brcyan:$brwhite"
]=]

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
highlight  = $brblack
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

return {
  build = function()
    build(terminals)
  end,
}
