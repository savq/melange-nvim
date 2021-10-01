hi clear
syntax reset
set t_Co=256
let g:colors_name = 'melange'
if &background == 'dark'
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Boolean guifg=#D194BD guibg=NONE guisp=NONE gui=NONE
highlight Character guifg=#94A8D1 guibg=NONE guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#38332E guisp=NONE gui=NONE
highlight Comment guifg=#998066 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#C9B39C guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#AD85AD guibg=NONE guisp=NONE gui=NONE
highlight CursorLineNr guifg=#E09952 guibg=NONE guisp=NONE gui=NONE
highlight Delimiter guifg=#997733 guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#244224 guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#422438 guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#6B2E2E guisp=NONE gui=NONE
highlight DiffText guifg=NONE guibg=#242E42 guisp=NONE gui=NONE
highlight Directory guifg=#85ADAD guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=NONE guibg=#6B2E2E guisp=NONE gui=NONE
highlight ErrorMsg guifg=NONE guibg=#6B2E2E guisp=NONE gui=NONE
highlight Folded guifg=#998066 guibg=#38332E guisp=NONE gui=NONE
highlight Function guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE
highlight HelpHyperTextJump guifg=#E09952 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#EDE6DE guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#998066 guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#544D45 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultError guifg=#B34D4D guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultHint guifg=#669966 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultInformation guifg=#94A8D1 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultWarning guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight MatchParen guifg=#F7C96E guibg=#544D45 guisp=NONE gui=bold
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight ModeMsg guifg=#C9B39C guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#669966 guibg=NONE guisp=NONE gui=bold
highlight Normal guifg=#EDE6DE guibg=#2A2622 guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#38332E guisp=NONE gui=NONE
highlight Number guifg=#D194BD guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#F7856E guibg=NONE guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#544D45 guisp=NONE gui=NONE
highlight PreProc guifg=#94D194 guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#2A2622 guibg=#997733 guisp=NONE gui=NONE
highlight Special guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#B34D4D guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#5973A6 guibg=NONE guisp=NONE gui=undercurl
highlight SpellLocal guifg=#E09952 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#F7C96E guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#E09952 guibg=NONE guisp=NONE gui=NONE
highlight StatusLineNC guifg=#C9B39C guibg=#38332E guisp=NONE gui=NONE
highlight String guifg=#94A8D1 guibg=NONE guisp=NONE gui=italic
highlight Substitute guifg=#2A2622 guibg=#997733 guisp=NONE gui=NONE
highlight TSConstBuiltin guifg=#AD85AD guibg=NONE guisp=NONE gui=italic
highlight TSMath guifg=#94D1D1 guibg=NONE guisp=NONE gui=NONE
highlight TSNamespace guifg=#669966 guibg=NONE guisp=NONE gui=NONE
highlight TSPunctDelimiter guifg=#B34D4D guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough
highlight TSStringEscape guifg=#5973A6 guibg=NONE guisp=NONE gui=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TSSymbol guifg=#EDE6DE guibg=NONE guisp=NONE gui=italic
highlight TSURI guifg=#94A8D1 guibg=NONE guisp=NONE gui=underline
highlight TSVariableBuiltin guifg=#EDE6DE guibg=NONE guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=#38332E guisp=NONE gui=bold
highlight Title guifg=#E09952 guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#C9B39C guibg=NONE guisp=NONE gui=italic
highlight Type guifg=#85ADAD guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#544D45 guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#544D45 guisp=NONE gui=NONE
highlight WarningMsg guifg=#B34D4D guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#544D45 guibg=NONE guisp=NONE gui=NONE
highlight netrwExe guifg=#B34D4D guibg=NONE guisp=NONE gui=NONE
highlight netrwSymLink guifg=#AD85AD guibg=NONE guisp=NONE gui=NONE
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold
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
highlight Boolean guifg=#B34D90 guibg=NONE guisp=NONE gui=NONE
highlight Character guifg=#4D6EB3 guibg=NONE guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#F0E6DB guisp=NONE gui=NONE
highlight Comment guifg=#B8997A guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#856647 guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#B87AB8 guibg=NONE guisp=NONE gui=NONE
highlight CursorLineNr guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight Delimiter guifg=#E0C285 guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#D9F2D9 guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#EDDEE8 guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#EBB8AD guisp=NONE gui=NONE
highlight DiffText guifg=NONE guibg=#D9E1F2 guisp=NONE gui=NONE
highlight Directory guifg=#669999 guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=NONE guibg=#EBB8AD guisp=NONE gui=NONE
highlight ErrorMsg guifg=NONE guibg=#EBB8AD guisp=NONE gui=NONE
highlight Folded guifg=#B8997A guibg=#F0E6DB guisp=NONE gui=NONE
highlight Function guifg=#D99D26 guibg=NONE guisp=NONE gui=NONE
highlight HelpHyperTextJump guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#634D36 guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#B8997A guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#E0CCB8 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultError guifg=#D65C5C guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultHint guifg=#7AB87A guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultInformation guifg=#4D6EB3 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultWarning guifg=#D99D26 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight MatchParen guifg=#D99D26 guibg=#E0CCB8 guisp=NONE gui=bold
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight ModeMsg guifg=#856647 guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#7AB87A guibg=NONE guisp=NONE gui=bold
highlight Normal guifg=#634D36 guibg=#F7F2ED guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#F0E6DB guisp=NONE gui=NONE
highlight Number guifg=#B34D90 guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#AD1F1F guibg=NONE guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#E0CCB8 guisp=NONE gui=NONE
highlight PreProc guifg=#339933 guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#F7F2ED guibg=#E0C285 guisp=NONE gui=NONE
highlight Special guifg=#D99D26 guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#D65C5C guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#8CA6D9 guibg=NONE guisp=NONE gui=undercurl
highlight SpellLocal guifg=#CC8033 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#D99D26 guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight StatusLineNC guifg=#856647 guibg=#F0E6DB guisp=NONE gui=NONE
highlight String guifg=#4D6EB3 guibg=NONE guisp=NONE gui=italic
highlight Substitute guifg=#F7F2ED guibg=#E0C285 guisp=NONE gui=NONE
highlight TSConstBuiltin guifg=#B87AB8 guibg=NONE guisp=NONE gui=italic
highlight TSMath guifg=#366363 guibg=NONE guisp=NONE gui=NONE
highlight TSNamespace guifg=#7AB87A guibg=NONE guisp=NONE gui=NONE
highlight TSPunctDelimiter guifg=#D65C5C guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough
highlight TSStringEscape guifg=#8CA6D9 guibg=NONE guisp=NONE gui=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TSSymbol guifg=#634D36 guibg=NONE guisp=NONE gui=italic
highlight TSURI guifg=#4D6EB3 guibg=NONE guisp=NONE gui=underline
highlight TSVariableBuiltin guifg=#634D36 guibg=NONE guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=#F0E6DB guisp=NONE gui=bold
highlight Title guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#856647 guibg=NONE guisp=NONE gui=italic
highlight Type guifg=#669999 guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#E0CCB8 guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#E0CCB8 guisp=NONE gui=NONE
highlight WarningMsg guifg=#D65C5C guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#E0CCB8 guibg=NONE guisp=NONE gui=NONE
highlight netrwExe guifg=#D65C5C guibg=NONE guisp=NONE gui=NONE
highlight netrwSymLink guifg=#B87AB8 guibg=NONE guisp=NONE gui=NONE
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold
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

