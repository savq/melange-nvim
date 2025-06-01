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
    variant        = variant,
  }
end

-- Convert a hex string into a table with r, g, b values in range [0, 1]
local function hex2rgb(color)
  local x = tonumber(string.sub(color, 2), 16)
  return {
    r = bit.band(x, 0xFF0000) / 0xFF0000,
    g = bit.band(x, 0x00FF00) / 0x00FF00,
    b = bit.band(x, 0x0000FF) / 0x0000FF,
  }
end

local function generate_iterm2(palette)
  local template = {
    [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>]],
  }
  for _, name_color in pairs {
    { 'Background Color', palette.bg },
    { 'Foreground Color', palette.fg },
    { 'Cursor Color', palette.fg },
    { 'Cursor Text Color', palette.bg },
    { 'Bold Color', palette.dark_black },
    { 'Selected Text Color', palette.dark_white },
    { 'Selection Color', palette.fg },
    { 'Ansi 0 Color', palette.black },
    { 'Ansi 1 Color', palette.red },
    { 'Ansi 2 Color', palette.green },
    { 'Ansi 3 Color', palette.yellow },
    { 'Ansi 4 Color', palette.blue },
    { 'Ansi 5 Color', palette.magenta },
    { 'Ansi 6 Color', palette.cyan },
    { 'Ansi 7 Color', palette.white },
    { 'Ansi 8 Color', palette.bright_black },
    { 'Ansi 9 Color', palette.bright_red },
    { 'Ansi 10 Color', palette.bright_green },
    { 'Ansi 11 Color', palette.bright_yellow },
    { 'Ansi 12 Color', palette.bright_blue },
    { 'Ansi 13 Color', palette.bright_magenta },
    { 'Ansi 14 Color', palette.bright_cyan },
    { 'Ansi 15 Color', palette.bright_white },
  } do
    local dict = interpolate(
      [[
	<dict>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Red Component</key>
		<real>$r</real>
		<key>Green Component</key>
		<real>$g</real>
		<key>Blue Component</key>
		<real>$b</real>
	</dict>]],
      hex2rgb(name_color[2])
    )
    table.insert(template, ('\t<key>%s</key>\n%s'):format(name_color[1], dict))
  end
  table.insert(template, '</dict>\n</plist>\n')
  return table.concat(template, '\n')
end

local function generate_windows_terminal_theme(variant, palette)
  local template = [=[
  {
    "name": "melange $variant",
    "tab": 
    {
      "background": "$bg",
      "unfocusedBackground": null
    },
    "tabRow": 
    {
      "background": "$black",
      "unfocusedBackground": "$black"
    },
    "window": 
      {
      "applicationTheme": "$variant"
    }
  }
  ]=]

  return interpolate(template, {
    bg = palette.bg .. 'FF',
    black = palette.black .. 'FF',
    variant = variant,
  })
end

local function build(terminals)
  for _, variant in ipairs { 'dark', 'light' } do
    local palette = get_palette(variant)

    for term, attrs in pairs(terminals) do
      local dir = get_plugin_dir() .. '/term/' .. term
      if not uv.fs_stat(dir) then
        mkdir(dir)
      end

      if term == 'windows_terminal' then
        local template = attrs.colorscheme_template:gsub('$variant', variant)
        local cs_fmt = interpolate(template, palette)
        local tm_fmt = generate_windows_terminal_theme(variant, palette)
        fwrite(cs_fmt, string.format('%s/melange_%s_colorscheme%s', dir, variant, attrs.ext))
        fwrite(tm_fmt, string.format('%s/melange_%s_theme%s', dir, variant, attrs.ext))
      else
        local fmt = interpolate(attrs.template, palette)
        if term == 'foot' then
          fmt = fmt:gsub('#', '')
        end
        fwrite(fmt, string.format('%s/melange_%s%s', dir, variant, attrs.ext))
      end
    end

    fwrite(generate_iterm2(palette), string.format('%s/term/iterm2/melange_%s.itermcolors', get_plugin_dir(), variant))
    fwrite(vim.json.encode(palette), get_plugin_dir() .. string.format('/melange_%s.json', variant))
  end
end

-- stylua: ignore
local terminals = {
  alacritty  = { ext = '.toml' },   -- https://github.com/alacritty/alacritty/blob/master/alacritty.yml
  foot       = { ext = '.ini' },    -- https://codeberg.org/dnkl/foot/src/branch/master/themes
  ghostty    = { ext = '' },        -- https://ghostty.org/docs/features/theme
  kitty      = { ext = '.conf' },   -- https://sw.kovidgoyal.net/kitty/conf/#the-color-table
  terminator = { ext = '.config' }, -- TODO: Find docs or remove support
  wezterm    = { ext = '.toml' },   -- https://wezfurlong.org/wezterm/config/appearance.html
  windows_terminal = { ext = '.json' }, -- https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes
                                        -- https://learn.microsoft.com/en-us/windows/terminal/customize-settings/themes
  zellij = { ext = '.kdl' },   -- https://github.com/zellij-org/zellij/blob/main/example/config.kdl
}

terminals.windows_terminal.colorscheme_template = [=[
{
  "background": "$bg",
  "black": "$black",
  "blue": "$blue",
  "brightBlack": "$bright_black",
  "brightBlue": "$bright_blue",
  "brightCyan": "$bright_cyan",
  "brightGreen": "$bright_green",
  "brightPurple": "$bright_magenta",
  "brightRed": "$bright_red",
  "brightWhite": "$bright_white",
  "brightYellow": "$bright_yellow",
  "cursorColor": "$fg",
  "cyan": "$cyan",
  "foreground": "$fg",
  "green": "$green",
  "name": "melange $variant",
  "purple": "$magenta",
  "red": "$red",
  "selectionBackground": "$dark_white",
  "white": "$white",
  "yellow": "$yellow"
}
]=]

terminals.alacritty.template = [[
[colors.primary]
foreground = "$fg"
background = "$bg"
[colors.normal]
black      = "$black"
red        = "$red"
green      = "$green"
yellow     = "$yellow"
blue       = "$blue"
magenta    = "$magenta"
cyan       = "$cyan"
white      = "$white"
[colors.bright]
black      = "$bright_black"
red        = "$bright_red"
green      = "$bright_green"
yellow     = "$bright_yellow"
blue       = "$bright_blue"
magenta    = "$bright_magenta"
cyan       = "$bright_cyan"
white      = "$bright_white"
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

terminals.ghostty.template = [=[
background = $bg
foreground = $fg
cursor-color = $fg
selection-background = $dark_white
selection-foreground = $fg
palette = 0=$black
palette = 1=$red
palette = 2=$green
palette = 3=$yellow
palette = 4=$blue
palette = 5=$magenta
palette = 6=$cyan
palette = 7=$white
palette = 8=$bright_black
palette = 9=$bright_red
palette = 10=$bright_green
palette = 11=$bright_yellow
palette = 12=$bright_blue
palette = 13=$bright_magenta
palette = 14=$bright_cyan
palette = 15=$bright_white
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

terminals.zellij.template = [=[
melange-$variant {
  fg $fg
  bg $bg
  black $black
  white $white
  red $red
  green $green
  yellow $yellow
  blue $blue
  magenta $magenta
  cyan $cyan
  orange $dark_yellow
}
]=]

return {
  build = function()
    build(terminals)
  end,
}
