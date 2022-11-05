-- This file returns a function to keep things state-less.
-- For details on the structure of a palette, see `lua/melange/palettes.lua`
return function(palette, enable_font_variants)
  local a = palette.a
  local b = palette.b
  local c = palette.c
  local d = palette.d

  local bf, it, uline, ucurl
  if enable_font_variants then
    bf = true
    it = true
    uline = true -- underline
    ucurl = true -- undercurl
  end

  return {

    ---- :help highlight-default -------------------------------
    Normal = { fg = a.fg, bg = a.bg },
    NormalFloat = { bg = a.overbg },
    -- NormalNC     = { },

    -- Cursor       = { },
    -- lCursor      = { },
    -- CursorIM     = { },
    -- TermCursor   = { },
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
    StatusLineNC = { fg = a.faded, bg = a.overbg },
    WildMenu = 'NormalFloat',

    TabLine = 'StatusLineNC',
    TabLineFill = 'StatusLine',
    TabLineSel = { link = 'StatusLine', bold = bf },

    MatchParen = { fg = b.yellow, bg = a.sel, bold = bf },
    Substitute = { fg = a.bg, bg = d.yellow },
    Search = { fg = a.bg, bg = d.yellow },
    -- QuickFixLine = { },
    -- IncSearch    = { },
    Visual = { bg = a.sel },
    -- VisualNOS    = { },

    Conceal = { fg = a.faded },
    Whitespace = { fg = a.sel },
    EndOfBuffer = 'Whitespace',
    NonText = 'Whitespace',
    SpecialKey = 'Whitespace',

    Directory = { fg = c.cyan },
    Title = { fg = c.yellow },
    ErrorMsg = { bg = d.red },
    ModeMsg = { fg = a.faded },
    -- MsgArea      = { },
    -- MsgSeparator = { },
    MoreMsg = { fg = c.green, bold = bf },
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

    SpellBad = { fg = c.red, undercurl = ucurl },
    SpellCap = { fg = c.blue, undercurl = ucurl },
    SpellLocal = { fg = c.yellow, undercurl = ucurl },
    SpellRare = { fg = b.yellow, undercurl = ucurl },

    ---- :help group-name --------------------------------------

    Comment = { fg = a.com, italic = it },
    Identifier = { fg = a.fg },
    Function = { fg = b.yellow },

    Constant = { fg = c.magenta },
    String = { fg = b.blue, italic = it },
    Character = { fg = b.blue },
    Number = { fg = b.magenta },
    Boolean = { fg = b.magenta },
    -- Float          = { },

    Statement = { fg = c.yellow },
    -- Conditional    = { },
    -- Repeat         = { },
    -- Label          = { },
    Operator = { fg = b.red },
    -- Keyword        = { },
    -- Exception      = { },

    PreProc = { fg = b.green },
    -- Include        = { },
    -- Define         = { },
    -- Macro          = { },
    -- PreCondit      = { },

    Type = { fg = c.cyan },
    -- StorageClass   = { },
    -- Structure      = { },
    -- Typedef        = { },

    Special = { fg = b.yellow },
    SpecialChar = { fg = b.cyan },
    -- Tag            = { },
    Delimiter = { fg = d.yellow },
    -- SpecialComment = { },
    -- Debug          = { },

    Underlined = { underline = uline },
    Bold = { bold = bf },
    Italic = { italic = it },

    Ignore = { fg = a.com },
    Error = { bg = d.red },
    Todo = { link = 'Comment', fg = a.faded },

    ---- :help nvim-treesitter-highlights (external plugin) ----

    -- ['@annotation']          = { },
    -- ['@attribute']           = { },
    -- ['@boolean']             = { },
    -- ['@character']           = { },
    -- ['@comment']             = { },
    -- ['@conditional']         = { },
    -- ['@constant']            = { },
    ['@constant.builtin']       = { link = 'Constant', italic = it },
    ['@constant.macro']         = 'Constant',
    -- ['@constructor']         = { },
    ['@error']               = { undercurl=ucurl },
    -- ['@exception']           = { },
    -- ['@field']               = { },
    -- ['@float']               = { },
    -- ['@function']            = { },
    ['@function.builtin']    = 'Function',
    ['@function.macro']      = 'Function',
    -- ['@include']             = { },
    -- ['@keyword']             = { },
    ['@keyword.function']    = 'PreProc',
    -- ['@keyword.operator']    = { },
    -- ['@keyword.return']      = { },
    ['@label']               = { fg = b.cyan },
    -- ['@method']              = { },
    ['@namespace']           = { fg = c.green },
    -- ['@none']                = { },
    -- ['@number']              = { },
    -- ['@operator']            = { },
    -- ['@parameter']           = { },
    -- ['@parameter.reference'] = { },
    -- ['@property']            = { },
    ['@punctuation.delimiter']     = { fg = c.red },
    ['@punctuation.bracket']       = 'Delimiter',
    ['@punctuation.special']       = 'Delimiter',
    -- ['@repeat']              = { },
    -- ['@string']              = { },
    ['@string.escape']       = { fg = c.blue },
    -- ['@string.regex']        = { },
    -- ['@string.special']      = { },
    ['@symbol']              = { link = 'Identifier', italic = it },
    -- ['@type']                = { },
    -- ['@type.builtin']        = { },
    ['@variable']            = 'Identifier',
    ['@variable.builtin']    = { link = 'Identifier', italic = it },

    -- ['@tag']                 = { },
    -- ['@tag.delimiter']       = { },
    -- ['@text']                = { },
    ['@strong']              = { bold = bf },
    ['@emphasis']            = 'Italic',
    ['@underline']           = 'Underlined',
    ['@strike']              = { strikethrough = true },
    -- ['@title']               = { },
    -- ['@literal']             = { },
    ['@uri']                 = { link = 'String', underline = uline },
    ['@math']                = { fg = b.cyan },
    -- ['@text.reference']      = { },
    ['@environment']         = 'Statement',
    ['@environment.name']    = 'PreProc',
    -- ['@note']                = { },
    -- ['@warning']             = { },
    -- ['@danger']              = { },

    ---- :help diagnostic-highlight ----------------------------

    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = b.yellow },
    DiagnosticInfo = { fg = b.blue },
    DiagnosticHint = { fg = b.green },
    -- DiagnosticVirtualTextError = 'DiagnosticError',
    -- DiagnosticVirtualTextWarn  = { DiagnosticWarn  },
    -- DiagnosticVirtualTextInfo  = { DiagnosticInfo  },
    -- DiagnosticVirtualTextHint  = { DiagnosticHint  },
    DiagnosticUnderlineError = { undercurl = ucurl },
    DiagnosticUnderlineWarn = { undercurl = ucurl },
    DiagnosticUnderlineInfo = { undercurl = ucurl },
    DiagnosticUnderlineHint = { undercurl = ucurl },
    -- DiagnosticFloatingError    = 'DiagnosticError',
    -- DiagnosticFloatingWarn     = { DiagnosticWarn  },
    -- DiagnosticFloatingInfo     = { DiagnosticInfo  },
    -- DiagnosticFloatingHint     = { DiagnosticHint  },
    -- DiagnosticSignError        = 'DiagnosticError',
    -- DiagnosticSignWarn         = { DiagnosticWarn  },
    -- DiagnosticSignInfo         = { DiagnosticInfo  },
    -- DiagnosticSignHint         = { DiagnosticHint  },

    ---- :help lsp-highlight -----------------------------------

    LspReferenceText = 'Visual',
    LspReferenceRead = 'Visual',
    LspReferenceWrite = 'Visual',

    -- LspCodeLens = { },
    -- LspCodeLensSeparator = { },

    --- :help vimtex-syntax-reference (external plugin) --------

    texOptSep = 'TSPunctDelimiter',
    texOptEqual = 'Operator',
    texFileArg = 'Constant',
    texTitleArg = { bold = bf },
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

    ---- Misc. -------------------------------------------------
    HelpHyperTextJump = { fg = c.yellow },

    ---- :h gitsigns (external plugin) -------------------------

    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.magenta },
    GitSignsDelete = { fg = c.red },
    GitSignsCurrentLineBlame = { fg = c.blue },

    SignifySignAdd = 'GitSignsAdd',
    SignifySignChange = 'GitSignsChange',
    SignifySignDelete = 'GitSignsDelete',
  }
end
