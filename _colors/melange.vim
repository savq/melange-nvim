" This is the nvim-only melange file that includes blend

hi clear
syntax reset

set t_Co=256
let g:colors_name = 'melange'

if &background == 'dark'
  " LUSH_PATCH_OPEN_DARK
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight! link texOptSep TSPunctDelimiter
highlight! link texOptEqual Operator
highlight! link texFileArg Constant
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight! link texRefArg Constant
highlight! link texMathCmd Function
highlight Error guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE blend=NONE
highlight! link texMathZone TSMath
highlight! link texMathDelimZone TSPunctDelimiter
highlight! link texMathDelim Delimiter
highlight! link LspReferenceText Visual
highlight! link LspReferenceRead Visual
highlight! link LspReferenceWrite Visual
highlight netrwExe guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight netrwSymLink guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight HelpHyperTextJump guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link netrwTreeBar Delimiter
highlight! link netrwClassify Delimiter
highlight! link texMathEnvArgName PreProc
highlight ColorColumn guifg=NONE guibg=#352F2A guisp=NONE gui=NONE blend=NONE
highlight Comment guifg=#A38D78 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight VertSplit guifg=#4D453E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Folded guifg=#A38D78 guibg=#352F2A guisp=NONE gui=NONE blend=NONE
highlight! link WildMenu NormalFloat
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight TabLineSel guifg=NONE guibg=#352F2A guisp=NONE gui=bold blend=NONE
highlight Conceal guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link EndOfBuffer Whitespace
highlight! link SpecialKey Whitespace
highlight Directory guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link CursorLine ColorColumn
highlight Visual guifg=NONE guibg=#4D453E guisp=NONE gui=NONE blend=NONE
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight SpellBad guifg=#B65C60 guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight SpellCap guifg=#697893 guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight CursorLineNr guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight SpellRare guifg=#EBC06D guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight Character guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Delimiter guifg=#8E733F guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffChange guifg=NONE guibg=#462445 guisp=NONE gui=NONE blend=NONE
highlight DiffDelete guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE blend=NONE
highlight DiffText guifg=NONE guibg=#243146 guisp=NONE gui=NONE blend=NONE
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight Operator guifg=#F17C64 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSNamespace guifg=#78997A guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSPunctDelimiter guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSPunctBracket Delimiter
highlight! link FoldColumn LineNr
highlight Search guifg=#2A2520 guibg=#8E733F guisp=NONE gui=NONE blend=NONE
highlight TSSymbol guifg=#ECE1D7 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Substitute guifg=#2A2520 guibg=#8E733F guisp=NONE gui=NONE blend=NONE
highlight TSVariableBuiltin guifg=#ECE1D7 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight! link TSEmphasis Italic
highlight MatchParen guifg=#EBC06D guibg=#4D453E guisp=NONE gui=bold blend=NONE
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight PmenuSel guifg=NONE guibg=#4D453E guisp=NONE gui=NONE blend=NONE
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link StatusLine NormalFloat
highlight! link texMathSymbol Operator
highlight Boolean guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Number guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link CursorColumn ColorColumn
highlight LineNr guifg=#4D453E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight! link SignColumn LineNr
highlight DiffAdd guifg=NONE guibg=#1F3521 guisp=NONE gui=NONE blend=NONE
highlight StatusLineNC guifg=#C1A78E guibg=#352F2A guisp=NONE gui=NONE blend=NONE
highlight WarningMsg guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Title guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Whitespace guifg=#4D453E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Constant guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight String guifg=#9AACCE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Identifier guifg=#ECE1D7 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Function guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Statement guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight PreProc guifg=#99D59D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight SpellLocal guifg=#E49B5D guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight Type guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight MoreMsg guifg=#78997A guibg=NONE guisp=NONE gui=bold blend=NONE
highlight ModeMsg guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Special guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline blend=NONE
highlight! link TSEnvironment Statement
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Todo guifg=#C1A78E guibg=NONE guisp=NONE gui=italic blend=NONE
highlight ErrorMsg guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE blend=NONE
highlight Normal guifg=#ECE1D7 guibg=#2A2520 guisp=NONE gui=NONE blend=NONE
highlight NormalFloat guifg=NONE guibg=#352F2A guisp=NONE gui=NONE blend=NONE
highlight Ignore guifg=#A38D78 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSVariable Identifier
highlight TSStringEscape guifg=#697893 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSPunctSpecial Delimiter
highlight! link TSKeywordFunction PreProc
highlight! link TSConstMacro Constant
highlight TSConstBuiltin guifg=#B380B0 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight! link TSUnderline Underlined
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough blend=NONE
highlight TSURI guifg=#9AACCE guibg=NONE guisp=NONE gui=underline blend=NONE
highlight TSMath guifg=#88B3B2 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link Question MoreMsg
highlight! link TSEnvironmentName PreProc
highlight DiagnosticError guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiagnosticWarn guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiagnosticInfo guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiagnosticHint guifg=#99D59D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link LspDiagnosticsDefaultError DiagnosticError
highlight! link LspDiagnosticsDefaultWarning DiagnosticWarn
highlight! link LspDiagnosticsDefaultInformation DiagnosticInfo
highlight! link LspDiagnosticsDefaultHint DiagnosticHint
  " LUSH_PATCH_CLOSE_DARK
