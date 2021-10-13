--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- vim.opt.keywordprg=":help"  --Jump easily to hl-groups docs.

local lush = require("lush")
local hsl = lush.hsl
local hsluv = lush.hsluv

local palette = {}

palette.dark = {
    grays = {
        bg      = hsluv(50,  20, 15); -- hsluv(53,  17, 15); -- hsl(30,  10, 15);
        overbg  = hsluv(50,  20, 20); -- hsluv(53,  17, 21); -- hsl(30,  10, 20);
        sel     = hsluv(50,  20, 30); -- hsluv(55,  19, 33); -- hsl(30,  10, 30);
        com     = hsluv(50,  30, 60); -- hsluv(50,  38, 55); -- hsl(30,  20, 50);
        faded   = hsluv(50,  30, 70); -- hsluv(52,  26, 74); -- hsl(30,  30, 70);
        fg      = hsluv(50,  30, 90); -- hsluv(57,  22, 91); -- hsl(30,  30, 90);
    };

    shades = {
        red     = hsluv( 10, 50, 20); -- hsluv( 12, 45, 27); -- hsl(  0, 40, 30);
        yellow  = hsluv( 60, 80, 50); -- hsluv( 57, 81, 52); -- hsl( 40, 50, 40);
        green   = hsluv(130, 40, 20); -- hsluv(127, 55, 24); -- hsl(120, 30, 20);
        cyan    = hsluv(190, 40, 20); -- hsluv(192, 62, 25); -- hsl(180, 30, 20);
        blue    = hsluv(250, 40, 20); -- hsluv(252, 43, 18); -- hsl(220, 30, 20);
        magenta = hsluv(310, 40, 20); -- hsluv(327, 39, 18); -- hsl(320, 30, 20);
    };

    tones = {
        red     = hsluv( 10, 40, 50); -- hsluv( 12, 49, 46); -- hsl(  0, 40, 50);
        yellow  = hsluv( 40, 70, 70); -- hsluv( 42, 75, 68); -- hsl( 30, 70, 60);
        green   = hsluv(130, 40, 60); -- hsluv(127, 45, 58); -- hsl(120, 20, 50);
        cyan    = hsluv(190, 40, 65); -- hsluv(192, 38, 67); -- hsl(180, 20, 60);
        blue    = hsluv(250, 40, 50); -- hsluv(253, 50, 48); -- hsl(220, 30, 50);
        magenta = hsluv(310, 30, 60); -- hsluv(307, 24, 60); -- hsl(300, 20, 60);
    };

    tints = {
        red     = hsluv( 20, 80, 65); -- hsluv( 20, 87, 67); -- hsl( 10, 90, 70);
        yellow  = hsluv( 60, 70, 80); -- hsluv( 59, 78, 83); -- hsl( 40, 90, 70);
        green   = hsluv(130, 40, 80); -- hsluv(127, 40, 78); -- hsl(120, 40, 70);
        cyan    = hsluv(190, 40, 80); -- hsluv(192, 48, 79); -- hsl(180, 40, 70);
        blue    = hsluv(250, 40, 70); -- hsluv(251, 45, 68); -- hsl(220, 40, 70);
        magenta = hsluv(310, 40, 70); -- hsluv(325, 44, 68); -- hsl(320, 40, 70);
    };
}

