" This is the vim-compatible melange file which does not include any blending
"
hi clear
syntax reset

set t_Co=256
let g:colors_name = 'melange'

if &background == 'dark'
  " LUSH_PATCH_OPEN_DARK
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight! link texOptSep TSPunctDelimiter
highlight! link texOptEqual Operator
highlight! link texFileArg Constant
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold 
highlight! link texRefArg Constant
highlight! link texMathCmd Function
highlight Error guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE 
highlight! link texMathZone TSMath
highlight! link texMathDelimZone TSPunctDelimiter
highlight! link texMathDelim Delimiter
highlight! link LspReferenceText Visual
highlight! link LspReferenceRead Visual
highlight! link LspReferenceWrite Visual
highlight netrwExe guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE 
highlight netrwSymLink guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE 
highlight HelpHyperTextJump guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE 
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE 
highlight! link netrwTreeBar Delimiter
highlight! link netrwClassify Delimiter
highlight! link texMathEnvArgName PreProc
highlight ColorColumn guifg=NONE guibg=#352F2A guisp=NONE gui=NONE 
highlight Comment guifg=#A38D78 guibg=NONE guisp=NONE gui=italic 
highlight VertSplit guifg=#4D453E guibg=NONE guisp=NONE gui=NONE 
highlight Folded guifg=#A38D78 guibg=#352F2A guisp=NONE gui=NONE 
highlight! link WildMenu NormalFloat
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight TabLineSel guifg=NONE guibg=#352F2A guisp=NONE gui=bold 
highlight Conceal guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE 
highlight! link EndOfBuffer Whitespace
highlight! link SpecialKey Whitespace
highlight Directory guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE 
highlight! link CursorLine ColorColumn
highlight Visual guifg=NONE guibg=#4D453E guisp=NONE gui=NONE 
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight SpellBad guifg=#B65C60 guibg=NONE guisp=NONE gui=undercurl 
highlight SpellCap guifg=#697893 guibg=NONE guisp=NONE gui=undercurl 
highlight CursorLineNr guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE 
highlight SpellRare guifg=#EBC06D guibg=NONE guisp=NONE gui=undercurl 
highlight Character guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE 
highlight Delimiter guifg=#8E733F guibg=NONE guisp=NONE gui=NONE 
highlight DiffChange guifg=NONE guibg=#462445 guisp=NONE gui=NONE 
highlight DiffDelete guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE 
highlight DiffText guifg=NONE guibg=#243146 guisp=NONE gui=NONE 
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight Operator guifg=#F17C64 guibg=NONE guisp=NONE gui=NONE 
highlight TSNamespace guifg=#78997A guibg=NONE guisp=NONE gui=NONE 
highlight TSPunctDelimiter guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE 
highlight! link TSPunctBracket Delimiter
highlight! link FoldColumn LineNr
highlight Search guifg=#2A2520 guibg=#8E733F guisp=NONE gui=NONE 
highlight TSSymbol guifg=#ECE1D7 guibg=NONE guisp=NONE gui=italic 
highlight Substitute guifg=#2A2520 guibg=#8E733F guisp=NONE gui=NONE 
highlight TSVariableBuiltin guifg=#ECE1D7 guibg=NONE guisp=NONE gui=italic 
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold 
highlight! link TSEmphasis Italic
highlight MatchParen guifg=#EBC06D guibg=#4D453E guisp=NONE gui=bold 
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight PmenuSel guifg=NONE guibg=#4D453E guisp=NONE gui=NONE 
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link StatusLine NormalFloat
highlight! link texMathSymbol Operator
highlight Boolean guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE 
highlight Number guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE 
highlight! link CursorColumn ColorColumn
highlight LineNr guifg=#4D453E guibg=NONE guisp=NONE gui=NONE 
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight! link SignColumn LineNr
highlight DiffAdd guifg=NONE guibg=#1F3521 guisp=NONE gui=NONE 
highlight StatusLineNC guifg=#C1A78E guibg=#352F2A guisp=NONE gui=NONE 
highlight WarningMsg guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE 
highlight Title guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE 
highlight Whitespace guifg=#4D453E guibg=NONE guisp=NONE gui=NONE 
highlight Constant guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE 
highlight String guifg=#9AACCE guibg=NONE guisp=NONE gui=italic 
highlight Identifier guifg=#ECE1D7 guibg=NONE guisp=NONE gui=NONE 
highlight Function guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE 
highlight Statement guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE 
highlight PreProc guifg=#99D59D guibg=NONE guisp=NONE gui=NONE 
highlight SpellLocal guifg=#E49B5D guibg=NONE guisp=NONE gui=undercurl 
highlight Type guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE 
highlight MoreMsg guifg=#78997A guibg=NONE guisp=NONE gui=bold 
highlight ModeMsg guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE 
highlight Special guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE 
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline 
highlight! link TSEnvironment Statement
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold 
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic 
highlight Todo guifg=#C1A78E guibg=NONE guisp=NONE gui=italic 
highlight ErrorMsg guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE 
highlight Normal guifg=#ECE1D7 guibg=#2A2520 guisp=NONE gui=NONE 
highlight NormalFloat guifg=NONE guibg=#352F2A guisp=NONE gui=NONE 
highlight Ignore guifg=#A38D78 guibg=NONE guisp=NONE gui=NONE 
highlight! link TSVariable Identifier
highlight TSStringEscape guifg=#697893 guibg=NONE guisp=NONE gui=NONE 
highlight! link TSPunctSpecial Delimiter
highlight! link TSKeywordFunction PreProc
highlight! link TSConstMacro Constant
highlight TSConstBuiltin guifg=#B380B0 guibg=NONE guisp=NONE gui=italic 
highlight! link TSUnderline Underlined
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough 
highlight TSURI guifg=#9AACCE guibg=NONE guisp=NONE gui=underline 
highlight TSMath guifg=#88B3B2 guibg=NONE guisp=NONE gui=NONE 
highlight! link Question MoreMsg
highlight! link TSEnvironmentName PreProc
highlight DiagnosticError guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE 
highlight DiagnosticWarn guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE 
highlight DiagnosticInfo guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE 
highlight DiagnosticHint guifg=#99D59D guibg=NONE guisp=NONE gui=NONE 
highlight! link LspDiagnosticsDefaultError DiagnosticError
highlight! link LspDiagnosticsDefaultWarning DiagnosticWarn
highlight! link LspDiagnosticsDefaultInformation DiagnosticInfo
highlight! link LspDiagnosticsDefaultHint DiagnosticHint
  " LUSH_PATCH_CLOSE_DARK
