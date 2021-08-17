hi clear
syntax reset
set t_Co=256
let g:colors_name = 'melange'
if &background == 'dark'
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Boolean guifg=#D194BD guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Character guifg=#94A8D1 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight ColorColumn guifg=NONE guibg=#38332E guisp=NONE gui=NONE blend=NONE
highlight Comment guifg=#998066 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Conceal guifg=#C9B39C guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Constant guifg=#AD85AD guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight CursorLineNr guifg=#E09952 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Delimiter guifg=#997733 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffAdd guifg=NONE guibg=#244224 guisp=NONE gui=NONE blend=NONE
highlight DiffChange guifg=NONE guibg=#422438 guisp=NONE gui=NONE blend=NONE
highlight DiffDelete guifg=NONE guibg=#6B2E2E guisp=NONE gui=NONE blend=NONE
highlight DiffText guifg=NONE guibg=#242E42 guisp=NONE gui=NONE blend=NONE
highlight Directory guifg=#E09952 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Error guifg=NONE guibg=#6B2E2E guisp=NONE gui=NONE blend=NONE
highlight ErrorMsg guifg=NONE guibg=#6B2E2E guisp=NONE gui=NONE blend=NONE
highlight Folded guifg=#998066 guibg=#38332E guisp=NONE gui=NONE blend=NONE
highlight Function guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight HelpHyperTextJump guifg=#E09952 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Identifier guifg=#EDE6DE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Ignore guifg=#38332E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight LineNr guifg=#544D45 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultError guifg=#B34D4D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultHint guifg=#669966 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultInformation guifg=#94A8D1 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultWarning guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight MatchParen guifg=#F7C96E guibg=#544D45 guisp=NONE gui=bold blend=NONE
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight ModeMsg guifg=#C9B39C guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight MoreMsg guifg=#669966 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Normal guifg=#EDE6DE guibg=#2A2622 guisp=NONE gui=NONE blend=NONE
highlight NormalFloat guifg=NONE guibg=#38332E guisp=NONE gui=NONE blend=NONE
highlight Number guifg=#D194BD guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Operator guifg=#F7856E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight PmenuSel guifg=NONE guibg=#544D45 guisp=NONE gui=NONE blend=NONE
highlight PreProc guifg=#669966 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Search guifg=#2A2622 guibg=#997733 guisp=NONE gui=NONE blend=NONE
highlight Special guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight SpellBad guifg=#B34D4D guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight SpellCap guifg=#5973A6 guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight SpellLocal guifg=#E09952 guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight SpellRare guifg=#F7C96E guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight Statement guifg=#E09952 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight StatusLineNC guifg=#C9B39C guibg=#38332E guisp=NONE gui=NONE blend=NONE
highlight String guifg=#94A8D1 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Substitute guifg=#2A2622 guibg=#997733 guisp=NONE gui=NONE blend=NONE
highlight TSConstBuiltin guifg=#AD85AD guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSError guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight TSKeywordFunction guifg=#94D194 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSMath guifg=#94D1D1 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSPunctDelimiter guifg=#B34D4D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough blend=NONE
highlight TSStringEscape guifg=#5973A6 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight TSSymbol guifg=NONE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSURI guifg=#94A8D1 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight TSVariableBuiltin guifg=NONE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TabLineSel guifg=NONE guibg=#38332E guisp=NONE gui=bold blend=NONE
highlight Title guifg=#E09952 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Todo guifg=#E09952 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Type guifg=#85ADAD guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline blend=NONE
highlight VertSplit guifg=#544D45 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Visual guifg=NONE guibg=#544D45 guisp=NONE gui=NONE blend=NONE
highlight WarningMsg guifg=#B34D4D guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Whitespace guifg=#544D45 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight texMathZone guifg=#94D1D1 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight! link EndOfBuffer Whitespace
highlight! link FoldColumn LineNr
highlight! link LspReferenceRead Visual
highlight! link LspReferenceText Visual
highlight! link LspReferenceWrite Visual
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link Question MoreMsg
highlight! link SignColumn LineNr
highlight! link SpecialKey Whitespace
highlight! link StatusLine NormalFloat
highlight! link TSConstMacro Constant
highlight! link TSEmphasis Italic
highlight! link TSEnviroment Statement
highlight! link TSEnviromentName TSKeywordFunction
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight! link TSPunctBracket Delimiter
highlight! link TSPunctSpecial Delimiter
highlight! link TSUnderline Underlined
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight! link WildMenu NormalFloat
highlight! link texFileArg Constant
highlight! link texMathCmd Function
highlight! link texMathDelim Delimiter
highlight! link texMathDelimZone TSPunctDelimiter
highlight! link texMathEnvArgName TSKeywordFunction
highlight! link texMathSymbol Operator
highlight! link texOptEqual Operator
highlight! link texOptSep TSPunctDelimiter
highlight! link texRefArg Constant
else
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Boolean guifg=#B34D90 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Character guifg=#4D6EB3 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight ColorColumn guifg=NONE guibg=#F0E6DB guisp=NONE gui=NONE blend=NONE
highlight Comment guifg=#B8997A guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Conceal guifg=#856647 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Constant guifg=#B87AB8 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight CursorLineNr guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Delimiter guifg=#E0C285 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffAdd guifg=NONE guibg=#D9F2D9 guisp=NONE gui=NONE blend=NONE
highlight DiffChange guifg=NONE guibg=#EDDEE8 guisp=NONE gui=NONE blend=NONE
highlight DiffDelete guifg=NONE guibg=#EBB8AD guisp=NONE gui=NONE blend=NONE
highlight DiffText guifg=NONE guibg=#D9E1F2 guisp=NONE gui=NONE blend=NONE
highlight Directory guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Error guifg=NONE guibg=#EBB8AD guisp=NONE gui=NONE blend=NONE
highlight ErrorMsg guifg=NONE guibg=#EBB8AD guisp=NONE gui=NONE blend=NONE
highlight Folded guifg=#B8997A guibg=#F0E6DB guisp=NONE gui=NONE blend=NONE
highlight Function guifg=#D99D26 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight HelpHyperTextJump guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Identifier guifg=#423324 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Ignore guifg=#F0E6DB guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight LineNr guifg=#E0CCB8 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultError guifg=#D65C5C guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultHint guifg=#7AB87A guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultInformation guifg=#4D6EB3 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultWarning guifg=#D99D26 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight MatchParen guifg=#D99D26 guibg=#E0CCB8 guisp=NONE gui=bold blend=NONE
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight ModeMsg guifg=#856647 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight MoreMsg guifg=#7AB87A guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Normal guifg=#423324 guibg=#F7F2ED guisp=NONE gui=NONE blend=NONE
highlight NormalFloat guifg=NONE guibg=#F0E6DB guisp=NONE gui=NONE blend=NONE
highlight Number guifg=#B34D90 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Operator guifg=#AD1F1F guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight PmenuSel guifg=NONE guibg=#E0CCB8 guisp=NONE gui=NONE blend=NONE
highlight PreProc guifg=#7AB87A guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Search guifg=#F7F2ED guibg=#E0C285 guisp=NONE gui=NONE blend=NONE
highlight Special guifg=#D99D26 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight SpellBad guifg=#D65C5C guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight SpellCap guifg=#8CA6D9 guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight SpellLocal guifg=#CC8033 guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight SpellRare guifg=#D99D26 guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight Statement guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight StatusLineNC guifg=#856647 guibg=#F0E6DB guisp=NONE gui=NONE blend=NONE
highlight String guifg=#4D6EB3 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Substitute guifg=#F7F2ED guibg=#E0C285 guisp=NONE gui=NONE blend=NONE
highlight TSConstBuiltin guifg=#B87AB8 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSError guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight TSKeywordFunction guifg=#339933 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSMath guifg=#366363 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSPunctDelimiter guifg=#D65C5C guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough blend=NONE
highlight TSStringEscape guifg=#8CA6D9 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight TSSymbol guifg=NONE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSURI guifg=#4D6EB3 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight TSVariableBuiltin guifg=NONE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TabLineSel guifg=NONE guibg=#F0E6DB guisp=NONE gui=bold blend=NONE
highlight Title guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Todo guifg=#CC8033 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Type guifg=#669999 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline blend=NONE
highlight VertSplit guifg=#E0CCB8 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Visual guifg=NONE guibg=#E0CCB8 guisp=NONE gui=NONE blend=NONE
highlight WarningMsg guifg=#D65C5C guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Whitespace guifg=#E0CCB8 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight texMathZone guifg=#366363 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight! link EndOfBuffer Whitespace
highlight! link FoldColumn LineNr
highlight! link LspReferenceRead Visual
highlight! link LspReferenceText Visual
highlight! link LspReferenceWrite Visual
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link Question MoreMsg
highlight! link SignColumn LineNr
highlight! link SpecialKey Whitespace
highlight! link StatusLine NormalFloat
highlight! link TSConstMacro Constant
highlight! link TSEmphasis Italic
highlight! link TSEnviroment Statement
highlight! link TSEnviromentName TSKeywordFunction
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight! link TSPunctBracket Delimiter
highlight! link TSPunctSpecial Delimiter
highlight! link TSUnderline Underlined
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight! link WildMenu NormalFloat
highlight! link texFileArg Constant
highlight! link texMathCmd Function
highlight! link texMathDelim Delimiter
highlight! link texMathDelimZone TSPunctDelimiter
highlight! link texMathEnvArgName TSKeywordFunction
highlight! link texMathSymbol Operator
highlight! link texOptEqual Operator
highlight! link texOptSep TSPunctDelimiter
highlight! link texRefArg Constant
endif

