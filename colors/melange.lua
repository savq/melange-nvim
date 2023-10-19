vim.cmd 'highlight clear'
vim.cmd 'syntax reset'
vim.g.colors_name = 'melange'

local bg = vim.opt.background:get()

-- package.loaded['melange/palettes/' .. bg] = nil -- Only needed for development
local palette = require('melange/palettes/' .. bg)

local a = palette.a -- Grays
local b = palette.b -- Bright foreground colors
local c = palette.c -- Foreground colors
local d = palette.d -- Background colors

local enable_font_variants = vim.g.melange_enable_font_variants == nil or vim.g.melange_enable_font_variants

local bold = enable_font_variants
local italic = enable_font_variants
local underline = enable_font_variants
local undercurl = enable_font_variants
local strikethrough = enable_font_variants

for name, attrs in pairs {
  ---- :help highlight-default -------------------------------

  Normal = { fg = a.fg, bg = a.bg },
  NormalFloat = { bg = a.float },
  -- NormalNC = {},

  -- Cursor = {},
  -- lCursor = {},
  -- CursorIM = {},
  -- TermCursor = {},
  -- TermCursorNC = {},

  ColorColumn = { bg = a.float },
  CursorColumn = 'ColorColumn',
  CursorLine = 'ColorColumn',
  VertSplit = { fg = a.ui },

  LineNr = { fg = a.ui },
  CursorLineNr = { fg = c.yellow },

  Folded = { fg = a.com, bg = d.cyan },
  FoldColumn = 'LineNr',
  SignColumn = 'LineNr',

  Pmenu = 'NormalFloat',
  PmenuSel = { bg = a.sel },
  PmenuSbar = 'Pmenu',
  PmenuThumb = 'PmenuSel',

  StatusLine = 'NormalFloat',
  StatusLineNC = { fg = a.com, bg = a.float },
  WildMenu = 'NormalFloat',

  TabLine = 'StatusLineNC',
  TabLineFill = 'StatusLine',
  TabLineSel = { bg = a.float, bold = bold },

  MatchParen = { fg = b.yellow, bg = a.sel, bold = bold },
  Search = { fg = a.bg, bg = d.yellow, bold = bold },
  Substitute = { bg = d.red, bold = bold },
  -- QuickFixLine = {},
  -- IncSearch = {},
  Visual = { bg = a.sel },
  -- VisualNOS = {},

  Conceal = { fg = a.com },
  Whitespace = { fg = a.ui },
  -- EndOfBuffer = {},
  NonText = 'Whitespace',
  SpecialKey = 'Whitespace',

  Directory = { fg = c.cyan },
  Title = { fg = c.yellow },
  ErrorMsg = { bg = d.red },
  ModeMsg = { fg = a.com },
  -- MsgArea = {},
  -- MsgSeparator = {},
  MoreMsg = { fg = c.green, bold = bold },
  WarningMsg = { fg = c.red },
  Question = 'MoreMsg',

  ---- :help :diff -------------------------------------------

  DiffAdd = { bg = d.green },
  DiffChange = { bg = d.magenta },
  DiffDelete = { bg = d.red },
  DiffText = { bg = d.blue },

  DiffAdded = 'DiffAdd',
  DiffRemoved = 'DiffDelete',

  ---- :help spell -------------------------------------------

  SpellBad = { fg = c.red, undercurl = undercurl },
  SpellCap = { fg = c.blue, undercurl = undercurl },
  SpellLocal = { fg = c.yellow, undercurl = undercurl },
  SpellRare = { fg = b.yellow, undercurl = undercurl },

  ---- :help group-name --------------------------------------

  Comment = { fg = a.com, italic = italic },
  Identifier = { fg = a.fg },
  Function = { fg = b.yellow },
  Constant = { fg = c.magenta },
  String = { fg = b.blue, italic = italic },
  Character = { fg = c.blue },
  Number = { fg = b.magenta },
  Boolean = 'Number',
  -- Float = {},

  Statement = { fg = c.yellow },
  -- Conditional = {},
  -- Repeat = {},
  -- Label = {},
  Operator = { fg = b.red },
  -- Keyword = {},
  -- Exception = {},

  PreProc = { fg = b.green },
  -- Include = {},
  -- Define = {},
  -- Macro = {},
  -- PreCondit = {},

  Type = { fg = c.cyan },
  -- StorageClass = {},
  -- Structure = {},
  -- Typedef = {},

  Special = { fg = b.yellow },
  -- SpecialChar = {},
  -- Tag = {},
  Delimiter = { fg = d.yellow },
  -- SpecialComment = {},
  -- Debug = {},

  Underlined = { underline = underline },
  Bold = { bold = bold },
  Italic = { italic = italic },

  Ignore = { fg = a.ui },
  Error = { bg = d.red },
  Todo = { fg = a.com, bold = bold },

  ---- :help nvim-treesitter-highlights (external plugin) ----

  -- ['@comment'] = {},
  ['@comment.documentation'] = { fg = a.com, nocombine = true },

  -- ['@boolean'] = {},
  -- ['@float'] = {},
  -- ['@number'] = {},
  -- ['@character'] = {},
  -- ['@character.special'] = {},
  -- ['@string'] = {},
  ['@string.documentation'] = { fg = b.blue, nocombine = true },
  ['@string.escape'] = { fg = c.blue },
  ['@string.regex'] = { fg = b.blue },
  ['@string.special'] = { fg = b.cyan },

  -- ['@keyword'] = {},
  ['@keyword.function'] = 'PreProc',
  -- ['@keyword.operator'] = {},
  -- ['@keyword.return'] = {},
  -- ['@conditional'] = {},
  -- ['@conditional.ternary'] = {},
  -- ['@exception'] = {},
  -- ['@include'] = {},
  -- ['@repeat'] = {},

  ['@constant'] = 'Identifier', -- Highlighting all caps identifiers is dumb
  ['@constant.builtin'] = 'Constant',
  ['@constant.macro'] = 'Constant',
  ['@label'] = { fg = b.cyan },
  ['@symbol'] = { fg = a.fg, italic = italic },
  -- ['@namespace'] = {},
  -- ['@variable'] = {},
  ['@variable.builtin'] = '@symbol',

  -- ['@function'] = {},
  -- ['@function.builtin'] = {},
  ['@function.macro'] = 'Function',
  ['@constructor'] = 'Function',
  -- ['@method'] = {},
  -- ['@parameter'] = {},

  -- ['@type'] = {},
  -- ['@type.builtin'] = {},
  -- ['@type.definition'] = {},
  ['@type.qualifier'] = 'Statement',
  ['@storageclass'] = 'Statement',
  ['@storageclass.lifetime'] = '@label',
  -- ['@attribute'] = {}, -- unused
  -- ['@field'] = {},
  -- ['@property'] = {},

  -- ['@punctuation.bracket'] = {},
  ['@punctuation.delimiter'] = { fg = c.red },
  -- ['@punctuation.special'] = {},

  -- ['@text'] = {},
  ['@text.strong'] = { bold = bold },
  ['@text.emphasis'] = { italic = italic },
  ['@text.underline'] = { underline = underline },
  ['@text.strike'] = { strikethrough = strikethrough },
  -- ['@text.title'] = {},
  ['@text.quote'] = 'Comment',
  ['@text.uri'] = { fg = b.blue, underline = underline },
  -- ['@text.math'] = {},
  -- ['@text.environment'] = {},
  -- ['@text.environment.name'] = {},
  ['@text.reference'] = { underline = underline },
  ['@text.literal'] = { fg = a.com },
  -- ['@text.literal.block'] = {},
  -- ['@text.todo'] = {},
  -- ['@text.note'] = {},
  -- ['@text.warning'] = {},
  -- ['@text.danger'] = {},
  -- ['@text.diff.add'] = {},
  -- ['@text.diff.delete'] = {},

  -- ['@tag'] = {},
  ['@tag.attribute'] = '@label',
  ['@tag.delimiter'] = 'Delimiter',

  ---- :help diagnostic-highlight ----------------------------

  DiagnosticError = { fg = c.red },
  DiagnosticWarn = { fg = b.yellow },
  DiagnosticInfo = { fg = c.blue },
  DiagnosticHint = { fg = c.cyan },
  DiagnosticOk = { fg = c.green },
  DiagnosticUnderlineError = { undercurl = undercurl, sp = c.red },
  DiagnosticUnderlineWarn = { undercurl = undercurl, sp = b.yellow },
  DiagnosticUnderlineInfo = { undercurl = undercurl, sp = c.blue },
  DiagnosticUnderlineHint = { undercurl = undercurl, sp = c.cyan },
  DiagnosticUnderlineOk = { undercurl = undercurl, sp = c.green },
  -- DiagnosticVirtualTextError = {},
  -- DiagnosticVirtualTextWarn = {},
  -- DiagnosticVirtualTextInfo = {},
  -- DiagnosticVirtualTextHint = {},
  -- DiagnosticVirtualTextOk = {},
  -- DiagnosticFloatingError = {},
  -- DiagnosticFloatingWarn = {},
  -- DiagnosticFloatingInfo = {},
  -- DiagnosticFloatingHint = {},
  -- DiagnosticFloatingOk = {},
  -- DiagnosticSignError = {},
  -- DiagnosticSignWarn = {},
  -- DiagnosticSignInfo = {},
  -- DiagnosticSignHint = {},
  -- DiagnosticSignOk = {},

  DiagnosticDeprecated = { DiagnosticUnderlineError },
  DiagnosticUnnecessary = { fg = a.com, undercurl = undercurl },

  ---- :help lsp-highlight -----------------------------------

  -- LspReferenceText = 'Visual',
  -- LspReferenceRead = 'Visual',
  -- LspReferenceWrite = 'Visual',

  -- TODO: lsp-highlight-codelens

  ---- :help lsp-semantic-highlight --------------------------

  -- ['@lsp.type.class'] = 'Structure',
  -- ['@lsp.type.comment'] = 'Comment',
  -- ['@lsp.type.decorator'] = 'Function',
  -- ['@lsp.type.enum'] = 'Structure',
  -- ['@lsp.type.enumMember'] = 'Constant',
  -- ['@lsp.type.function'] = 'Function',
  -- ['@lsp.type.interface'] = 'Structure',
  ['@lsp.type.macro'] = 'Function',
  -- ['@lsp.type.method'] = 'Function',
  ['@lsp.type.namespace'] = { fg = c.green },
  ['@lsp.type.parameter'] = { fg = a.fg, bold = bold },
  -- ['@lsp.type.property'] = 'Identifier',
  -- ['@lsp.type.struct'] = 'Structure',
  -- ['@lsp.type.type'] = 'Type',
  -- ['@lsp.type.typeParameter'] = 'TypeDef',
  ['@lsp.type.variable'] = 'Identifier',

  ---- :help vimtex-syntax-reference (external plugin) -------

  texOptSep = '@punctuation.delimiter',
  texOptEqual = 'Operator',
  texFileArg = 'Constant',
  texTitleArg = { bold = bold },
  texRefArg = 'Constant',

  texMathCmd = 'Function',
  texMathSymbol = 'Operator',
  texMathZone = 'TSMath',
  texMathDelimZone = 'TSPunctDelimiter',
  texMathDelim = 'Delimiter',
  texMathEnvArgName = 'PreProc',

  --- neo-tree highlights  :help neo-tree-highlights ---

  NeoTreeNormal = 'NormalFloat',
  NeoTreeNormalNC = 'NeoTreeNormal',
  NeoTreeVertSplit = { bg = a.bg, fg = a.bg },
  NeoTreeWinSeparator = 'NeoTreeVertSplit',

  NeoTreeCursorLine = { bg = a.sel },

  --- netrw: there's no comprehensive list of highlights... --

  netrwClassify = 'Delimiter',
  netrwTreeBar = 'Delimiter',
  netrwExe = { fg = c.red },
  netrwSymLink = { fg = c.magenta },

  ---- :h gitsigns (external plugin) -------------------------

  GitSignsAdd = { fg = c.green },
  GitSignsChange = { fg = c.magenta },
  GitSignsDelete = { fg = c.red },
  GitSignsCurrentLineBlame = { fg = c.blue },

  SignifySignAdd = 'GitSignsAdd',
  SignifySignChange = 'GitSignsChange',
  SignifySignDelete = 'GitSignsDelete',

  ---- :h indent-blankline-highlights (external plugin) ------
  IndentBlanklineChar = { fg = a.sel, nocombine = true },
  IndentBlanklineSpaceChar = 'IndentBlanklineChar',
  IndentBlanklineSpaceCharBlankline = 'IndentBlanklineChar',
  IblIndent = { fg = a.sel, nocombine = true },
  IblWhitespace = 'IblIndent',
} do
  if type(attrs) == 'table' then
    vim.api.nvim_set_hl(0, name, attrs)
  else
    vim.api.nvim_set_hl(0, name, { link = attrs })
  end
end

-- See https://github.com/neovim/neovim/pull/7406
vim.g.terminal_color_0 = a.float
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_5 = c.magenta
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = a.com
vim.g.terminal_color_8 = a.ui
vim.g.terminal_color_9 = b.red
vim.g.terminal_color_10 = b.green
vim.g.terminal_color_11 = b.yellow
vim.g.terminal_color_12 = b.blue
vim.g.terminal_color_13 = b.magenta
vim.g.terminal_color_14 = b.cyan
vim.g.terminal_color_15 = a.fg

-- vi:nowrap
