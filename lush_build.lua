-- Lush Build file

-- terminal transformers are included inline here for now because:
--
--  - they are melange specific keys (i.e. fg is repeated)
--  - ease of testing
--
-- Ideally they would be make more portable and provided for use outside of
-- melange.


-- wezterm transform, expects a table in the shape:
--
-- {
--   fg = "#000",
--   bg = "#000",
--   yellow = 
--   ...
-- }
local function wezterm(colors)
  local template = [[
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

  local output = string.gsub(template, "$([%w_]+)", colors)
  local lines = {}
  for s in string.gmatch(output, "[^\n]+") do
    table.insert(lines, s)
  end
  return lines
end

local function kitty(colors)
  local template = [[
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
  local output = string.gsub(template, "$([%w_]+)", colors)
  local lines = {}
  for s in string.gmatch(output, "[^\n]+") do
    table.insert(lines, s)
  end
  return lines
end

local function alacritty(colors)
  local template = [[
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
  local output = string.gsub(template, "$([%w_]+)", colors)
  local lines = {}
  for s in string.gmatch(output, "[^\n]+") do
    table.insert(lines, s)
  end
  return lines
end

-- "head" transform, accepts parsed lush spec, returns table
-- used to transform a melange ast into a table that a term transformer can
-- use.
local function extract_colors(ast)
  local colors = ast.Melange.lush
  -- normally the lush compiler would convert these hsl wrapped values into
  -- strings but we must do it manually.
  return {
    bg        = tostring(colors.a.bg),
    overbg    = tostring(colors.a.overbg),
    sel       = tostring(colors.a.sel),
    com       = tostring(colors.a.com),
    faded     = tostring(colors.a.faded),
    fg        = tostring(colors.a.fg),

    black     = tostring(colors.a.overbg),
    red       = tostring(colors.c.red),
    green     = tostring(colors.c.green),
    yellow    = tostring(colors.b.yellow),
    blue      = tostring(colors.b.blue),
    magenta   = tostring(colors.c.magenta),
    cyan      = tostring(colors.c.cyan),
    white     = tostring(colors.a.com),

    brblack   = tostring(colors.a.sel),
    brred     = tostring(colors.b.red),
    brgreen   = tostring(colors.b.green),
    bryellow  = tostring(colors.b.yellow),
    brblue    = tostring(colors.b.blue),
    brmagenta = tostring(colors.b.magenta),
    brcyan    = tostring(colors.b.cyan),
    brwhite   = tostring(colors.a.faded),
  }
end

-- melange uses vim.opt.background to configure it's palette on require, so
-- we have to a bit of trickery. Another way would be separating the themes
-- out into melange_light and melange_dark but that can be messy with palettes.

-- load light mode
vim.opt.background = "light"
local melange_light = require("melange")
package.loaded["melange"] = nil

--load dark mode
vim.opt.background = "dark"
local melange_dark = require("melange")

-- we will pretend that melange has some features that are not vim compatible
-- such as blends (I know blend is intentionally stripped in the existing build
-- system).
-- To handle this we will pass the vim-compatibility compiler plugin to the viml
-- compiler, and output this to a "compat" colors file.
local compiler_vim_compatible = require("lush.compiler.plugin.vim_compatible")
export(melange_light,
  {viml, {plugins = {compiler_vim_compatible}}},
  {patchwrite, "_colors/melange_compat.vim", [[" LUSH_PATCH_OPEN_DARK]], [[" LUSH_PATCH_CLOSE_DARK]]})
export(melange_dark,
  {viml, {plugins = {compiler_vim_compatible}}},
  {patchwrite, "_colors/melange_compat.vim", [[" LUSH_PATCH_OPEN_LIGHT]], [[" LUSH_PATCH_CLOSE_LIGHT]]})

-- We will pretend that this copy of melange is nvim only, so it has some blending or similar
export(melange_light,
  viml,
  {patchwrite, "_colors/melange.vim", [[" LUSH_PATCH_OPEN_DARK]], [[" LUSH_PATCH_CLOSE_DARK]]})
export(melange_dark,
  viml,
  {patchwrite, "_colors/melange.vim", [[" LUSH_PATCH_OPEN_LIGHT]], [[" LUSH_PATCH_CLOSE_LIGHT]]})

-- we support the following terminals, we will use the (pretend) "community provided" transforms
local terms = {
  {wezterm, "_term/wezterm_light.toml", "_term/wezterm_dark.toml"},
  {alacritty, "_term/alacritty_light.yml", "_term/alacritty_dark.yml"},
  {kitty, "_term/kitty_light.conf", "_term/kitty_dark.conf"}
}

-- for each term, output a light and dark config
for _, config in ipairs(terms) do
  local term = config[1]
  local light_path = config[2]
  local dark_path = config[3]

  export(melange_light,
    extract_colors,
    term,
    {overwrite, light_path})

  export(melange_dark,
    extract_colors,
    term,
    {overwrite, dark_path})
end