else
  " LUSH_PATCH_OPEN_LIGHT
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight! link texOptSep TSPunctDelimiter
highlight! link texOptEqual Operator
highlight! link texFileArg Constant
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight! link texRefArg Constant
highlight! link texMathCmd Function
highlight Error guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE blend=NONE
highlight! link texMathZone TSMath
highlight! link texMathDelimZone TSPunctDelimiter
highlight! link texMathDelim Delimiter
highlight! link LspReferenceText Visual
highlight! link LspReferenceRead Visual
highlight! link LspReferenceWrite Visual
highlight netrwExe guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight netrwSymLink guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight HelpHyperTextJump guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link netrwTreeBar Delimiter
highlight! link netrwClassify Delimiter
highlight! link texMathEnvArgName PreProc
highlight ColorColumn guifg=NONE guibg=#352F2A guisp=NONE gui=NONE blend=NONE
highlight Comment guifg=#A38D78 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight VertSplit guifg=#4D453E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Folded guifg=#A38D78 guibg=#352F2A guisp=NONE gui=NONE blend=NONE
highlight! link WildMenu NormalFloat
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight TabLineSel guifg=NONE guibg=#352F2A guisp=NONE gui=bold blend=NONE
highlight Conceal guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link EndOfBuffer Whitespace
highlight! link SpecialKey Whitespace
highlight Directory guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link CursorLine ColorColumn
highlight Visual guifg=NONE guibg=#4D453E guisp=NONE gui=NONE blend=NONE
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight SpellBad guifg=#B65C60 guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight SpellCap guifg=#697893 guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight CursorLineNr guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight SpellRare guifg=#EBC06D guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight Character guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Delimiter guifg=#8E733F guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffChange guifg=NONE guibg=#462445 guisp=NONE gui=NONE blend=NONE
highlight DiffDelete guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE blend=NONE
highlight DiffText guifg=NONE guibg=#243146 guisp=NONE gui=NONE blend=NONE
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight Operator guifg=#F17C64 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSNamespace guifg=#78997A guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSPunctDelimiter guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSPunctBracket Delimiter
highlight! link FoldColumn LineNr
highlight Search guifg=#2A2520 guibg=#8E733F guisp=NONE gui=NONE blend=NONE
highlight TSSymbol guifg=#ECE1D7 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Substitute guifg=#2A2520 guibg=#8E733F guisp=NONE gui=NONE blend=NONE
highlight TSVariableBuiltin guifg=#ECE1D7 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight! link TSEmphasis Italic
highlight MatchParen guifg=#EBC06D guibg=#4D453E guisp=NONE gui=bold blend=NONE
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight PmenuSel guifg=NONE guibg=#4D453E guisp=NONE gui=NONE blend=NONE
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link StatusLine NormalFloat
highlight! link texMathSymbol Operator
highlight Boolean guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Number guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link CursorColumn ColorColumn
highlight LineNr guifg=#4D453E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight! link SignColumn LineNr
highlight DiffAdd guifg=NONE guibg=#1F3521 guisp=NONE gui=NONE blend=NONE
highlight StatusLineNC guifg=#C1A78E guibg=#352F2A guisp=NONE gui=NONE blend=NONE
highlight WarningMsg guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Title guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Whitespace guifg=#4D453E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Constant guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight String guifg=#9AACCE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Identifier guifg=#ECE1D7 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Function guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Statement guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight PreProc guifg=#99D59D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight SpellLocal guifg=#E49B5D guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight Type guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight MoreMsg guifg=#78997A guibg=NONE guisp=NONE gui=bold blend=NONE
highlight ModeMsg guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Special guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline blend=NONE
highlight! link TSEnvironment Statement
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Todo guifg=#C1A78E guibg=NONE guisp=NONE gui=italic blend=NONE
highlight ErrorMsg guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE blend=NONE
highlight Normal guifg=#ECE1D7 guibg=#2A2520 guisp=NONE gui=NONE blend=NONE
highlight NormalFloat guifg=NONE guibg=#352F2A guisp=NONE gui=NONE blend=NONE
highlight Ignore guifg=#A38D78 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSVariable Identifier
highlight TSStringEscape guifg=#697893 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSPunctSpecial Delimiter
highlight! link TSKeywordFunction PreProc
highlight! link TSConstMacro Constant
highlight TSConstBuiltin guifg=#B380B0 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight! link TSUnderline Underlined
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough blend=NONE
highlight TSURI guifg=#9AACCE guibg=NONE guisp=NONE gui=underline blend=NONE
highlight TSMath guifg=#88B3B2 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link Question MoreMsg
highlight! link TSEnvironmentName PreProc
highlight DiagnosticError guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiagnosticWarn guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiagnosticInfo guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiagnosticHint guifg=#99D59D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link LspDiagnosticsDefaultError DiagnosticError
highlight! link LspDiagnosticsDefaultWarning DiagnosticWarn
highlight! link LspDiagnosticsDefaultInformation DiagnosticInfo
highlight! link LspDiagnosticsDefaultHint DiagnosticHint
  " LUSH_PATCH_CLOSE_LIGHT
endif