palette.light = {
    grays = {
        bg      = hsluv( 40, 30, 95); -- hsluv(54,   33, 95); -- hsl(30,  40, 95);
        overbg  = hsluv( 40, 30, 90); -- hsluv(56,   33, 91); -- hsl(30,  40, 90);
        sel     = hsluv( 40, 30, 85); -- hsluv(52,   29, 83); -- hsl(30,  40, 80);
        com     = hsluv( 50, 40, 60); -- hsluv(49,   39, 65); -- hsl(30,  30, 60);
        faded   = hsluv( 50, 40, 50); -- hsluv(47,   54, 45); -- hsl(30,  30, 40);
        fg      = hsluv( 50, 40, 40); -- hsluv(48,   51, 34); -- hsl(30,  30, 30);
    };

    tints = {
        red     = hsluv( 10, 60, 80); -- hsluv( 24, 61, 79); -- hsl( 10, 60, 80);
        yellow  = hsluv( 60, 50, 80); -- hsluv( 63, 54, 79); -- hsl( 40, 60, 70);
        green   = hsluv(130, 30, 90); -- hsluv(127, 31, 93); -- hsl(120, 50, 90);
        cyan    = hsluv(190, 30, 90); -- hsluv(192, 27, 93); -- hsl(180, 50, 90);
        blue    = hsluv(250, 30, 90); -- hsluv(249, 56, 89); -- hsl(220, 50, 90);
        magenta = hsluv(310, 30, 90); -- hsluv(323, 36, 89); -- hsl(320, 30, 90);
    };

    tones = {
        red     = hsluv( 10, 50, 60); -- hsluv( 12, 55, 54); -- hsl(  0, 60, 60);
        yellow  = hsluv( 40, 90, 60); -- hsluv( 39, 86, 60); -- hsl( 30, 60, 50);
        green   = hsluv(130, 50, 70); -- hsluv(127, 46, 69); -- hsl(120, 30, 60);
        cyan    = hsluv(180, 50, 60); -- hsluv(192, 53, 59); -- hsl(180, 20, 50);
        blue    = hsluv(250, 50, 60); -- hsluv(251, 56, 67); -- hsl(220, 50, 70);
        magenta = hsluv(310, 40, 60); -- hsluv(307, 37, 59); -- hsl(300, 30, 60);
    };

    shades = {
        red     = hsluv( 10, 60, 50); -- hsluv( 12, 84, 37); -- hsl(  0, 70, 40);
        yellow  = hsluv( 60, 90, 65); -- hsluv( 53, 94, 68); -- hsl( 40, 70, 50);
        green   = hsluv(130, 60, 50); -- hsluv(127, 83, 55); -- hsl(120, 50, 40);
        cyan    = hsluv(180, 60, 50); -- hsluv(192, 65, 38); -- hsl(180, 30, 30);
        blue    = hsluv(250, 60, 50); -- hsluv(255, 63, 46); -- hsl(220, 40, 50);
        magenta = hsluv(310, 60, 50); -- hsluv(330, 60, 48); -- hsl(320, 40, 50);
    };
}

local bg = vim.opt.background:get()
local g = palette[bg].grays
local c = palette[bg].tones

local d, b;  --TODO: Rename
if bg == "dark" then  --shades are backgrounds, and tints foregrounds
    d = palette[bg].shades
    b = palette[bg].tints
elseif bg == "light" then  --tints are backgrounds, and shades foregrounds
    d = palette[bg].tints
    b = palette[bg].shades
end


-- Font variants:
-- This only works when loading this file directly, not when loading with `:colorscheme`
local bf, it, underline, undercurl;
if vim.g.melange_enable_font_variants ~= 0 then
    bf = "bold"
    it = "italic"
    underline = "underline"
    undercurl = "undercurl"
end


