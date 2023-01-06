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
local bf, it, underline, undercurl
if vim.g.melange_enable_font_variants ~= 0 then
  bold = true
  italic = true
  underline = true
  undercurl = true
  strikethrough = strikethrough
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
    CursorColumn = "ColorColumn",
    CursorLine = "ColorColumn",
    VertSplit = { fg = a.sel },

    LineNr = { fg = a.sel },
    CursorLineNr = { fg = c.yellow },

    Folded = { fg = a.com, bg = a.overbg },
    FoldColumn = "LineNr",
    SignColumn = "LineNr",

    Pmenu = "NormalFloat",
    PmenuSel = { bg = a.sel },
    PmenuSbar = "Pmenu",
    PmenuThumb = "PmenuSel",

    StatusLine = "NormalFloat",
    StatusLineNC = { StatusLine, fg = a.faded },
    WildMenu = "NormalFloat",

    TabLine = "StatusLineNC",
    TabLineFill = "StatusLine",
    TabLineSel = { StatusLine, bold = bold },

    MatchParen = { fg = b.yellow, bg = a.sel, bold = bold },
    Substitute = { fg = a.bg, bg = d.yellow },
    Search = { fg = a.bg, bg = d.yellow },
    -- QuickFixLine = { },
    -- IncSearch = { },
    Visual = { bg = a.sel },
    -- VisualNOS = { },

    Conceal = { fg = a.faded },
    Whitespace = { fg = a.sel },
    EndOfBuffer = "Whitespace",
    NonText = "Whitespace",
    SpecialKey = "Whitespace",

    Directory = { fg = c.cyan },
    Title = { fg = c.yellow },
    ErrorMsg = { bg = d.red },
    ModeMsg = { fg = a.faded },
    -- MsgArea = { },
    -- MsgSeparator = { },
    MoreMsg = { fg = c.green, bold = bold },
    WarningMsg = { fg = c.red },
    Question = "MoreMsg",

    ---- :help :diff -------------------------------------------

    DiffAdd = { bg = d.green },
    DiffChange = { bg = d.magenta },
    DiffDelete = { bg = d.red },
    DiffText = { bg = d.blue },

    DiffAdded = "DiffAdd",
    DiffRemoved = "DiffDelete",

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
    Todo = { Comment, fg = a.faded },

    ---- :help nvim-treesitter-highlights (external plugin) ----

    -- TSAnnotation = { },
    -- TSAttribute = { },
    -- TSBoolean = { },
    -- TSCharacter = { },
    -- TSComment = { },
    -- TSConditional = { },
    -- TSConstant = { },
    TSConstBuiltin = { Constant, italic = italic },
    TSConstMacro = "Constant",
    -- TSConstructor = { },
    -- TSError = { undercurl = undercurl },
    -- TSException = { },
    -- TSField = { },
    -- TSFloat = { },
    -- TSFunction = { },
    TSFuncBuiltin = "Function",
    TSFuncMacro = "Function",
    -- TSInclude = { },
    -- TSKeyword = { },
    TSKeywordFunction = "PreProc",
    -- TSKeywordOperator = { },
    -- TSKeywordReturn = { },
    TSLabel = { fg = b.cyan },
    -- TSMethod = { },
    TSNamespace = { fg = c.green },
    -- TSNone = { },
    -- TSNumber = { },
    -- TSOperator = { },
    -- TSParameter = { },
    -- TSParameterReference = { },
    -- TSProperty = { },
    TSPunctDelimiter = { fg = c.red },
    -- TSPunctBracket = "Delimiter",
    -- TSPunctSpecial = "Delimiter",
    -- TSRepeat = { },
    -- TSString = { },
    TSStringEscape = { fg = c.blue },
    -- TSStringRegex = { },
    -- TSStringSpecial = { },
    TSSymbol = { Identifier, italic = italic },
    -- TSType = { },
    -- TSTypeBuiltin = { },
    TSVariable = "Identifier",
    TSVariableBuiltin = { Identifier, italic = italic },

    -- TSTag = { },
    -- TSTagDelimiter = { },
    -- TSText = { },
    TSStrong = { bold = bold },
    TSEmphasis = "Italic",
    TSUnderline = "Underlined",
    TSStrike = { strikethrough = strikethrough },
    -- TSTitle = { },
    -- TSLiteral = { },
    TSURI = { String, underline = underline },
    TSMath = { fg = b.cyan },
    -- TSTextReference = { },
    TSEnvironment = "Statement",
    TSEnvironmentName = "PreProc",
    -- TSNote = { },
    -- TSWarning = { },
    -- TSDanger = { },

    ---- :help diagnostic-highlight ----------------------------

    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = b.yellow },
    DiagnosticInfo = { fg = b.blue },
    DiagnosticHint = { fg = b.green },
    -- DiagnosticVirtualTextError = "DiagnosticError",
    -- DiagnosticVirtualTextWarn = { DiagnosticWarn  },
    -- DiagnosticVirtualTextInfo = { DiagnosticInfo  },
    -- DiagnosticVirtualTextHint = { DiagnosticHint  },
    DiagnosticUnderlineError = { undercurl = undercurl },
    DiagnosticUnderlineWarn = { undercurl = undercurl },
    DiagnosticUnderlineInfo = { undercurl = undercurl },
    DiagnosticUnderlineHint = { undercurl = undercurl },
    -- DiagnosticFloatingError = "DiagnosticError",
    -- DiagnosticFloatingWarn = { DiagnosticWarn  },
    -- DiagnosticFloatingInfo = { DiagnosticInfo  },
    -- DiagnosticFloatingHint = { DiagnosticHint  },
    -- DiagnosticSignError = "DiagnosticError",
    -- DiagnosticSignWarn = { DiagnosticWarn  },
    -- DiagnosticSignInfo = { DiagnosticInfo  },
    -- DiagnosticSignHint = { DiagnosticHint  },

    ---- :help lsp-highlight -----------------------------------

    LspReferenceText = "Visual",
    LspReferenceRead = "Visual",
    LspReferenceWrite = "Visual",

    LspDiagnosticsDefaultError = "DiagnosticError",
    LspDiagnosticsDefaultWarning = "DiagnosticWarn",
    LspDiagnosticsDefaultInformation = "DiagnosticInfo",
    LspDiagnosticsDefaultHint = "DiagnosticHint",

    -- LspDiagnosticsVirtualTextError = { },
    -- LspDiagnosticsVirtualTextWarning = { },
    -- LspDiagnosticsVirtualTextInformation = { },
    -- LspDiagnosticsVirtualTextHint = { },

    LspDiagnosticsUnderlineError = { undercurl = undercurl },
    LspDiagnosticsUnderlineWarning = { undercurl = undercurl },
    LspDiagnosticsUnderlineInformation = { undercurl = undercurl },
    LspDiagnosticsUnderlineHint = { undercurl = undercurl },

    -- LspDiagnosticsFloatingError = { },
    -- LspDiagnosticsFloatingWarning = { },
    -- LspDiagnosticsFloatingInformation = { },
    -- LspDiagnosticsFloatingHint = { },

    -- LspDiagnosticsSignError = { },
    -- LspDiagnosticsSignWarning = { },
    -- LspDiagnosticsSignInformation = { },
    -- LspDiagnosticsSignHint = { },

    --- :help vimtex-syntax-reference (external plugin) --------

    texOptSep = "TSPunctDelimiter",
    texOptEqual = "Operator",
    texFileArg = "Constant",
    texTitleArg = { bold = bold },
    texRefArg = "Constant",

    texMathCmd = "Function",
    texMathSymbol = "Operator",
    texMathZone = "TSMath",
    texMathDelimZone = "TSPunctDelimiter",
    texMathDelim = "Delimiter",
    texMathEnvArgName = "PreProc",

    --- netrw: there's no comprehensive list of highlights... --

    netrwClassify = "Delimiter",
    netrwTreeBar = "Delimiter",

    netrwExe = { fg = c.red },
    netrwSymLink = { fg = c.magenta },

    ---- Misc. -------------------------------------------------
    HelpHyperTextJump = { fg = c.yellow },

    ---- :h gitsigns (external plugin) -------------------------

    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.magenta },
    GitSignsDelete = { fg = c.red },
    GitSignsCurrentLineBlame = { fg = c.blue },

    SignifySignAdd = "GitSignsAdd",
    SignifySignChange = "GitSignsChange",
    SignifySignDelete = "GitSignsDelete",
}

for name, attrs in pairs(highlight_groups) do
    if type(attrs) == 'table' then
        vim.api.nvim_set_hl(0, name, attrs)
    elseif  type(attrs) == 'string' then
        vim.api.nvim_set_hl(0, name, { link = attrs })
    end
end

-- vi:nowrap
