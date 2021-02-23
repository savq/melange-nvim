hi clear
syntax reset
set t_Co=256
let g:colors_name='melange_dev'
highlight! link Structure Type
highlight! link Typedef Type
highlight Special guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link SpecialChar Special
highlight! link Tag Special
highlight! link Delimiter Special
highlight! link SpecialComment Special
highlight! link Debug Special
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline blend=NONE
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Ignore guifg=#7A7A7A guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Error guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Todo guifg=#CC8033 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight c_lsp guifg=#7A7A7A guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link LspDiagnosticsError c_lsp
highlight LspDiagnosticsErrorSign guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link LspDiagnosticsErrorFloating c_lsp
highlight! link LspDiagnosticsWarning c_lsp
highlight LspDiagnosticsWarningSign guifg=#FFCC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link LspDiagnosticsWarningFloating c_lsp
highlight! link LspDiagnosticsInformation c_lsp
highlight LspDiagnosticsInformationSign guifg=#4DB380 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link LspDiagnosticsInformationFloating c_lsp
highlight! link LspDiagnosticsHint c_lsp
highlight! link LspDiagnosticsHintSign c_lsp
highlight! link LspDiagnosticsHintFloating c_lsp
highlight! link TSPunctDelimiter Delimiter
highlight TSPunctBracket guifg=#FFCC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSPunctSpecial TSPunctDelimiter
highlight! link TSConstant Constant
highlight TSConstBuiltin guifg=#997AB8 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSConstMacro guifg=#997AB8 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight! link TSString String
highlight! link TSStringRegex String
highlight TSStringEscape guifg=#7AB8B8 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight! link TSCharacter Character
highlight! link TSBoolean Boolean
highlight! link TSNumber Number
highlight! link TSFloat Float
highlight! link TSFunction Function
highlight! link TSFuncBuiltin TSFunction
highlight! link TSFuncMacro TSFunction
highlight! link TSMethod TSFunction
highlight TSConstructor guifg=#FFCC66 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight TSKeywordFunction guifg=#4DB380 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSParameter guifg=#C4C4C4 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSParameterReference TSParameter
highlight! link TSKeyword Statement
highlight! link TSConditional Conditional
highlight! link TSRepeat Repeat
highlight! link TSLabel Label
highlight! link TSOperator Operator
highlight! link TSException Exception
highlight! link TSType Type
highlight TSTypeBuiltin guifg=#7AB8B8 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight! link TSNamespace PreProc
highlight! link TSInclude TSNamespace
highlight! link TSAnnotation TSNamespace
highlight TSVariable guifg=#C4C4C4 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSVariableBuiltin guifg=#C4C4C4 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSField guifg=#C4C4C4 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link TSProperty TSField
highlight TSError guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSText guifg=#C4C4C4 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSStrong guifg=#C4C4C4 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight TSEmphasis guifg=#C4C4C4 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSUnderline guifg=#C4C4C4 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight PmenuSel guifg=NONE guibg=#595959 guisp=NONE gui=NONE blend=NONE
highlight Normal guifg=#C4C4C4 guibg=#262626 guisp=NONE gui=NONE blend=NONE
highlight NormalFloat guifg=#C4C4C4 guibg=#303030 guisp=NONE gui=NONE blend=NONE
highlight NormalNC guifg=#C4C4C4 guibg=#242424 guisp=NONE gui=NONE blend=NONE
highlight Comment guifg=#878787 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Conceal guifg=#7A7A7A guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Whitespace guifg=#595959 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight NonText guifg=#595959 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight SpecialKey guifg=#595959 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Cursor guifg=#262626 guibg=#C4C4C4 guisp=NONE gui=NONE blend=NONE
highlight TermCursor guifg=#262626 guibg=#C4C4C4 guisp=NONE gui=NONE blend=NONE
highlight ColorColumn guifg=NONE guibg=#303030 guisp=NONE gui=NONE blend=NONE
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight LineNr guifg=#7A7A7A guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight CursorLineNr guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link SignColumn LineNr
highlight VertSplit guifg=#303030 guibg=#303030 guisp=NONE gui=NONE blend=NONE
highlight Folded guifg=#7A7A7A guibg=#242424 guisp=NONE gui=NONE blend=NONE
highlight FoldColumn guifg=#7A7A7A guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Pmenu guifg=NONE guibg=#303030 guisp=NONE gui=NONE blend=NONE
highlight markdownLinkText guifg=#7AB8B8 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link markdownRule Statement
highlight! link markdownCodeBlock String
highlight! link markdownCode String
highlight! link TSURI TSConstant
highlight! link TSLiteral TSString
highlight TSTitle guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight StatusLine guifg=NONE guibg=#303030 guisp=NONE gui=NONE blend=NONE
highlight StatusLineNC guifg=#7A7A7A guibg=#303030 guisp=NONE gui=NONE blend=NONE
highlight Search guifg=#262626 guibg=#FFCC66 guisp=NONE gui=NONE blend=NONE
highlight! link IncSearch Search
highlight! link Substitute Search
highlight Visual guifg=NONE guibg=#595959 guisp=NONE gui=NONE blend=NONE
highlight VisualNOS guifg=NONE guibg=#303030 guisp=NONE gui=NONE blend=NONE
highlight WildMenu guifg=#F2F2F2 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight MatchParen guifg=#F2F2F2 guibg=#595959 guisp=NONE gui=NONE blend=NONE
highlight QuickFixLine guifg=#F2F2F2 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight ModeMsg guifg=#7A7A7A guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link MsgArea Normal
highlight MoreMsg guifg=#88CC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Question guifg=#88CC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight ErrorMsg guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight WarningMsg guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Directory guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Title guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffAdd guifg=#88CC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffDelete guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffChange guifg=#FFB41F guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffText guifg=#FFB41F guibg=NONE guisp=NONE gui=underline blend=NONE
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight SpellBad guifg=#D65C70 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight SpellCap guifg=#EBADE0 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight SpellLocal guifg=#CC8033 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight SpellRare guifg=#FFCC66 guibg=NONE guisp=NONE gui=underline blend=NONE
highlight Constant guifg=#997AB8 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Number guifg=#EBADE0 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link Float Number
highlight! link Boolean Number
highlight Character guifg=#8C9FD9 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight String guifg=#8C9FD9 guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Identifier guifg=#C4C4C4 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Function guifg=#FFCC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Statement guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link Conditional Statement
highlight! link Repeat Statement
highlight Label guifg=#CC8033 guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Operator guifg=#F07F75 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link Keyword Statement
highlight Exception guifg=#D65C70 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight PreProc guifg=#88CC66 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link Include PreProc
highlight! link Define PreProc
highlight! link Macro PreProc
highlight! link PreCondit PreProc
highlight Type guifg=#7AB8B8 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight! link StorageClass Type