vim.cmd 'hi clear | syntax reset'
vim.g.colors_name = 'melange'
local bg = vim.opt.background:get()

-- package.loaded['melange.palettes'] = nil
-- package.loaded['melange.hl_groups'] = nil

-- TODO:
-- * Split palettes into different files
-- * 256 variants
local palette = require('melange.palettes')[bg]

-- FIXME
local font_vars = vim.g.melange_enable_font_variants ~= 0

local hl_groups = require('melange.hl_groups')(palette, font_vars)

for name, attrs in pairs(hl_groups) do
  if type(attrs) == 'string' then
    vim.api.nvim_set_hl(0, name, { link = attrs })
  else
    vim.api.nvim_set_hl(0, name, attrs)
  end
end

-- See: neovim/neovim#7406
vim.g.terminal_color_0 = palette.a.overbg
vim.g.terminal_color_1 = palette.c.red
vim.g.terminal_color_2 = palette.c.green
vim.g.terminal_color_3 = palette.b.yellow
vim.g.terminal_color_4 = palette.b.blue
vim.g.terminal_color_5 = palette.c.magenta
vim.g.terminal_color_6 = palette.c.cyan
vim.g.terminal_color_7 = palette.a.com
vim.g.terminal_color_8 = palette.a.sel
vim.g.terminal_color_9 = palette.b.red
vim.g.terminal_color_10 = palette.b.green
vim.g.terminal_color_11 = palette.b.yellow
vim.g.terminal_color_12 = palette.b.blue
vim.g.terminal_color_13 = palette.b.magenta
vim.g.terminal_color_14 = palette.b.cyan
vim.g.terminal_color_15 = palette.a.faded

