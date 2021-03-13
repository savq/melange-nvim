hi clear
syntax reset
set t_Co=256
let g:colors_name = 'melange'
highlight NormalFloat guifg=#E2DBD5 guibg=#35302C guisp=NONE gui=NONE blend=NONE
highlight NormalNC guifg=#E2DBD5 guibg=#272420 guisp=NONE gui=NONE blend=NONE
highlight Comment guifg=#A08A73 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Whitespace guifg=#705E4C guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link NonText Whitespace
highlight! link SpecialKey Whitespace
highlight Cursor guifg=#2A2622 guibg=#E2DBD5 guisp=NONE gui=NONE blend=NONE
highlight TermCursor guifg=#2A2622 guibg=#E2DBD5 guisp=NONE gui=NONE blend=NONE
highlight ColorColumn guifg=NONE guibg=#35302C guisp=NONE gui=NONE blend=NONE
highlight CursorColumn guifg=NONE guibg=#3B3630 guisp=NONE gui=NONE blend=NONE
highlight! link CursorLine CursorColumn
highlight MatchParen guifg=#F9F7F6 guibg=#705E4C guisp=NONE gui=NONE blend=NONE
highlight LineNr guifg=#826E59 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight CursorLineNr guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link SignColumn LineNr
highlight VertSplit guifg=#35302C guibg=#35302C guisp=NONE gui=NONE blend=NONE
highlight Folded guifg=#A08A73 guibg=#35302C guisp=NONE gui=NONE blend=NONE
highlight! link FoldColumn LineNr
highlight Pmenu guifg=NONE guibg=#35302C guisp=NONE gui=NONE blend=NONE
highlight PmenuSel guifg=NONE guibg=#705E4C guisp=NONE gui=NONE blend=NONE
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link WildMenu Pmenu
highlight QuickFixLine guifg=#F9F7F6 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight StatusLine guifg=NONE guibg=#3B3630 guisp=NONE gui=NONE blend=NONE
highlight StatusLineNC guifg=#826E59 guibg=#35302C guisp=NONE gui=NONE blend=NONE
highlight TabLine guifg=NONE guibg=#705E4C guisp=NONE gui=NONE blend=NONE
highlight TabLineFill guifg=NONE guibg=#35302C guisp=NONE gui=NONE blend=NONE
highlight TabLineSel guifg=NONE guibg=#826E59 guisp=NONE gui=NONE blend=NONE
highlight! link IncSearch Search
highlight! link Substitute Search
highlight Visual guifg=NONE guibg=#705E4C guisp=NONE gui=NONE blend=NONE
highlight VisualNOS guifg=NONE guibg=#3B3630 guisp=NONE gui=NONE blend=NONE
highlight ModeMsg guifg=#826E59 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link MsgArea Normal
highlight MsgSeparator guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight MoreMsg guifg=#8BC270 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight ErrorMsg guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight WarningMsg guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Directory guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Title guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffAdd guifg=#8BC270 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffDelete guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffChange guifg=#FFB41F guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffText guifg=#FFB41F guibg=NONE guisp=NONE gui=underline blend=NONE
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight SpellBad guifg=#D65C70 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight SpellCap guifg=#D194C7 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight SpellLocal guifg=#CC8033 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight SpellRare guifg=#FFCC66 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight LspDiagnosticsDefaultError guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultWarning guifg=#FFCC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultInformation guifg=#E2DBD5 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultHint guifg=#4DB380 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link Float Number
highlight! link Boolean Number
highlight Character guifg=#9CA7C9 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Identifier guifg=#E2DBD5 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link Conditional Statement
highlight! link Repeat Statement
highlight! link Label Statement
highlight! link Keyword Statement
highlight Exception guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link Include PreProc
highlight! link Define PreProc
highlight! link Macro PreProc
highlight! link PreCondit PreProc
highlight! link StorageClass Type
highlight! link Structure Type
highlight! link Typedef Type
highlight Special guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link SpecialChar Special
highlight Tag guifg=#FFCC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link Delimiter Special
highlight! link SpecialComment Special
highlight! link Debug Special
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline blend=NONE
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Ignore guifg=#826E59 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Todo guifg=#CC8033 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight! link TSConstant Constant
highlight TSConstBuiltin guifg=#997AB8 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSConstMacro guifg=#997AB8 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight! link TSNumber Number
highlight! link TSFloat Float
highlight! link TSBoolean Boolean
highlight! link TSCharacter Character
highlight! link TSString String
highlight! link TSStringRegex String
highlight TSStringEscape guifg=#85ADAD guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSSymbol guifg=#D194C7 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSField guifg=#E2DBD5 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSProperty TSField
highlight TSParameter guifg=#E2DBD5 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSParameterReference TSParameter
highlight TSVariable guifg=#E2DBD5 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSVariableBuiltin guifg=#E2DBD5 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight! link TSFunction Function
highlight! link TSFuncBuiltin TSFunction
highlight! link TSFuncMacro TSFunction
highlight! link TSMethod TSFunction
highlight TSConstructor guifg=#FFCC66 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight TSKeywordFunction guifg=#8BC270 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSKeyword Keyword
highlight! link TSConditional Conditional
highlight! link TSRepeat Repeat
highlight! link TSLabel Label
highlight! link TSOperator Operator
highlight! link TSException Exception
highlight! link TSNamespace PreProc
highlight! link TSAnnotation TSNamespace
highlight! link TSInclude TSNamespace
highlight! link TSType Type
highlight TSTypeBuiltin guifg=#85ADAD guibg=NONE guisp=NONE gui=italic blend=NONE
highlight! link TSPunctDelimiter Delimiter
highlight TSPunctBracket guifg=#FFCC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSPunctSpecial TSPunctDelimiter
highlight! link TSComment Comment
highlight! link TSTag Tag
highlight! link TSTagDelimiter Special
highlight TSText guifg=#E2DBD5 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSEmphasis guifg=#E2DBD5 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSUnderline guifg=#E2DBD5 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight TSStrike guifg=#A08A73 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight TSStrong guifg=#E2DBD5 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight TSTitle guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSLiteral TSString
highlight! link TSURI TSSymbol
highlight TSError guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight HelpHyperTextJump guifg=#FFCC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight markdownLinkText guifg=#E2DBD5 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Normal guifg=#E2DBD5 guibg=#2A2622 guisp=NONE gui=NONE blend=NONE
highlight Error guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Function guifg=#FFCC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight PreProc guifg=#4DB380 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Type guifg=#85ADAD guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight String guifg=#9CA7C9 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Constant guifg=#997AB8 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Search guifg=#2A2622 guibg=#FFCC66 guisp=NONE gui=NONE blend=NONE
highlight Conceal guifg=#FFCC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Operator guifg=#F7856E guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Statement guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Question guifg=#8BC270 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Number guifg=#D194C7 guibg=NONE guisp=NONE gui=NONE blend=NONE