else
  " LUSH_PATCH_OPEN_LIGHT
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight! link texOptSep TSPunctDelimiter
highlight! link texOptEqual Operator
highlight! link texFileArg Constant
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold 
highlight! link texRefArg Constant
highlight! link texMathCmd Function
highlight Error guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE 
highlight! link texMathZone TSMath
highlight! link texMathDelimZone TSPunctDelimiter
highlight! link texMathDelim Delimiter
highlight! link LspReferenceText Visual
highlight! link LspReferenceRead Visual
highlight! link LspReferenceWrite Visual
highlight netrwExe guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE 
highlight netrwSymLink guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE 
highlight HelpHyperTextJump guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE 
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE 
highlight! link netrwTreeBar Delimiter
highlight! link netrwClassify Delimiter
highlight! link texMathEnvArgName PreProc
highlight ColorColumn guifg=NONE guibg=#352F2A guisp=NONE gui=NONE 
highlight Comment guifg=#A38D78 guibg=NONE guisp=NONE gui=italic 
highlight VertSplit guifg=#4D453E guibg=NONE guisp=NONE gui=NONE 
highlight Folded guifg=#A38D78 guibg=#352F2A guisp=NONE gui=NONE 
highlight! link WildMenu NormalFloat
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight TabLineSel guifg=NONE guibg=#352F2A guisp=NONE gui=bold 
highlight Conceal guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE 
highlight! link EndOfBuffer Whitespace
highlight! link SpecialKey Whitespace
highlight Directory guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE 
highlight! link CursorLine ColorColumn
highlight Visual guifg=NONE guibg=#4D453E guisp=NONE gui=NONE 
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight SpellBad guifg=#B65C60 guibg=NONE guisp=NONE gui=undercurl 
highlight SpellCap guifg=#697893 guibg=NONE guisp=NONE gui=undercurl 
highlight CursorLineNr guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE 
highlight SpellRare guifg=#EBC06D guibg=NONE guisp=NONE gui=undercurl 
highlight Character guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE 
highlight Delimiter guifg=#8E733F guibg=NONE guisp=NONE gui=NONE 
highlight DiffChange guifg=NONE guibg=#462445 guisp=NONE gui=NONE 
highlight DiffDelete guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE 
highlight DiffText guifg=NONE guibg=#243146 guisp=NONE gui=NONE 
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight Operator guifg=#F17C64 guibg=NONE guisp=NONE gui=NONE 
highlight TSNamespace guifg=#78997A guibg=NONE guisp=NONE gui=NONE 
highlight TSPunctDelimiter guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE 
highlight! link TSPunctBracket Delimiter
highlight! link FoldColumn LineNr
highlight Search guifg=#2A2520 guibg=#8E733F guisp=NONE gui=NONE 
highlight TSSymbol guifg=#ECE1D7 guibg=NONE guisp=NONE gui=italic 
highlight Substitute guifg=#2A2520 guibg=#8E733F guisp=NONE gui=NONE 
highlight TSVariableBuiltin guifg=#ECE1D7 guibg=NONE guisp=NONE gui=italic 
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold 
highlight! link TSEmphasis Italic
highlight MatchParen guifg=#EBC06D guibg=#4D453E guisp=NONE gui=bold 
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight PmenuSel guifg=NONE guibg=#4D453E guisp=NONE gui=NONE 
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link StatusLine NormalFloat
highlight! link texMathSymbol Operator
highlight Boolean guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE 
highlight Number guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE 
highlight! link CursorColumn ColorColumn
highlight LineNr guifg=#4D453E guibg=NONE guisp=NONE gui=NONE 
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl 
highlight! link SignColumn LineNr
highlight DiffAdd guifg=NONE guibg=#1F3521 guisp=NONE gui=NONE 
highlight StatusLineNC guifg=#C1A78E guibg=#352F2A guisp=NONE gui=NONE 
highlight WarningMsg guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE 
highlight Title guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE 
highlight Whitespace guifg=#4D453E guibg=NONE guisp=NONE gui=NONE 
highlight Constant guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE 
highlight String guifg=#9AACCE guibg=NONE guisp=NONE gui=italic 
highlight Identifier guifg=#ECE1D7 guibg=NONE guisp=NONE gui=NONE 
highlight Function guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE 
highlight Statement guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE 
highlight PreProc guifg=#99D59D guibg=NONE guisp=NONE gui=NONE 
highlight SpellLocal guifg=#E49B5D guibg=NONE guisp=NONE gui=undercurl 
highlight Type guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE 
highlight MoreMsg guifg=#78997A guibg=NONE guisp=NONE gui=bold 
highlight ModeMsg guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE 
highlight Special guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE 
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline 
highlight! link TSEnvironment Statement
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold 
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic 
highlight Todo guifg=#C1A78E guibg=NONE guisp=NONE gui=italic 
highlight ErrorMsg guifg=NONE guibg=#7D2A2F guisp=NONE gui=NONE 
highlight Normal guifg=#ECE1D7 guibg=#2A2520 guisp=NONE gui=NONE 
highlight NormalFloat guifg=NONE guibg=#352F2A guisp=NONE gui=NONE 
highlight Ignore guifg=#A38D78 guibg=NONE guisp=NONE gui=NONE 
highlight! link TSVariable Identifier
highlight TSStringEscape guifg=#697893 guibg=NONE guisp=NONE gui=NONE 
highlight! link TSPunctSpecial Delimiter
highlight! link TSKeywordFunction PreProc
highlight! link TSConstMacro Constant
highlight TSConstBuiltin guifg=#B380B0 guibg=NONE guisp=NONE gui=italic 
highlight! link TSUnderline Underlined
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough 
highlight TSURI guifg=#9AACCE guibg=NONE guisp=NONE gui=underline 
highlight TSMath guifg=#88B3B2 guibg=NONE guisp=NONE gui=NONE 
highlight! link Question MoreMsg
highlight! link TSEnvironmentName PreProc
highlight DiagnosticError guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE 
highlight DiagnosticWarn guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE 
highlight DiagnosticInfo guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE 
highlight DiagnosticHint guifg=#99D59D guibg=NONE guisp=NONE gui=NONE 
highlight! link LspDiagnosticsDefaultError DiagnosticError
highlight! link LspDiagnosticsDefaultWarning DiagnosticWarn
highlight! link LspDiagnosticsDefaultInformation DiagnosticInfo
highlight! link LspDiagnosticsDefaultHint DiagnosticHint
  " LUSH_PATCH_CLOSE_LIGHT
endif
