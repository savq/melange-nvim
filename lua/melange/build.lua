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

-- Write a string to a file
local function fread(file)
  local fd = assert(uv.fs_open(file, 'r', 420), 'Failed  to read to file ' .. file) -- 0o644
  local content = uv.fs_read(fd, 4096, -1)
  assert(uv.fs_close(fd))
  return content
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
  package.loaded['lua/melange/palettes/' .. variant] = nil
  local colors = require('lua/melange/palettes/' .. variant)
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

local function iterm_color(color)
  local tbl = {
    tonumber(string.sub(color, 2, 3), 16),
    tonumber(string.sub(color, 4, 5), 16),
    tonumber(string.sub(color, 6, 7), 16),
  }

  local rgb_table = {
    red = tbl[1] / 255,
    green = tbl[2] / 255,
    blue = tbl[3] / 255,
  }
  local rgb_template = [[
    <key>Blue Component</key>
    <real>$blue</real>
  	<key>Color Space</key>
		<string>sRGB</string>
    <key>Green Component</key>
    <real>$green</real>
    <key>Red Component</key>
    <real>$red</real>]]
  return interpolate(rgb_template, rgb_table)
end

local function build(terminals)
  for _, variant in ipairs { 'dark', 'light' } do
    local palette = get_palette(variant)

    -- check if term folder exists. If not create
    local term_dir = get_plugin_dir() .. '/term/'
    if not uv.fs_stat(term_dir) then
      mkdir(term_dir)
    end

    for term, attrs in pairs(terminals) do
      local dir = get_plugin_dir() .. '/term/' .. term
      if not uv.fs_stat(dir) then
        mkdir(dir)
      end

      local fmt
      if term == 'iterm' then
        local iterm_pallete = {}
        for k, v in pairs(palette) do
          iterm_pallete[k] = iterm_color(v)
        end
        fmt = interpolate(attrs.template, iterm_pallete)
      else
        fmt = interpolate(attrs.template, palette)
      end

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
  alacritty  = { ext = '.yml' },         -- https://github.com/alacritty/alacritty/blob/master/alacritty.yml
  foot       = { ext = '.ini' },         -- https://codeberg.org/dnkl/foot/src/branch/master/themes
  kitty      = { ext = '.conf' },        -- https://sw.kovidgoyal.net/kitty/conf/#the-color-table
  terminator = { ext = '.config' },      -- TODO: Find docs or remove support
  wezterm    = { ext = '.toml' },        -- https://wezfurlong.org/wezterm/config/appearance.html
  iterm      = { ext = '.itermcolors' }, -- TODO find links
}

terminals.alacritty.template = fread 'lua/melange/templates/alacritty.yml'

terminals.foot.template = fread 'lua/melange/templates/foot.ini'

terminals.kitty.template = fread 'lua/melange/templates/kitty.conf'

terminals.terminator.template = fread 'lua/melange/templates/terminator.config'

terminals.wezterm.template = fread 'lua/melange/templates/wezterm.toml'

terminals.iterm.template = fread 'lua/melange/templates/iterm.itermcolors'

return {
  build = function()
    build(terminals)
  end,
}
