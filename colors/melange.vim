hi clear
syntax reset
set t_Co=256
let g:colors_name = 'melange'
if &background == 'dark'
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Boolean guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE
highlight Character guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#352F2A guisp=NONE gui=NONE
highlight Comment guifg=#A38D78 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE
highlight CursorLineNr guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE
highlight Delimiter guifg=#8E733F guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticError guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticHint guifg=#99D59D guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticInfo guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticWarn guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#1F3521 guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#462445 guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE
highlight DiffText guifg=NONE guibg=#243146 guisp=NONE gui=NONE
highlight Directory guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE
highlight ErrorMsg guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE
highlight Folded guifg=#A38D78 guibg=#352F2A guisp=NONE gui=NONE
highlight Function guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#2A2520 guibg=#1F3521 guisp=NONE gui=reverse
highlight GitSignsChange guifg=#2A2520 guibg=#462445 guisp=NONE gui=reverse
highlight GitSignsCurrentLineBlame guifg=#2A2520 guibg=#243146 guisp=NONE gui=reverse
highlight GitSignsDelete guifg=#2A2520 guibg=#7D2A2F guisp=NONE gui=reverse
highlight HelpHyperTextJump guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#ECE1D7 guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#A38D78 guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#4D453E guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight MatchParen guifg=#EBC06D guibg=#4D453E guisp=NONE gui=bold
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight ModeMsg guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#78997A guibg=NONE guisp=NONE gui=bold
highlight Normal guifg=#ECE1D7 guibg=#2A2520 guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#352F2A guisp=NONE gui=NONE
highlight Number guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#F17C64 guibg=NONE guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#4D453E guisp=NONE gui=NONE
highlight PreProc guifg=#99D59D guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#2A2520 guibg=#8E733F guisp=NONE gui=NONE
highlight Special guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#B65C60 guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#697893 guibg=NONE guisp=NONE gui=undercurl
highlight SpellLocal guifg=#E49B5D guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#EBC06D guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE
highlight StatusLineNC guifg=#C1A78E guibg=#352F2A guisp=NONE gui=NONE
highlight String guifg=#9AACCE guibg=NONE guisp=NONE gui=italic
highlight Substitute guifg=#2A2520 guibg=#8E733F guisp=NONE gui=NONE
highlight TSConstBuiltin guifg=#B380B0 guibg=NONE guisp=NONE gui=italic
highlight TSMath guifg=#88B3B2 guibg=NONE guisp=NONE gui=NONE
highlight TSNamespace guifg=#78997A guibg=NONE guisp=NONE gui=NONE
highlight TSPunctDelimiter guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough
highlight TSStringEscape guifg=#697893 guibg=NONE guisp=NONE gui=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TSSymbol guifg=#ECE1D7 guibg=NONE guisp=NONE gui=italic
highlight TSURI guifg=#9AACCE guibg=NONE guisp=NONE gui=underline
highlight TSVariableBuiltin guifg=#ECE1D7 guibg=NONE guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=#352F2A guisp=NONE gui=bold
highlight Title guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#C1A78E guibg=NONE guisp=NONE gui=italic
highlight Type guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#4D453E guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#4D453E guisp=NONE gui=NONE
highlight WarningMsg guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#4D453E guibg=NONE guisp=NONE gui=NONE
highlight netrwExe guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE
highlight netrwSymLink guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight! link EndOfBuffer Whitespace
highlight! link FoldColumn LineNr
highlight! link LspDiagnosticsDefaultError DiagnosticError
highlight! link LspDiagnosticsDefaultHint DiagnosticHint
highlight! link LspDiagnosticsDefaultInformation DiagnosticInfo
highlight! link LspDiagnosticsDefaultWarning DiagnosticWarn
highlight! link LspReferenceRead Visual
highlight! link LspReferenceText Visual
highlight! link LspReferenceWrite Visual
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link Question MoreMsg
highlight! link SignColumn LineNr
highlight! link SignifySignAdd GitSignsAdd
highlight! link SignifySignChange GitSignsChange
highlight! link SignifySignDelete GitSignsDelete
highlight! link SpecialKey Whitespace
highlight! link StatusLine NormalFloat
highlight! link TSConstMacro Constant
highlight! link TSEmphasis Italic
highlight! link TSEnvironment Statement
highlight! link TSEnvironmentName PreProc
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight! link TSKeywordFunction PreProc
highlight! link TSPunctBracket Delimiter
highlight! link TSPunctSpecial Delimiter
highlight! link TSUnderline Underlined
highlight! link TSVariable Identifier
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight! link WildMenu NormalFloat
highlight! link netrwClassify Delimiter
highlight! link netrwTreeBar Delimiter
highlight! link texFileArg Constant
highlight! link texMathCmd Function
highlight! link texMathDelim Delimiter
highlight! link texMathDelimZone TSPunctDelimiter
highlight! link texMathEnvArgName PreProc
highlight! link texMathSymbol Operator
highlight! link texMathZone TSMath
highlight! link texOptEqual Operator
highlight! link texOptSep TSPunctDelimiter
highlight! link texRefArg Constant
else
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Boolean guifg=#854882 guibg=NONE guisp=NONE gui=NONE
highlight Character guifg=#485F84 guibg=NONE guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#E9E1DB guisp=NONE gui=NONE
highlight Comment guifg=#A38D78 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#867462 guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#BE79BB guibg=NONE guisp=NONE gui=NONE
highlight CursorLineNr guifg=#CC7F2B guibg=NONE guisp=NONE gui=NONE
highlight Delimiter guifg=#E2C28C guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticError guifg=#D7898C guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticHint guifg=#659E69 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticInfo guifg=#485F84 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticWarn guifg=#C29830 guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#C6ECC8 guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#EBDFEA guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#E0BFBB guisp=NONE gui=NONE
highlight DiffText guifg=NONE guibg=#DFE3EB guisp=NONE gui=NONE
highlight Directory guifg=#729893 guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=NONE guibg=#E0BFBB guisp=NONE gui=NONE
highlight ErrorMsg guifg=NONE guibg=#E0BFBB guisp=NONE gui=NONE
highlight Folded guifg=#A38D78 guibg=#E9E1DB guisp=NONE gui=NONE
highlight Function guifg=#C29830 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#F4F0ED guibg=#C6ECC8 guisp=NONE gui=reverse
highlight GitSignsChange guifg=#F4F0ED guibg=#EBDFEA guisp=NONE gui=reverse
highlight GitSignsCurrentLineBlame guifg=#F4F0ED guibg=#DFE3EB guisp=NONE gui=reverse
highlight GitSignsDelete guifg=#F4F0ED guibg=#E0BFBB guisp=NONE gui=reverse
highlight HelpHyperTextJump guifg=#CC7F2B guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#6B5C4D guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#A38D78 guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#DED2C8 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight MatchParen guifg=#C29830 guibg=#DED2C8 guisp=NONE gui=bold
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight ModeMsg guifg=#867462 guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#83B887 guibg=NONE guisp=NONE gui=bold
highlight Normal guifg=#6B5C4D guibg=#F4F0ED guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#E9E1DB guisp=NONE gui=NONE
highlight Number guifg=#854882 guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#C65333 guibg=NONE guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#DED2C8 guisp=NONE gui=NONE
highlight PreProc guifg=#659E69 guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#F4F0ED guibg=#E2C28C guisp=NONE gui=NONE
highlight Special guifg=#C29830 guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#D7898C guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#ABB9D6 guibg=NONE guisp=NONE gui=undercurl
highlight SpellLocal guifg=#CC7F2B guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#C29830 guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#CC7F2B guibg=NONE guisp=NONE gui=NONE
highlight StatusLineNC guifg=#867462 guibg=#E9E1DB guisp=NONE gui=NONE
highlight String guifg=#485F84 guibg=NONE guisp=NONE gui=italic
highlight Substitute guifg=#F4F0ED guibg=#E2C28C guisp=NONE gui=NONE
highlight TSConstBuiltin guifg=#BE79BB guibg=NONE guisp=NONE gui=italic
highlight TSMath guifg=#436460 guibg=NONE guisp=NONE gui=NONE
highlight TSNamespace guifg=#83B887 guibg=NONE guisp=NONE gui=NONE
highlight TSPunctDelimiter guifg=#D7898C guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough
highlight TSStringEscape guifg=#ABB9D6 guibg=NONE guisp=NONE gui=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TSSymbol guifg=#6B5C4D guibg=NONE guisp=NONE gui=italic
highlight TSURI guifg=#485F84 guibg=NONE guisp=NONE gui=underline
highlight TSVariableBuiltin guifg=#6B5C4D guibg=NONE guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=#E9E1DB guisp=NONE gui=bold
highlight Title guifg=#CC7F2B guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#867462 guibg=NONE guisp=NONE gui=italic
highlight Type guifg=#729893 guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#DED2C8 guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#DED2C8 guisp=NONE gui=NONE
highlight WarningMsg guifg=#D7898C guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#DED2C8 guibg=NONE guisp=NONE gui=NONE
highlight netrwExe guifg=#D7898C guibg=NONE guisp=NONE gui=NONE
highlight netrwSymLink guifg=#BE79BB guibg=NONE guisp=NONE gui=NONE
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight! link EndOfBuffer Whitespace
highlight! link FoldColumn LineNr
highlight! link LspDiagnosticsDefaultError DiagnosticError
highlight! link LspDiagnosticsDefaultHint DiagnosticHint
highlight! link LspDiagnosticsDefaultInformation DiagnosticInfo
highlight! link LspDiagnosticsDefaultWarning DiagnosticWarn
highlight! link LspReferenceRead Visual
highlight! link LspReferenceText Visual
highlight! link LspReferenceWrite Visual
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link Question MoreMsg
highlight! link SignColumn LineNr
highlight! link SignifySignAdd GitSignsAdd
highlight! link SignifySignChange GitSignsChange
highlight! link SignifySignDelete GitSignsDelete
highlight! link SpecialKey Whitespace
highlight! link StatusLine NormalFloat
highlight! link TSConstMacro Constant
highlight! link TSEmphasis Italic
highlight! link TSEnvironment Statement
highlight! link TSEnvironmentName PreProc
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight! link TSKeywordFunction PreProc
highlight! link TSPunctBracket Delimiter
highlight! link TSPunctSpecial Delimiter
highlight! link TSUnderline Underlined
highlight! link TSVariable Identifier
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight! link WildMenu NormalFloat
highlight! link netrwClassify Delimiter
highlight! link netrwTreeBar Delimiter
highlight! link texFileArg Constant
highlight! link texMathCmd Function
highlight! link texMathDelim Delimiter
highlight! link texMathDelimZone TSPunctDelimiter
highlight! link texMathEnvArgName PreProc
highlight! link texMathSymbol Operator
highlight! link texMathZone TSMath
highlight! link texOptEqual Operator
highlight! link texOptSep TSPunctDelimiter
highlight! link texRefArg Constant
endif