return lush(function() return {

---- :help highlight-default -------------------------------

Normal       { fg=g.fg, bg=g.bg };
NormalFloat  { bg=g.overbg };
-- NormalNC     { };

-- Cursor       { };
-- lCursor      { };
-- CursorIM     { };
-- TermCursor   { };
-- TermCursorNC { };

ColorColumn  { bg=g.overbg };
CursorColumn { ColorColumn };
CursorLine   { ColorColumn };
VertSplit    { fg=g.sel };

LineNr       { fg=g.sel };
CursorLineNr { fg=c.yellow };

Folded       { fg=g.com, bg=g.overbg };
FoldColumn   { LineNr };
SignColumn   { LineNr };

Pmenu        { NormalFloat };
PmenuSel     { bg=g.sel };
PmenuSbar    { Pmenu };
PmenuThumb   { PmenuSel };

StatusLine   { NormalFloat };
StatusLineNC { StatusLine, fg=g.faded };
WildMenu     { NormalFloat };

TabLine      { StatusLineNC };
TabLineFill  { StatusLine };
TabLineSel   { StatusLine, gui=bf };

MatchParen   { fg=b.yellow, bg=g.sel, gui=bf };
Substitute   { fg=g.bg, bg=d.yellow };
Search       { fg=g.bg, bg=d.yellow };
-- QuickFixLine { };
-- IncSearch    { };
Visual       { bg=g.sel };
-- VisualNOS    { };

Conceal      { fg=g.faded };
Whitespace   { fg=g.sel };
EndOfBuffer  { Whitespace };
NonText      { Whitespace };
SpecialKey   { Whitespace };

Directory    { fg=c.cyan };
Title        { fg=c.yellow };
ErrorMsg     { bg=d.red };
ModeMsg      { fg=g.faded };
-- MsgArea      { };
-- MsgSeparator { };
MoreMsg      { fg=c.green, gui=bf };
WarningMsg   { fg=c.red };
Question     { MoreMsg };


---- :help :diff -------------------------------------------

DiffAdd      { bg=d.green };
DiffChange   { bg=d.magenta };
DiffDelete   { bg=d.red };
DiffText     { bg=d.blue };

DiffAdded    { DiffAdd };
DiffRemoved  { DiffDelete };


---- :help spell -------------------------------------------

SpellBad     { fg=c.red,    gui=undercurl };
SpellCap     { fg=c.blue,   gui=undercurl };
SpellLocal   { fg=c.yellow, gui=undercurl };
SpellRare    { fg=b.yellow, gui=undercurl };


---- :help group-name --------------------------------------

Comment        { fg=g.com, gui=it };
Identifier     { fg=g.fg };
Function       { fg=b.yellow };

Constant       { fg=c.magenta };
String         { fg=b.blue, gui=it };
Character      { fg=b.blue };
Number         { fg=b.magenta };
Boolean        { fg=b.magenta };
-- Float          { };

Statement      { fg=c.yellow };
-- Conditional    { };
-- Repeat         { };
-- Label          { };
Operator       { fg=b.red };
-- Keyword        { };
-- Exception      { };

PreProc        { fg=b.green };
-- Include        { };
-- Define         { };
-- Macro          { };
-- PreCondit      { };

Type           { fg=c.cyan };
-- StorageClass   { };
-- Structure      { };
-- Typedef        { };

Special        { fg=b.yellow };
-- SpecialChar    { };
-- Tag            { };
Delimiter      { fg=d.yellow };
-- SpecialComment { };
-- Debug          { };

Underlined     { gui=underline };
Bold           { gui=bf };
Italic         { gui=it };

Ignore         { fg=g.com };
Error          { bg=d.red };
Todo           { Comment, fg=g.faded };


---- :help nvim-treesitter-highlights (external plugin) ----

-- TSAnnotation         { };
-- TSAttribute          { };
-- TSBoolean            { };
-- TSCharacter          { };
-- TSComment            { };
-- TSConditional        { };
-- TSConstant           { };
TSConstBuiltin       { Constant, gui=it };
TSConstMacro         { Constant };
-- TSConstructor        { };
-- TSError              { gui=undercurl };
-- TSException          { };
-- TSField              { };
-- TSFloat              { };
-- TSFunction           { };
TSFuncBuiltin        { Function };
TSFuncMacro          { Function };
-- TSInclude            { };
-- TSKeyword            { };
TSKeywordFunction    { PreProc };
-- TSKeywordOperator    { };
-- TSKeywordReturn      { };
-- TSLabel              { };
-- TSMethod             { };
TSNamespace          { fg=c.green };
-- TSNone               { };
-- TSNumber             { };
-- TSOperator           { };
-- TSParameter          { };
-- TSParameterReference { };
-- TSProperty           { };
TSPunctDelimiter     { fg=c.red };
TSPunctBracket       { Delimiter };
TSPunctSpecial       { Delimiter };
-- TSRepeat             { };
-- TSString             { };
-- TSStringRegex        { };
TSStringEscape       { fg=c.blue };
TSSymbol             { Identifier, gui=it };
-- TSType               { };
-- TSTypeBuiltin        { };
TSVariable           { Identifier };
TSVariableBuiltin    { Identifier, gui=it };

-- TSTag                { };
-- TSTagDelimiter       { };
-- TSText               { };
TSStrong             { gui=bf };
TSEmphasis           { Italic };
TSUnderline          { Underlined };
TSStrike             { gui="strikethrough" };
-- TSTitle              { };
-- TSLiteral            { };
TSURI                { String, gui=underline };
TSMath               { fg=b.cyan };
-- TSTextReference      { };
TSEnvironment        { Statement };
TSEnvironmentName    { PreProc };
-- TSNote               { };
-- TSWarning            { };
-- TSDanger             { };


---- :help diagnostic-highlight ----------------------------

DiagnosticError            { fg=c.red  };
DiagnosticWarn             { fg=b.yellow };
DiagnosticInfo             { fg=b.blue };
DiagnosticHint             { fg=c.green };
-- DiagnosticVirtualTextError { DiagnosticError };
-- DiagnosticVirtualTextWarn  { DiagnosticWarn  };
-- DiagnosticVirtualTextInfo  { DiagnosticInfo  };
-- DiagnosticVirtualTextHint  { DiagnosticHint  };
DiagnosticUnderlineError   { gui=undercurl };
DiagnosticUnderlineWarn    { gui=undercurl };
DiagnosticUnderlineInfo    { gui=undercurl };
DiagnosticUnderlineHint    { gui=undercurl };
-- DiagnosticFloatingError    { DiagnosticError };
-- DiagnosticFloatingWarn     { DiagnosticWarn  };
-- DiagnosticFloatingInfo     { DiagnosticInfo  };
-- DiagnosticFloatingHint     { DiagnosticHint  };
-- DiagnosticSignError        { DiagnosticError };
-- DiagnosticSignWarn         { DiagnosticWarn  };
-- DiagnosticSignInfo         { DiagnosticInfo  };
-- DiagnosticSignHint         { DiagnosticHint  };


---- :help lsp-highlight -----------------------------------

LspReferenceText                     { Visual };
LspReferenceRead                     { Visual };
LspReferenceWrite                    { Visual };

LspDiagnosticsDefaultError           { DiagnosticError };
LspDiagnosticsDefaultWarning         { DiagnosticWarn  };
LspDiagnosticsDefaultInformation     { DiagnosticInfo  };
LspDiagnosticsDefaultHint            { DiagnosticHint  };

-- LspDiagnosticsVirtualTextError       { };
-- LspDiagnosticsVirtualTextWarning     { };
-- LspDiagnosticsVirtualTextInformation { };
-- LspDiagnosticsVirtualTextHint        { };

LspDiagnosticsUnderlineError         { gui=undercurl };
LspDiagnosticsUnderlineWarning       { gui=undercurl };
LspDiagnosticsUnderlineInformation   { gui=undercurl };
LspDiagnosticsUnderlineHint          { gui=undercurl };

-- LspDiagnosticsFloatingError          { };
-- LspDiagnosticsFloatingWarning        { };
-- LspDiagnosticsFloatingInformation    { };
-- LspDiagnosticsFloatingHint           { };

-- LspDiagnosticsSignError              { };
-- LspDiagnosticsSignWarning            { };
-- LspDiagnosticsSignInformation        { };
-- LspDiagnosticsSignHint               { };


--- :help vimtex-syntax-reference (external plugin) --------

texOptSep            { TSPunctDelimiter };
texOptEqual          { Operator };
texFileArg           { Constant };
texTitleArg          { gui=bf };
texRefArg            { Constant };

texMathCmd           { Function };
texMathSymbol        { Operator };
texMathZone          { TSMath };
texMathDelimZone     { TSPunctDelimiter };
texMathDelim         { Delimiter };
texMathEnvArgName    { PreProc };


--- netrw: there's no comprehensive list of highlights... --

netrwClassify        { Delimiter };
netrwTreeBar         { Delimiter };

netrwExe             { fg=c.red };
netrwSymLink         { fg=c.magenta };


---- Misc. -------------------------------------------------
HelpHyperTextJump    { fg=c.yellow };


---- Metagroup (hack for builds) ---------------------------
Melange { lush = palette[bg] };

}end)

-- vi:nowrap
