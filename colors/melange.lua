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

local fv
if vim.g.melange_enable_font_variants == true or
   vim.g.melange_enable_font_variants == nil
then
  fv = {
    bold = true,
    italic = true,
    underline = true,
    undercurl = true,
    strikethrough = true,
  }
elseif vim.g.melange_enable_font_variants == false
then
  fv = {
    bold = false,
    italic = false,
    underline = false,
    undercurl = false,
    strikethrough = false,
  }
else
  fv = vim.g.melange_enable_font_variants
end

for name, attrs in pairs {
  ---- :help highlight-default -------------------------------

  Normal = { fg = a.fg, bg = a.bg },
  NormalFloat = { bg = a.float },
  -- NormalNC = {},

  -- Cursor = {},
  -- lCursor = {},
  -- CursorIM = {},
  -- TermCursor = {},
  TermCursorNC = { bg = a.sel },

  ColorColumn = { bg = a.float },
  CursorColumn = 'ColorColumn',
  CursorLine = 'ColorColumn',
  VertSplit = { fg = a.ui },
  WinSeparator = { fg = a.ui },

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
  TabLineSel = { bg = a.float, bold = fv.bold },

  MatchParen = { fg = b.yellow, bg = a.sel, bold = fv.bold },
  Search = { fg = a.bg, bg = d.yellow, bold = fv.bold },
  Substitute = { bg = d.red, bold = fv.bold },
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
  MoreMsg = { fg = c.green, bold = fv.bold },
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

  SpellBad = { fg = c.red, undercurl = fv.undercurl },
  SpellCap = { fg = c.blue, undercurl = fv.undercurl },
  SpellLocal = { fg = c.yellow, undercurl = fv.undercurl },
  SpellRare = { fg = b.yellow, undercurl = fv.undercurl },

  ---- :help group-name --------------------------------------

  Comment = { fg = a.com, italic = fv.italic },
  Identifier = { fg = a.fg },
  Function = { fg = b.yellow },
  Constant = { fg = c.magenta },
  String = { fg = b.blue, italic = fv.italic },
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

  Underlined = { underline = fv.underline },
  Bold = { bold = fv.bold },
  Italic = { italic = fv.italic },

  Ignore = { fg = a.ui },
  Error = { bg = d.red },
  Todo = { fg = a.com, bold = fv.bold },

  ---- :help nvim-treesitter-highlights (external plugin) ----

  -- ['@boolean'] = {},
  -- ['@number'] = {},
  -- ['@number.float'] = {},

  -- ['@character'] = {},
  -- ['@character.special'] = {},
  -- ['@string'] = {},
  ['@string.documentation'] = { fg = b.blue, nocombine = true },
  ['@string.escape'] = { fg = c.blue },
  ['@string.regexp'] = { fg = b.blue },
  ['@string.special'] = { fg = b.cyan },
  ['@string.special.symbol'] = { fg = a.fg, italic = fv.italic },
  ['@string.special.path'] = { fg = c.blue },
  ['@string.special.url'] = '@string.special.path',

  -- ['@keyword'] = {},
  -- ['@keyword.conditional'] = {},
  -- ['@keyword.conditional.ternary'] = {},
  -- ['@keyword.coroutine'] = {},
  -- ['@keyword.debug'] = {},
  ['@keyword.directive'] = 'PreProc',
  -- ['@keyword.directive.define'] = {},
  -- ['@keyword.exception'] = {},
  ['@keyword.function'] = 'PreProc',
  ['@keyword.import'] = 'PreProc',
  -- ['@keyword.operator'] = {},
  -- ['@keyword.repeat'] = {},
  -- ['@keyword.return'] = {},
  -- ['@keyword.storage'] = {},

  --- NOTE: Queries for these highlight groups are really hacky.
  --- Inaccurate syntax highlighting is worse than no highlighting at all,
  ['@constant'] = 'Identifier',
  ['@constant.builtin'] = 'Constant',
  ['@constant.macro'] = 'Constant',
  ['@module'] = 'Identifier',
  ['@module.builtin'] = '@module',
  ['@label'] = { fg = b.cyan },
  ['@variable'] = 'Identifier',
  ['@variable.builtin'] = '@string.special.symbol',
  -- ['@variable.parameter'] = {},
  -- ['@variable.member'] = {},

  -- ['@type'] = {},
  -- ['@type.builtin'] = {},
  -- ['@type.definition'] = {},
  ['@type.qualifier'] = 'Statement',
  -- ['@attribute'] = {},
  -- ['@property'] = {},

  -- ['@function'] = {},
  -- ['@function.builtin'] = {},
  -- ['@function.macro'] = {},
  -- ['@function.method'] = {},
  -- ['@constructor'] = {},

  -- ['@punctuation.bracket'] = {},
  ['@punctuation.delimiter'] = { fg = c.red },
  -- ['@punctuation.special'] = {},

  -- ['@comment'] = {},
  ['@comment.documentation'] = { fg = a.com, nocombine = true },
  ['@comment.error'] = 'Todo',
  ['@comment.note'] = 'Todo',
  ['@comment.todo'] = 'Todo',
  ['@comment.warning'] = 'Todo',

  -- ['@markup'] = {},
  ['@markup.heading'] = 'Title',
  ['@markup.italic'] = { italic = fv.italic },
  ['@markup.strong'] = { bold = fv.bold },
  ['@markup.strike'] = { strikethrough = fv.strikethrough },
  ['@markup.underline'] = { underline = fv.underline },
  ['@markup.quote'] = 'Comment',
  -- ['@markup.math'] = {}, -- TODO
  -- ['@markup.environment'] = {},
  ['@markup.link'] = { underline = fv.underline },
  -- ['@markup.link.label'] = {},
  ['@markup.link.url'] = '@string.special.url',
  ['@markup.raw'] = { fg = a.com },
  -- ['@markup.raw.block'] = {},
  ['@markup.list'] = 'Delimiter',
  -- ['@markup.list.checked'] = {},
  -- ['@markup.list.unchecked'] = {},

  ['@diff.plus'] = 'DiffAdd',
  ['@diff.minus'] = 'DiffDelete',
  ['@diff.delta'] = 'DiffChange',

  -- ['@tag'] = {},
  ['@tag.attribute'] = '@label',
  ['@tag.delimiter'] = 'Delimiter',

  ---- :help diagnostic-highlight ----------------------------

  DiagnosticError = { fg = c.red },
  DiagnosticWarn = { fg = b.yellow },
  DiagnosticInfo = { fg = c.blue },
  DiagnosticHint = { fg = c.cyan },
  DiagnosticOk = { fg = c.green },
  DiagnosticUnderlineError = { undercurl = fv.undercurl, sp = c.red },
  DiagnosticUnderlineWarn = { undercurl = fv.undercurl, sp = b.yellow },
  DiagnosticUnderlineInfo = { undercurl = fv.undercurl, sp = c.blue },
  DiagnosticUnderlineHint = { undercurl = fv.undercurl, sp = c.cyan },
  DiagnosticUnderlineOk = { undercurl = fv.undercurl, sp = c.green },
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
  DiagnosticUnnecessary = { fg = a.com, undercurl = fv.undercurl },

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
  ['@lsp.type.parameter'] = { fg = a.fg, bold = fv.bold },
  -- ['@lsp.type.property'] = 'Identifier',
  -- ['@lsp.type.struct'] = 'Structure',
  -- ['@lsp.type.type'] = 'Type',
  -- ['@lsp.type.typeParameter'] = 'TypeDef',
  ['@lsp.type.variable'] = 'Identifier',

  ---- :help vimtex-syntax-reference (external plugin) -------

  texOptSep = '@punctuation.delimiter',
  texOptEqual = 'Operator',
  texFileArg = 'Constant',
  texTitleArg = { bold = fv.bold },
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

  ---- :h ibl.highlights (external plugin) -------------------
  IblIndent = { fg = a.sel, nocombine = true },
  IblWhitespace = 'IblIndent',
  IndentBlanklineChar = 'IblIndent', -- Deprecated?
  IndentBlanklineSpaceChar = 'IndentBlanklineChar',
  IndentBlanklineSpaceCharBlankline = 'IndentBlanklineChar',
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
