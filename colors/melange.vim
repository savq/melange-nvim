hi clear
syntax reset
set t_Co=256
let g:colors_name = 'melange'
if &background == 'dark'
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Character guifg=#9CA7C9 guibg=NONE guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#38332E guisp=NONE gui=NONE
highlight Comment guifg=#A38C75 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#997AB8 guibg=NONE guisp=NONE gui=NONE
highlight Cursor guifg=reverse guibg=reverse guisp=NONE gui=NONE
highlight CursorLineNr guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight Delimiter guifg=#F7856E guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=#8BC270 guibg=NONE guisp=NONE gui=NONE
highlight DiffChange guifg=#CC9933 guibg=NONE guisp=NONE gui=NONE
highlight DiffDelete guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE
highlight DiffText guifg=#CC9933 guibg=NONE guisp=NONE gui=underline
highlight Directory guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE
highlight ErrorMsg guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE
highlight Exception guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE
highlight Folded guifg=#A38C75 guibg=#38332E guisp=NONE gui=NONE
highlight Function guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE
highlight HelpHyperTextJump guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#EBE6E0 guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#544D45 guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#6B5947 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultError guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultHint guifg=#8BC270 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultInformation guifg=#EBE6E0 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultWarning guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE
highlight MatchParen guifg=#EBE6E0 guibg=#6B5947 guisp=NONE gui=NONE
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight ModeMsg guifg=#A38C75 guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#8BC270 guibg=NONE guisp=NONE gui=NONE
highlight MsgSeparator guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight Normal guifg=#EBE6E0 guibg=#2A2622 guisp=NONE gui=NONE
highlight NormalFloat guifg=#EBE6E0 guibg=#38332E guisp=NONE gui=NONE
highlight Number guifg=#D194C7 guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#F7856E guibg=NONE guisp=NONE gui=NONE
highlight Pmenu guifg=#EBE6E0 guibg=#38332E guisp=NONE gui=NONE
highlight PmenuSel guifg=#EBE6E0 guibg=#544D45 guisp=NONE gui=NONE
highlight PreProc guifg=#4DB380 guibg=NONE guisp=NONE gui=NONE
highlight Question guifg=#8BC270 guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#2A2622 guibg=#F7C96E guisp=NONE gui=NONE
highlight Special guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#D65C70 guibg=NONE guisp=NONE gui=underline
highlight SpellCap guifg=#D194C7 guibg=NONE guisp=NONE gui=underline
highlight SpellLocal guifg=#CC8033 guibg=NONE guisp=NONE gui=underline
highlight SpellRare guifg=#F7C96E guibg=NONE guisp=NONE gui=underline
highlight Statement guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight StatusLine guifg=#EBE6E0 guibg=#38332E guisp=NONE gui=NONE
highlight StatusLineNC guifg=#A38C75 guibg=#38332E guisp=NONE gui=NONE
highlight String guifg=#9CA7C9 guibg=NONE guisp=NONE gui=italic
highlight TSConstBuiltin guifg=#997AB8 guibg=NONE guisp=NONE gui=italic
highlight TSConstMacro guifg=#997AB8 guibg=NONE guisp=NONE gui=bold
highlight TSEmphasis guifg=#EBE6E0 guibg=NONE guisp=NONE gui=italic
highlight TSError guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE
highlight TSField guifg=#EBE6E0 guibg=NONE guisp=NONE gui=NONE
highlight TSKeywordFunction guifg=#8BC270 guibg=NONE guisp=NONE gui=NONE
highlight TSParameter guifg=#EBE6E0 guibg=NONE guisp=NONE gui=NONE
highlight TSPunctBracket guifg=#CC9933 guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=#A38C75 guibg=NONE guisp=NONE gui=underline
highlight TSStringEscape guifg=#85ADAD guibg=NONE guisp=NONE gui=italic
highlight TSStrong guifg=#EBE6E0 guibg=NONE guisp=NONE gui=bold
highlight TSSymbol guifg=#D194C7 guibg=NONE guisp=NONE gui=italic
highlight TSText guifg=#EBE6E0 guibg=NONE guisp=NONE gui=NONE
highlight TSTitle guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight TSTypeBuiltin guifg=#85ADAD guibg=NONE guisp=NONE gui=italic
highlight TSUnderline guifg=#EBE6E0 guibg=NONE guisp=NONE gui=underline
highlight TSVariable guifg=#EBE6E0 guibg=NONE guisp=NONE gui=NONE
highlight TSVariableBuiltin guifg=#EBE6E0 guibg=NONE guisp=NONE gui=italic
highlight Tag guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE
highlight TermCursor guifg=#2A2622 guibg=#EBE6E0 guisp=NONE gui=NONE
highlight Title guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#CC8033 guibg=NONE guisp=NONE gui=bold,italic
highlight Type guifg=#85ADAD guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#38332E guibg=#38332E guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#38332E guisp=NONE gui=bold
highlight VisualNOS guifg=NONE guibg=#38332E guisp=NONE gui=NONE
highlight WarningMsg guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#6B5947 guibg=NONE guisp=NONE gui=NONE
highlight markdownLinkText guifg=#EBE6E0 guibg=NONE guisp=NONE gui=NONE
highlight! link Boolean Number
highlight! link Conditional Statement
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight! link Debug Special
highlight! link Define PreProc
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight! link Float Number
highlight! link FoldColumn LineNr
highlight! link IncSearch Search
highlight! link Include PreProc
highlight! link Keyword Statement
highlight! link Label Statement
highlight! link Macro PreProc
highlight! link MsgArea Normal
highlight! link NonText Whitespace
highlight! link NormalNC Normal
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link PreCondit PreProc
highlight! link QuickFixLine Search
highlight! link Repeat Statement
highlight! link SignColumn LineNr
highlight! link SpecialChar Special
highlight! link SpecialComment Special
highlight! link SpecialKey Whitespace
highlight! link StorageClass Type
highlight! link Structure Type
highlight! link Substitute Search
highlight! link TSAnnotation TSNamespace
highlight! link TSBoolean Boolean
highlight! link TSCharacter Character
highlight! link TSComment Comment
highlight! link TSConditional Conditional
highlight! link TSConstant Constant
highlight! link TSConstructor TSFunction
highlight! link TSException Exception
highlight! link TSFloat Float
highlight! link TSFuncBuiltin TSFunction
highlight! link TSFuncMacro TSFunction
highlight! link TSFunction Function
highlight! link TSInclude TSNamespace
highlight! link TSKeyword Keyword
highlight! link TSLabel Label
highlight! link TSLiteral TSString
highlight! link TSMethod TSFunction
highlight! link TSNamespace PreProc
highlight! link TSNumber Number
highlight! link TSOperator Operator
highlight! link TSParameterReference TSParameter
highlight! link TSProperty TSField
highlight! link TSPunctDelimiter Delimiter
highlight! link TSPunctSpecial Delimiter
highlight! link TSRepeat Repeat
highlight! link TSString String
highlight! link TSStringRegex String
highlight! link TSTag Tag
highlight! link TSTagDelimiter Special
highlight! link TSType Type
highlight! link TSURI TSSymbol
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLineNC
highlight! link TabLineSel StatusLine
highlight! link Typedef Type
highlight! link WildMenu Pmenu
else
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Character guifg=#6D7EB0 guibg=NONE guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#E0CCB8 guisp=NONE gui=NONE
highlight Comment guifg=#8A735C guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#D79B23 guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#7A569F guibg=NONE guisp=NONE gui=NONE
highlight Cursor guifg=reverse guibg=reverse guisp=NONE gui=NONE
highlight CursorLineNr guifg=#CA731C guibg=NONE guisp=NONE gui=NONE
highlight Delimiter guifg=#E0593E guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=#6AAB49 guibg=NONE guisp=NONE gui=NONE
highlight DiffChange guifg=#CC9933 guibg=NONE guisp=NONE gui=NONE
highlight DiffDelete guifg=#C43149 guibg=NONE guisp=NONE gui=NONE
highlight DiffText guifg=#CC9933 guibg=NONE guisp=NONE gui=underline
highlight Directory guifg=#CA731C guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=#C43149 guibg=NONE guisp=NONE gui=NONE
highlight ErrorMsg guifg=#C43149 guibg=NONE guisp=NONE gui=NONE
highlight Exception guifg=#C43149 guibg=NONE guisp=NONE gui=NONE
highlight Folded guifg=#8A735C guibg=#E0CCB8 guisp=NONE gui=NONE
highlight Function guifg=#D79B23 guibg=NONE guisp=NONE gui=NONE
highlight HelpHyperTextJump guifg=#D79B23 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#5C4D3D guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#D1B394 guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#B8A694 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultError guifg=#C43149 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultHint guifg=#6AAB49 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultInformation guifg=#5C4D3D guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultWarning guifg=#D79B23 guibg=NONE guisp=NONE gui=NONE
highlight MatchParen guifg=#5C4D3D guibg=#B8A694 guisp=NONE gui=NONE
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight ModeMsg guifg=#8A735C guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#6AAB49 guibg=NONE guisp=NONE gui=NONE
highlight MsgSeparator guifg=#CA731C guibg=NONE guisp=NONE gui=NONE
highlight Normal guifg=#5C4D3D guibg=#E8D9C9 guisp=NONE gui=NONE
highlight NormalFloat guifg=#5C4D3D guibg=#E0CCB8 guisp=NONE gui=NONE
highlight Number guifg=#BC62AD guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#E0593E guibg=NONE guisp=NONE gui=NONE
highlight Pmenu guifg=#5C4D3D guibg=#E0CCB8 guisp=NONE gui=NONE
highlight PmenuSel guifg=#5C4D3D guibg=#D1B394 guisp=NONE gui=NONE
highlight PreProc guifg=#3D8F66 guibg=NONE guisp=NONE gui=NONE
highlight Question guifg=#6AAB49 guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#E8D9C9 guibg=#D79B23 guisp=NONE gui=NONE
highlight Special guifg=#CA731C guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#C43149 guibg=NONE guisp=NONE gui=underline
highlight SpellCap guifg=#BC62AD guibg=NONE guisp=NONE gui=underline
highlight SpellLocal guifg=#CA731C guibg=NONE guisp=NONE gui=underline
highlight SpellRare guifg=#D79B23 guibg=NONE guisp=NONE gui=underline
highlight Statement guifg=#CA731C guibg=NONE guisp=NONE gui=NONE
highlight StatusLine guifg=#5C4D3D guibg=#E0CCB8 guisp=NONE gui=NONE
highlight StatusLineNC guifg=#8A735C guibg=#E0CCB8 guisp=NONE gui=NONE
highlight String guifg=#6D7EB0 guibg=NONE guisp=NONE gui=italic
highlight TSConstBuiltin guifg=#7A569F guibg=NONE guisp=NONE gui=italic
highlight TSConstMacro guifg=#7A569F guibg=NONE guisp=NONE gui=bold
highlight TSEmphasis guifg=#5C4D3D guibg=NONE guisp=NONE gui=italic
highlight TSError guifg=#C43149 guibg=NONE guisp=NONE gui=NONE
highlight TSField guifg=#5C4D3D guibg=NONE guisp=NONE gui=NONE
highlight TSKeywordFunction guifg=#6AAB49 guibg=NONE guisp=NONE gui=NONE
highlight TSParameter guifg=#5C4D3D guibg=NONE guisp=NONE gui=NONE
highlight TSPunctBracket guifg=#CC9933 guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=#8A735C guibg=NONE guisp=NONE gui=underline
highlight TSStringEscape guifg=#629393 guibg=NONE guisp=NONE gui=italic
highlight TSStrong guifg=#5C4D3D guibg=NONE guisp=NONE gui=bold
highlight TSSymbol guifg=#BC62AD guibg=NONE guisp=NONE gui=italic
highlight TSText guifg=#5C4D3D guibg=NONE guisp=NONE gui=NONE
highlight TSTitle guifg=#CA731C guibg=NONE guisp=NONE gui=NONE
highlight TSTypeBuiltin guifg=#629393 guibg=NONE guisp=NONE gui=italic
highlight TSUnderline guifg=#5C4D3D guibg=NONE guisp=NONE gui=underline
highlight TSVariable guifg=#5C4D3D guibg=NONE guisp=NONE gui=NONE
highlight TSVariableBuiltin guifg=#5C4D3D guibg=NONE guisp=NONE gui=italic
highlight Tag guifg=#D79B23 guibg=NONE guisp=NONE gui=NONE
highlight TermCursor guifg=#E8D9C9 guibg=#5C4D3D guisp=NONE gui=NONE
highlight Title guifg=#CA731C guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#CA731C guibg=NONE guisp=NONE gui=bold,italic
highlight Type guifg=#629393 guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#E0CCB8 guibg=#E0CCB8 guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#E0CCB8 guisp=NONE gui=bold
highlight VisualNOS guifg=NONE guibg=#E0CCB8 guisp=NONE gui=NONE
highlight WarningMsg guifg=#C43149 guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#B8A694 guibg=NONE guisp=NONE gui=NONE
highlight markdownLinkText guifg=#5C4D3D guibg=NONE guisp=NONE gui=NONE
highlight! link Boolean Number
highlight! link Conditional Statement
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight! link Debug Special
highlight! link Define PreProc
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight! link Float Number
highlight! link FoldColumn LineNr
highlight! link IncSearch Search
highlight! link Include PreProc
highlight! link Keyword Statement
highlight! link Label Statement
highlight! link Macro PreProc
highlight! link MsgArea Normal
highlight! link NonText Whitespace
highlight! link NormalNC Normal
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link PreCondit PreProc
highlight! link QuickFixLine Search
highlight! link Repeat Statement
highlight! link SignColumn LineNr
highlight! link SpecialChar Special
highlight! link SpecialComment Special
highlight! link SpecialKey Whitespace
highlight! link StorageClass Type
highlight! link Structure Type
highlight! link Substitute Search
highlight! link TSAnnotation TSNamespace
highlight! link TSBoolean Boolean
highlight! link TSCharacter Character
highlight! link TSComment Comment
highlight! link TSConditional Conditional
highlight! link TSConstant Constant
highlight! link TSConstructor TSFunction
highlight! link TSException Exception
highlight! link TSFloat Float
highlight! link TSFuncBuiltin TSFunction
highlight! link TSFuncMacro TSFunction
highlight! link TSFunction Function
highlight! link TSInclude TSNamespace
highlight! link TSKeyword Keyword
highlight! link TSLabel Label
highlight! link TSLiteral TSString
highlight! link TSMethod TSFunction
highlight! link TSNamespace PreProc
highlight! link TSNumber Number
highlight! link TSOperator Operator
highlight! link TSParameterReference TSParameter
highlight! link TSProperty TSField
highlight! link TSPunctDelimiter Delimiter
highlight! link TSPunctSpecial Delimiter
highlight! link TSRepeat Repeat
highlight! link TSString String
highlight! link TSStringRegex String
highlight! link TSTag Tag
highlight! link TSTagDelimiter Special
highlight! link TSType Type
highlight! link TSURI TSSymbol
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLineNC
highlight! link TabLineSel StatusLine
highlight! link Typedef Type
highlight! link WildMenu Pmenu
endif

