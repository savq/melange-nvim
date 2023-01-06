vim.cmd 'highlight clear'
vim.cmd 'syntax reset'
vim.g.colors_name = 'melange'

local bg = vim.opt.background:get()
local palette = require('melange/palettes/' .. bg)

local a = palette.a
local b = palette.b
local c = palette.c
local d = palette.d

-- Font variants (TODO Deprecate global variable)
local bf, it, underline, undercurl, strikethrough
if vim.g.melange_enable_font_variants ~= 0 then
  bold = true
  italic = true
  underline = true
  undercurl = true
  strikethrough = true
end

local highlight_groups = {

  ---- :help highlight-default -------------------------------

  Normal = { fg = a.fg, bg = a.bg },
  NormalFloat = { bg = a.overbg },
  -- NormalNC = { },

  -- Cursor = { },
  -- lCursor = { },
  -- CursorIM = { },
  -- TermCursor = { },
  -- TermCursorNC = { },

  ColorColumn = { bg = a.overbg },
  CursorColumn = 'ColorColumn',
  CursorLine = 'ColorColumn',
  VertSplit = { fg = a.sel },

  LineNr = { fg = a.sel },
  CursorLineNr = { fg = c.yellow },

  Folded = { fg = a.com, bg = a.overbg },
  FoldColumn = 'LineNr',
  SignColumn = 'LineNr',

  Pmenu = 'NormalFloat',
  PmenuSel = { bg = a.sel },
  PmenuSbar = 'Pmenu',
  PmenuThumb = 'PmenuSel',

  StatusLine = 'NormalFloat',
  StatusLineNC = { bg = a.overbg, fg = a.faded },
  WildMenu = 'NormalFloat',

  TabLine = 'StatusLineNC',
  TabLineFill = 'StatusLine',
  TabLineSel = { bg = a.overbg, bold = bold },

  MatchParen = { fg = b.yellow, bg = a.sel, bold = bold },
  Substitute = { fg = a.bg, bg = d.yellow },
  Search = { fg = a.bg, bg = d.yellow },
  -- QuickFixLine = { },
  -- IncSearch = { },
  Visual = { bg = a.sel },
  -- VisualNOS = { },

  Conceal = { fg = a.faded },
  Whitespace = { fg = a.sel },
  EndOfBuffer = 'Whitespace',
  NonText = 'Whitespace',
  SpecialKey = 'Whitespace',

  Directory = { fg = c.cyan },
  Title = { fg = c.yellow },
  ErrorMsg = { bg = d.red },
  ModeMsg = { fg = a.faded },
  -- MsgArea = { },
  -- MsgSeparator = { },
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
  Character = { fg = b.blue },
  Number = { fg = b.magenta },
  Boolean = { fg = b.magenta },
  -- Float = { },

  Statement = { fg = c.yellow },
  -- Conditional = { },
  -- Repeat = { },
  -- Label = { },
  Operator = { fg = b.red },
  -- Keyword = { },
  -- Exception = { },

  PreProc = { fg = b.green },
  -- Include = { },
  -- Define = { },
  -- Macro = { },
  -- PreCondit = { },

  Type = { fg = c.cyan },
  -- StorageClass = { },
  -- Structure = { },
  -- Typedef = { },

  Special = { fg = b.yellow },
  SpecialChar = { fg = b.cyan },
  -- Tag = { },
  Delimiter = { fg = d.yellow },
  -- SpecialComment = { },
  -- Debug = { },

  Underlined = { underline = underline },
  Bold = { bold = bold },
  Italic = { italic = italic },

  Ignore = { fg = a.com },
  Error = { bg = d.red },
  Todo = { fg = a.faded, bold = bold },

  ---- :help nvim-treesitter-highlights (external plugin) ----

  -- ['@boolean'] = { },
  -- ['@float'] = { },
  -- ['@number'] = { },
  -- ['@character'] = { },
  -- ['@character.special'] = { },
  -- ['@string'] = { },
  -- ['@string.regex'] = { },
  ['@string.escape'] = { fg = c.blue },
  -- ['@string.special'] = { },

  -- ['@keyword'] = { },
  ['@keyword.function'] = 'PreProc',
  -- ['@keyword.operator'] = { },
  -- ['@keyword.return'] = { },
  -- ['@conditional'] = { },
  -- ['@conditional.ternary'] = { },
  -- ['@exception'] = { },
  -- ['@include'] = { },
  -- ['@repeat'] = { },

  -- ['@constant'] = { },
  ['@constant.builtin'] = { fg=c.magenta, italic = italic },
  ['@constant.macro'] = 'Constant',
  ['@label'] = { fg = b.cyan },
  ['@symbol'] = { fg = a.fg, italic = italic },
  -- ['@namespace'] = { },
  -- ['@variable'] = { },
  ['@variable.builtin'] = '@symbol',

  -- ['@function'] = { },
  -- ['@function.builtin'] = { },
  ['@function.macro'] = 'Function',
  ['@constructor'] = 'Function',
  -- ['@method'] = { },
  -- ['@parameter'] = { },

  -- ['@type'] = { },
  -- ['@type.builtin'] = { },
  -- ['@type.definition'] = { },
  ['@type.qualifier'] = 'Keyword',
  -- ['@storageclass'] = { },
  -- ['@attribute'] = { }, -- unused
  -- ['@field'] = { },
  -- ['@property'] = { },

  ['@punctuation.delimiter'] = { fg = c.red },
  -- ['@punctuation.bracket'] = { },
  -- ['@punctuation.special'] = { },

  -- ['@text'] = {},
  ['@text.strong'] = { bold = bold },
  ['@text.emphasis'] = { italic = italic },
  ['@text.underline'] = { underline = underline },
  ['@text.strike'] = { strikethrough = strikethrough },
  -- ['@text.title'] = {},
  ['@text.literal'] = { fg = a.com },
  ['@text.uri'] = { fg = b.blue, underline = underline },
  -- ['@text.math'] = {},
  -- ['@text.environment'] = {},
  ['@text.environment.name'] = 'PreProc',
  ['@text.reference'] = { fg = c.magenta },
  -- ['@text.todo'] = {},
  -- ['@text.note'] = {},
  -- ['@text.warning'] = {},
  -- ['@text.danger'] = {},
  -- ['@text.diff.add'] = {},
  -- ['@text.diff.delete'] = {},

  -- ['@tag'] = {},
  -- ['@tag.attribute'] = {},
  -- ['@tag.delimiter'] = {},

  ---- :help diagnostic-highlight ----------------------------

  DiagnosticError = { fg = c.red },
  DiagnosticWarn = { fg = b.yellow },
  DiagnosticInfo = { fg = b.blue },
  DiagnosticHint = { fg = b.green },
  -- DiagnosticVirtualTextError = 'DiagnosticError',
  -- DiagnosticVirtualTextWarn = { DiagnosticWarn  },
  -- DiagnosticVirtualTextInfo = { DiagnosticInfo  },
  -- DiagnosticVirtualTextHint = { DiagnosticHint  },
  DiagnosticUnderlineError = { undercurl = undercurl },
  DiagnosticUnderlineWarn = { undercurl = undercurl },
  DiagnosticUnderlineInfo = { undercurl = undercurl },
  DiagnosticUnderlineHint = { undercurl = undercurl },
  -- DiagnosticFloatingError = 'DiagnosticError',
  -- DiagnosticFloatingWarn = { DiagnosticWarn  },
  -- DiagnosticFloatingInfo = { DiagnosticInfo  },
  -- DiagnosticFloatingHint = { DiagnosticHint  },
  -- DiagnosticSignError = 'DiagnosticError',
  -- DiagnosticSignWarn = { DiagnosticWarn  },
  -- DiagnosticSignInfo = { DiagnosticInfo  },
  -- DiagnosticSignHint = { DiagnosticHint  },

  ---- :help lsp-highlight -----------------------------------

  LspReferenceText = 'Visual',
  LspReferenceRead = 'Visual',
  LspReferenceWrite = 'Visual',
  -- TODO: lsp-highlight-codelens

  --- :help vimtex-syntax-reference (external plugin) --------

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
}

for name, attrs in pairs(highlight_groups) do
  if type(attrs) == 'table' then
    vim.api.nvim_set_hl(0, name, attrs)
  elseif type(attrs) == 'string' then
    vim.api.nvim_set_hl(0, name, { link = attrs })
  end
end

-- vi:nowrap
