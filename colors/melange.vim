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
highlight Conceal guifg=#BF9540 guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#AD85AD guibg=NONE guisp=NONE gui=NONE
highlight CursorLineNr guifg=#E09952 guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#2E4224 guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#422438 guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#6B2E2E guisp=NONE gui=NONE
highlight DiffText guifg=NONE guibg=#242E42 guisp=NONE gui=NONE
highlight Directory guifg=#E09952 guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=NONE guibg=#6B2E2E guisp=NONE gui=NONE
highlight ErrorMsg guifg=NONE guibg=#6B2E2E guisp=NONE gui=NONE
highlight Folded guifg=#998066 guibg=#38332E guisp=NONE gui=NONE
highlight Function guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE
highlight HelpHyperTextJump guifg=#E09952 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#EDE6DE guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#38332E guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#544D45 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultError guifg=#B34D4D guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultHint guifg=#59A659 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultInformation guifg=#94A8D1 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultWarning guifg=#F7C96E guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight MatchParen guifg=NONE guibg=#38332E guisp=NONE gui=bold
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight ModeMsg guifg=#C9B39C guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#59A659 guibg=NONE guisp=NONE gui=bold
highlight Normal guifg=#EDE6DE guibg=#2A2622 guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#38332E guisp=NONE gui=NONE
highlight Number guifg=#D194BD guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#F7856E guibg=NONE guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#544D45 guisp=NONE gui=NONE
highlight PreProc guifg=#59A659 guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#EDE6DE guibg=#BF9540 guisp=NONE gui=NONE
highlight Special guifg=#BF9540 guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#B34D4D guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#5973A6 guibg=NONE guisp=NONE gui=undercurl
highlight SpellLocal guifg=#E09952 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#F7C96E guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#E09952 guibg=NONE guisp=NONE gui=NONE
highlight StatusLineNC guifg=#C9B39C guibg=#38332E guisp=NONE gui=NONE
highlight String guifg=#94A8D1 guibg=NONE guisp=NONE gui=italic
highlight Substitute guifg=#EDE6DE guibg=#BF9540 guisp=NONE gui=NONE
highlight TSConstBuiltin guifg=#AD85AD guibg=NONE guisp=NONE gui=italic
highlight TSConstMacro guifg=#AD85AD guibg=NONE guisp=NONE gui=bold
highlight TSError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight TSFuncMacro guifg=#F7C96E guibg=NONE guisp=NONE gui=italic
highlight TSKeywordFunction guifg=#A8D194 guibg=NONE guisp=NONE gui=NONE
highlight TSPunctDelimiter guifg=#B34D4D guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough
highlight TSStringEscape guifg=#5973A6 guibg=NONE guisp=NONE gui=NONE
highlight TSSymbol guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight TSURI guifg=#94A8D1 guibg=NONE guisp=NONE gui=underline
highlight TSVariableBuiltin guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=#38332E guisp=NONE gui=bold
highlight Title guifg=#E09952 guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#E09952 guibg=NONE guisp=NONE gui=bold
highlight Type guifg=#85ADAD guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#544D45 guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#544D45 guisp=NONE gui=bold
highlight WarningMsg guifg=#B34D4D guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#544D45 guibg=NONE guisp=NONE gui=NONE
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight! link EndOfBuffer Whitespace
highlight! link FoldColumn LineNr
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link Question MoreMsg
highlight! link SignColumn LineNr
highlight! link SpecialKey Whitespace
highlight! link StatusLine NormalFloat
highlight! link TSEmphasis Italic
highlight! link TSUnderline Underlined
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight! link WildMenu NormalFloat
else
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Boolean guifg=#B34D90 guibg=NONE guisp=NONE gui=NONE
highlight Character guifg=#708BC2 guibg=NONE guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#F0E6DB guisp=NONE gui=NONE
highlight Comment guifg=#A68059 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#D6AD5C guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#C99CC9 guibg=NONE guisp=NONE gui=NONE
highlight CursorLineNr guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#E1F2D9 guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#EDDEED guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#EBB8AD guisp=NONE gui=NONE
highlight DiffText guifg=NONE guibg=#D9E1F2 guisp=NONE gui=NONE
highlight Directory guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=NONE guibg=#EBB8AD guisp=NONE gui=NONE
highlight ErrorMsg guifg=NONE guibg=#EBB8AD guisp=NONE gui=NONE
highlight Folded guifg=#A68059 guibg=#F0E6DB guisp=NONE gui=NONE
highlight Function guifg=#D99D26 guibg=NONE guisp=NONE gui=NONE
highlight HelpHyperTextJump guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#634D36 guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#F0E6DB guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#E0CCB8 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultError guifg=#D65C5C guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultHint guifg=#7AB87A guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultInformation guifg=#708BC2 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultWarning guifg=#D99D26 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight MatchParen guifg=NONE guibg=#F0E6DB guisp=NONE gui=bold
highlight Melange guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight ModeMsg guifg=#856647 guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#7AB87A guibg=NONE guisp=NONE gui=bold
highlight Normal guifg=#634D36 guibg=#F7F2ED guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#F0E6DB guisp=NONE gui=NONE
highlight Number guifg=#B34D90 guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#AD1F1F guibg=NONE guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#E0CCB8 guisp=NONE gui=NONE
highlight PreProc guifg=#7AB87A guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#634D36 guibg=#D6AD5C guisp=NONE gui=NONE
highlight Special guifg=#D6AD5C guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#D65C5C guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#8CA6D9 guibg=NONE guisp=NONE gui=undercurl
highlight SpellLocal guifg=#CC8033 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#D99D26 guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight StatusLineNC guifg=#856647 guibg=#F0E6DB guisp=NONE gui=NONE
highlight String guifg=#708BC2 guibg=NONE guisp=NONE gui=italic
highlight Substitute guifg=#634D36 guibg=#D6AD5C guisp=NONE gui=NONE
highlight TSConstBuiltin guifg=#C99CC9 guibg=NONE guisp=NONE gui=italic
highlight TSConstMacro guifg=#C99CC9 guibg=NONE guisp=NONE gui=bold
highlight TSError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight TSFuncMacro guifg=#D99D26 guibg=NONE guisp=NONE gui=italic
highlight TSKeywordFunction guifg=#559933 guibg=NONE guisp=NONE gui=NONE
highlight TSPunctDelimiter guifg=#D65C5C guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough
highlight TSStringEscape guifg=#8CA6D9 guibg=NONE guisp=NONE gui=NONE
highlight TSSymbol guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight TSURI guifg=#708BC2 guibg=NONE guisp=NONE gui=underline
highlight TSVariableBuiltin guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=#F0E6DB guisp=NONE gui=bold
highlight Title guifg=#CC8033 guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#CC8033 guibg=NONE guisp=NONE gui=bold
highlight Type guifg=#85ADAD guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#E0CCB8 guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#E0CCB8 guisp=NONE gui=bold
highlight WarningMsg guifg=#D65C5C guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#E0CCB8 guibg=NONE guisp=NONE gui=NONE
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight! link EndOfBuffer Whitespace
highlight! link FoldColumn LineNr
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link Question MoreMsg
highlight! link SignColumn LineNr
highlight! link SpecialKey Whitespace
highlight! link StatusLine NormalFloat
highlight! link TSEmphasis Italic
highlight! link TSUnderline Underlined
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight! link WildMenu NormalFloat
endif

