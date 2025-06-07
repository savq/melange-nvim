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

local bold, italic, underline, undercurl, strikethrough
if vim.g.melange_enable_font_variants == true or vim.g.melange_enable_font_variants == nil then
  --- Enable all font attributes by default
  bold = true
  italic = true
  underline = true
  undercurl = true
  strikethrough = true
elseif type(vim.g.melange_enable_font_variants) == 'table' then
  --- Enable only selected font attributes
  bold = vim.g.melange_enable_font_variants.bold
  italic = vim.g.melange_enable_font_variants.italic
  underline = vim.g.melange_enable_font_variants.underline
  undercurl = vim.g.melange_enable_font_variants.undercurl
  strikethrough = vim.g.melange_enable_font_variants.strikethrough
end

for name, attrs in pairs {
  ---- :help highlight-default -------------------------------

  Normal = { fg = a.fg, bg = a.bg },
  NormalFloat = { bg = a.float },
  -- FloatBorder = { },
  FloatTitle = { fg = c.yellow, bg = a.float },
  FloatFooter = { fg = c.yellow, bg = a.float },
  -- NormalNC = {},

  -- Cursor = {},
  -- lCursor = {},
  -- CursorIM = {},
  -- TermCursor = {},

  ColorColumn = { bg = a.float },
  CursorColumn = 'ColorColumn',
  CursorLine = 'ColorColumn',
  WinSeparator = { fg = a.ui },

  LineNr = { fg = a.ui },
  -- LineNrAbove = {},
  -- LineNrBelow = {},
  CursorLineNr = { fg = c.yellow },
  -- CursorLineFold = {},
  -- CursorLineSign = {},

  Folded = { fg = a.com, bg = d.cyan },
  FoldColumn = 'LineNr',
  SignColumn = 'LineNr',

  Pmenu = 'NormalFloat',
  PmenuSel = { bg = a.sel },
  -- PmenuKind = {},
  -- PmenuKindSel = {},
  -- PmenuExtra = {},
  -- PmenuExtraSel = {},
  -- PmenuSbar = {},
  PmenuThumb = 'PmenuSel',
  PmenuMatch = { fg = b.yellow, bold = bold, bg = a.float },
  PmenuMatchSel = { fg = b.yellow, bold = bold, bg = a.sel },
  ComplMatchIns = 'Comment',
  WildMenu = 'NormalFloat',

  StatusLine = 'NormalFloat',
  StatusLineNC = { fg = a.com, bg = a.float },
  -- StatusLineTerm = {},
  -- StatusLineTermNC = {},
  TabLine = 'StatusLineNC',
  TabLineFill = 'StatusLine',
  TabLineSel = { bg = a.float, bold = bold },
  -- WinBar = {},
  -- WinBarNC = {},

  -- CurSearch = {},
  -- IncSearch = {},
  MatchParen = { fg = b.yellow, bg = a.sel, bold = bold },
  Search = { fg = a.bg, bg = d.yellow, bold = bold },
  Substitute = { bg = d.red, bold = bold },
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

  QuickFixLine = 'PmenuMatch',
  qfFileName = '@string.special.path',

  -- SnippetTabstop = {},

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

  ---- :help treesitter-highlight-groups  --------------------

  ['@variable'] = 'Identifier',
  ['@variable.builtin'] = '@string.special.symbol',
  -- ['@variable.parameter'] = {},
  -- ['@variable.parameter.builtin'] = {},
  -- ['@variable.member'] = {},

  --- NOTE: Queries for these highlight groups are really hacky.
  --- Inaccurate syntax highlighting is worse than no highlighting at all,
  ['@constant'] = 'Identifier',
  ['@constant.builtin'] = 'Constant',
  ['@constant.macro'] = 'Constant',

  ['@module'] = 'Identifier',
  ['@module.builtin'] = '@module',
  ['@label'] = { fg = b.cyan },

  -- ['@string'] = {},
  ['@string.documentation'] = { fg = b.blue, nocombine = true },
  ['@string.escape'] = { fg = c.blue },
  ['@string.regexp'] = { fg = b.blue },
  ['@string.special'] = { fg = b.cyan },
  ['@string.special.symbol'] = { fg = a.fg, italic = italic },
  ['@string.special.path'] = { fg = c.blue },
  ['@string.special.url'] = '@string.special.path',

  -- ['@character'] = {},
  -- ['@character.special'] = {},

  -- ['@boolean'] = {},
  -- ['@number'] = {},
  -- ['@number.float'] = {},

  -- ['@type'] = {},
  ['@type.builtin'] = '@type',
  -- ['@type.definition'] = {},

  -- ['@attribute'] = {},
  -- ['@attribute.builtin'] = {},
  -- ['@property'] = {},

  -- ['@function'] = {},
  ['@function.builtin'] = '@function',
  ['@function.macro'] = '@function',
  -- ['@function.method'] = {},
  ['@constructor'] = '@function',
  -- ['@operator'] = {},

  -- ['@keyword'] = {},
  -- ['@keyword.coroutine'] = {},
  ['@keyword.function'] = 'PreProc',
  -- ['@keyword.operator'] = {},
  ['@keyword.import'] = 'PreProc',
  -- ['@keyword.type'] = {},
  -- ['@keyword.modifier'] = {},
  -- ['@keyword.repeat'] = {},
  -- ['@keyword.return'] = {},
  -- ['@keyword.debug'] = {},
  -- ['@keyword.exception'] = {},
  -- ['@keyword.conditional'] = {},
  -- ['@keyword.conditional.ternary'] = {},
  ['@keyword.directive'] = 'PreProc',
  -- ['@keyword.directive.define'] = {},

  -- ['@punctuation.bracket'] = {},
  ['@punctuation.delimiter'] = { fg = c.red },
  -- ['@punctuation.special'] = {},

  -- ['@comment'] = {},
  ['@comment.documentation'] = { fg = a.com, nocombine = true },
  ['@comment.error'] = 'Todo',
  ['@comment.note'] = 'Todo',
  ['@comment.todo'] = 'Todo',
  ['@comment.warning'] = 'Todo',

  ['@markup.italic'] = { italic = italic },
  ['@markup.strong'] = { bold = bold },
  ['@markup.strikethrough'] = { strikethrough = strikethrough },
  ['@markup.underline'] = { underline = underline },

  ['@markup.heading'] = 'Title',
  -- ['@markup.heading.1'] = {},
  ['@markup.heading.2'] = { fg = b.yellow },
  ['@markup.heading.3'] = { fg = b.green },
  ['@markup.heading.4'] = { fg = b.cyan },
  -- ['@markup.heading.5'] = {},
  -- ['@markup.heading.6'] = {},

  ['@markup.quote'] = 'Comment',
  -- ['@markup.math'] = {}, -- TODO

  ['@markup.link'] = { underline = underline },
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
  -- ['@tag.builtin'] = {},
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

  DiagnosticDeprecated = 'DiagnosticUnderlineError',
  DiagnosticUnnecessary = { undercurl = undercurl, sp = a.com },

  ---- :help lsp-highlight -----------------------------------

  --- TODO: Check
  -- LspReferenceText = 'Visual',
  -- LspReferenceRead = {},
  -- LspReferenceWrite = {},
  -- LspReferenceTarget = {},
  -- LspInlayHint = {},
  -- LspCodeLens = {},
  -- LspCodeLensSeparator = {},
  -- LspSignatureActiveParameter = {},

  ---- :help lsp-semantic-highlight --------------------------

  -- ['@lsp.type.class'] = {},
  -- ['@lsp.type.comment'] = {},
  -- ['@lsp.type.decorator'] = {},
  -- ['@lsp.type.enum'] = {},
  ['@lsp.type.enumMember'] = 'Constant',
  -- ['@lsp.type.function'] = {},
  -- ['@lsp.type.interface'] = {},
  ['@lsp.type.macro'] = {},
  -- ['@lsp.type.method'] = {},
  ['@lsp.type.namespace'] = { fg = c.green },
  -- ['@lsp.type.number'] = {},
  -- ['@lsp.type.operator'] = {},
  ['@lsp.type.parameter'] = { fg = a.fg, bold = bold },
  -- ['@lsp.type.property'] = {},
  -- ['@lsp.type.struct'] = {},
  -- ['@lsp.type.type'] = {},
  -- ['@lsp.type.typeParameter'] = {},
  -- ['@lsp.type.variable'] = {},

  ['@lsp.typemod.comment.documentation'] = '@comment.documentation',
  -- ['@lsp.typemod.variable.functionScope'] = {},
  ['@lsp.typemod.variable.globalScope'] = { italic = italic },

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

  texItemLabelConcealed = '@label',

  --- markdown syntax highlights (builtin) ---

  markdownCode = { link = 'String' },
  markdownCodeBlock = { link = 'String' },

  --- neo-tree highlights  :help neo-tree-highlights ---

  NeoTreeFloatBorder = 'Normal',
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

  ---- :h blink-cmp-config-appearance (external plugin) ------
  -- BlinkCmpLabel = {},
  BlinkCmpLabelMatch = { fg = b.yellow, bold = bold },
  -- BlinkCmpLabelDeprecated = {},
  -- BlinkCmpLabelDetail = {},
  -- BlinkCmpLabelDescription = {},
  -- BlinkCmpSource = {},
  -- BlinkCmpKind = {},
  BlinkCmpKindText = '@text',
  BlinkCmpKindMethod = '@method',
  BlinkCmpKindFunction = '@function',
  BlinkCmpKindConstructor = '@constructor',
  BlinkCmpKindField = '@field',
  BlinkCmpKindVariable = '@variable',
  BlinkCmpKindClass = '@type',
  BlinkCmpKindInterface = '@type',
  BlinkCmpKindModule = '@namespace',
  BlinkCmpKindProperty = '@property',
  BlinkCmpKindUnit = '@constant',
  BlinkCmpKindValue = '@constant',
  BlinkCmpKindEnum = '@field',
  BlinkCmpKindKeyword = '@keyword',
  BlinkCmpKindSnippet = '@string.special',
  BlinkCmpKindColor = '@constant',
  BlinkCmpKindFile = '@string.special.path',
  BlinkCmpKindReference = '@type',
  BlinkCmpKindFolder = '@string.special.path',
  BlinkCmpKindEnumMember = '@field',
  BlinkCmpKindConstant = '@constant',
  BlinkCmpKindStruct = '@type',
  BlinkCmpKindEvent = '@type',
  BlinkCmpKindOperator = '@operator',
  BlinkCmpKindTypeParameter = '@type',
  -- BlinkCmpScrollBarThumb = {},
  -- BlinkCmpScrollBarGutter = {},
  -- BlinkCmpGhostText = {},
  -- BlinkCmpMenu = {},
  -- BlinkCmpMenuBorder = {},
  -- BlinkCmpMenuSelection = {},
  -- BlinkCmpDoc = {},
  -- BlinkCmpDocBorder = {},
  -- BlinkCmpDocSeparator = {},
  -- BlinkCmpDocCursorLine = {},
  -- BlinkCmpSignatureHelp = {},
  -- BlinkCmpSignatureHelpBorder = {},
  -- BlinkCmpSignatureHelpActiveParameter = {},

  ---- :h cmp-highlight (external plugin) -------------------
  CmpItemAbbrMatch = { fg = b.yellow, bold = bold },
  CmpItemAbbrMatchFuzzy = { fg = b.yellow, bold = bold },
  CmpItemKindVariable = '@variable',
  CmpItemKindValue = '@constant',
  CmpItemKindUnit = '@constant',
  CmpItemKindTypeParameter = '@type',
  CmpItemKindText = '@text',
  CmpItemKindStruct = '@type',
  CmpItemKindSnippet = '@string.special',
  CmpItemKindReference = '@type',
  CmpItemKindProperty = '@property',
  CmpItemKindOperator = '@operator',
  CmpItemKindModule = '@namespace',
  CmpItemKindMethod = '@method',
  CmpItemKindKeyword = '@keyword',
  CmpItemKindInterface = '@type',
  CmpItemKindFunction = '@function',
  CmpItemKindFolder = '@string.special.path',
  CmpItemKindFile = '@string.special.path',
  CmpItemKindField = '@field',
  CmpItemKindEvent = '@type',
  CmpItemKindEnumMember = '@field',
  CmpItemKindEnum = '@type',
  CmpItemKindConstructor = '@constructor',
  CmpItemKindConstant = '@constant',
  CmpItemKindColor = '@constant',
  CmpItemKindClass = '@type',

  ---- :help rb-delimiters-colors (rainbow-delimiters.nvim) --

  RainbowDelimiterRed = { fg = b.red },
  RainbowDelimiterYellow = { fg = b.yellow },
  RainbowDelimiterBlue = { fg = b.blue },
  RainbowDelimiterOrange = { fg = c.yellow },
  RainbowDelimiterGreen = { fg = b.green },
  RainbowDelimiterViolet = { fg = c.magenta },
  RainbowDelimiterCyan = { fg = b.cyan },

  --- mini.nvim highlights  :help mini.nvim ------------------
  --- Highlight groups from the contributing guide:
  --- https://github.com/echasnovski/mini.nvim/blob/main/CONTRIBUTING.md

  -- MiniAnimateCursor = {},
  -- MiniAnimateNormalFloat = {},

  -- MiniClueBorder = {},
  -- MiniClueDescGroup = {},
  -- MiniClueDescSingle = {},
  -- MiniClueNextKey = {},
  -- MiniClueNextKeyWithPostkeys = {},
  -- MiniClueSeparator = {},
  -- MiniClueTitle = {},

  -- MiniCompletionActiveParameter = {},
  -- MiniCompletionInfoBorderOutdated = {},

  -- MiniCursorword = {},
  -- MiniCursorwordCurrent = {},

  MiniDepsChangeAdded = { link = 'DiffAdd' },
  MiniDepsChangeRemoved = { link = 'DiffDelete' },
  -- MiniDepsHint = {},
  -- MiniDepsInfo = {},
  -- MiniDepsMsgBreaking = {},
  -- MiniDepsPlaceholder = {},
  -- MiniDepsTitle = {},
  -- MiniDepsTitleError = {},
  -- MiniDepsTitleSame = {},
  -- MiniDepsTitleUpdate = {},

  MiniDiffSignAdd = { fg = b.green },
  MiniDiffSignChange = { fg = b.magenta },
  MiniDiffSignDelete = { fg = b.red },
  -- MiniDiffOverAdd = {},
  -- MiniDiffOverChange = {},
  -- MiniDiffOverChangeBuf = {},
  -- MiniDiffOverContext = {},
  -- MiniDiffOverContextBuf = {},
  -- MiniDiffOverDelete = {},

  -- MiniFilesBorder = {},
  -- MiniFilesBorderModified = {},
  MiniFilesCursorLine = { bg = a.sel },
  MiniFilesDirectory = { fg = b.cyan },
  MiniFilesFile = { fg = a.fg },
  -- MiniFilesNormal = {},
  MiniFilesTitle = { fg = a.ui, bg = a.float },
  MiniFilesTitleFocused = { fg = c.yellow, bg = a.float },

  -- MiniHipatternsFixme = {},
  -- MiniHipatternsHack = {},
  -- MiniHipatternsNote = {},
  -- MiniHipatternsTodo = {},

  MiniIconsAzure = { fg = b.blue },
  MiniIconsBlue = { fg = c.blue },
  MiniIconsCyan = { fg = c.cyan },
  MiniIconsGreen = { fg = c.green },
  MiniIconsGrey = { fg = a.fg },
  MiniIconsOrange = { fg = d.yellow },
  MiniIconsPurple = { fg = c.magenta },
  MiniIconsRed = { fg = b.red },
  MiniIconsYellow = { fg = b.yellow },

  MiniIndentscopeSymbol = { fg = a.sel },
  -- MiniIndentscopeSymbolOff = {},

  -- MiniJump = {},

  MiniJump2dSpot = { fg = c.magenta, bold = true, nocombine = true },
  MiniJump2dSpotAhead = { fg = c.cyan, bg = c.float, nocombine = true },
  -- MiniJump2dSpotUnique = {},
  -- MiniJump2dDim = {},

  -- MiniMapNormal = {},
  -- MiniMapSymbolCount = {},
  -- MiniMapSymbolLine = {},
  -- MiniMapSymbolView = {},

  -- MiniNotifyBorder = {},
  -- MiniNotifyNormal = {},
  -- MiniNotifyLspProgress = {},
  -- MiniNotifyTitle = {},

  -- MiniOperatorsExchangeFrom = {},

  -- MiniPickBorder = {},
  -- MiniPickBorderBusy = {},
  -- MiniPickBorderText = {},
  -- MiniPickCursor = {},
  MiniPickIconDirectory = { fg = b.cyan },
  -- MiniPickIconFile = {},
  -- MiniPickHeader = {},
  MiniPickMatchCurrent = { bg = a.sel },
  -- MiniPickMatchMarked = {},
  -- MiniPickMatchRanges = {},
  -- MiniPickNormal = {},
  -- MiniPickPreviewLine = {},
  -- MiniPickPreviewRegion = {},
  MiniPickPrompt = { fg = b.yellow, bg = a.float },
  -- MiniPickPromptCaret = {},
  -- MiniPickPromptPrefix = {},

  -- MiniSnippetsCurrent = {},
  -- MiniSnippetsCurrentReplace = {},
  -- MiniSnippetsCurrentFinal = {},
  -- MiniSnippetsCurrentUnvisited = {},
  -- MiniSnippetsCurrentVisited = {},

  -- MiniStarterCurrent = {},
  MiniStarterFooter = { fg = c.yellow },
  -- MiniStarterHeader = {},
  -- MiniStarterInactive = {},
  -- MiniStarterItem = {},
  -- MiniStarterItemBullet = {},
  MiniStarterItemPrefix = { fg = c.red },
  MiniStarterSection = { fg = c.green },
  MiniStarterQuery = { fg = c.blue },

  MiniStatuslineDevinfo = { fg = a.fg, bg = a.sel },
  MiniStatuslineFileinfo = { fg = a.fg, bg = a.sel },
  MiniStatuslineFilename = { fg = a.ui, bg = a.bg },
  -- MiniStatuslineInactive = {},
  MiniStatuslineModeCommand = { fg = a.float, bg = b.green, bold = true },
  MiniStatuslineModeInsert = { fg = a.float, bg = b.red, bold = true },
  MiniStatuslineModeNormal = { fg = a.float, bg = a.com, bold = true },
  MiniStatuslineModeOther = { fg = a.float, bg = b.red, bold = true },
  MiniStatuslineModeReplace = { fg = a.float, bg = b.magenta, bold = true },
  MiniStatuslineModeVisual = { fg = a.float, bg = b.yellow, bold = true },

  -- MiniSurround = {},

  -- MiniTablineCurrent = {},
  -- MiniTablineVisible = {},
  -- MiniTablineHidden = {},
  -- MiniTablineModifiedCurrent = {},
  -- MiniTablineModifiedVisible = {},
  -- MiniTablineModifiedHidden = {},
  -- MiniTablineTabpagesection = {},
  -- MiniTablineTrunc = {},
  MiniTablineFill = { link = 'TabLineFill' },

  -- MiniTestEmphasis = {},
  MiniTestFail = { fg = d.red, bold = true },
  MiniTestPass = { fg = d.green, bold = true },

  MiniTrailspace = { link = 'DiffRemoved' },
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
