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

local palette = {}

palette.dark = {
    grays = {
        bg     = hsl(30, 10, 15);
        overbg = hsl(30, 10, 20);
        sel    = hsl(30, 10, 30);
        com    = hsl(30, 20, 50);
        faded  = hsl(30, 30, 70);
        fg     = hsl(30, 30, 90);
    };

    shades = {
        red     = hsl(  0, 40, 30);
        yellow  = hsl( 40, 50, 40);
        green   = hsl(120, 30, 20);
        cyan    = hsl(180, 30, 20);
        blue    = hsl(220, 30, 20);
        magenta = hsl(320, 30, 20);
    };

    tones = {
        red     = hsl(  0, 40, 50);
        yellow  = hsl( 30, 70, 60);  --orange
        green   = hsl(120, 20, 50);
        cyan    = hsl(180, 20, 60);
        blue    = hsl(220, 30, 50);
        magenta = hsl(300, 20, 60);
    };

    tints = {
        red     = hsl( 10, 90, 70);
        yellow  = hsl( 40, 90, 70);
        green   = hsl(120, 40, 70);
        cyan    = hsl(180, 40, 70);
        blue    = hsl(220, 40, 70);
        magenta = hsl(320, 40, 70);
    };
}

palette.light = {
    grays = {
        bg     = hsl(30, 40, 95);
        overbg = hsl(30, 40, 90);
        sel    = hsl(30, 40, 80);
        com    = hsl(30, 30, 60);
        faded  = hsl(30, 30, 40);
        fg     = hsl(30, 30, 20);
    };

    tints = {
        red     = hsl( 10, 60, 80);
        yellow  = hsl( 40, 60, 70);
        green   = hsl(120, 50, 90);
        cyan    = hsl(180, 50, 90);
        blue    = hsl(220, 50, 90);
        magenta = hsl(320, 30, 90);
    };

    tones = {
        red     = hsl(  0, 60, 60);
        yellow  = hsl( 30, 60, 50);
        green   = hsl(120, 30, 60);
        cyan    = hsl(180, 20, 50);
        blue    = hsl(220, 50, 70);
        magenta = hsl(300, 30, 60);
    };

    shades = {
        red     = hsl(  0, 70, 40);
        yellow  = hsl( 40, 70, 50);
        green   = hsl(120, 50, 40);
        cyan    = hsl(180, 30, 30);
        blue    = hsl(220, 40, 50);
        magenta = hsl(320, 40, 50);
    };
}

local bg = vim.opt.background:get()
local g = palette[bg].grays
local c = palette[bg].tones

local d, b;  --TODO: REname
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

Directory    { fg=c.yellow };
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

PreProc        { fg=c.green };
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

Ignore         { fg=g.overbg };
Error          { bg=d.red };
Todo           { fg=c.yellow, gui=bf };


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
TSError              { gui=undercurl };
-- TSException          { };
-- TSField              { };
-- TSFloat              { };
-- TSFunction           { };
TSFuncBuiltin        { Function };
TSFuncMacro          { Function };
-- TSInclude            { };
-- TSKeyword            { };
TSKeywordFunction    { fg=b.green };
-- TSKeywordOperator    { };
-- TSKeywordReturn      { };
-- TSLabel              { };
-- TSMethod             { };
-- TSNamespace          { };
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
TSEnviroment         { Statement };
TSEnviromentName     { TSKeywordFunction };
-- TSNote               { };
-- TSWarning            { };
-- TSDanger             { };


---- :help lsp-highlight -----------------------------------

LspReferenceText                     { Visual };
LspReferenceRead                     { Visual };
LspReferenceWrite                    { Visual };

LspDiagnosticsDefaultError           { fg=c.red };
LspDiagnosticsDefaultWarning         { fg=b.yellow };
LspDiagnosticsDefaultInformation     { fg=b.blue };
LspDiagnosticsDefaultHint            { fg=c.green};

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
texMathZone          { fg=b.cyan };
texMathDelimZone     { TSPunctDelimiter };
texMathDelim         { Delimiter };
texMathEnvArgName    { TSKeywordFunction };


---- Misc. -------------------------------------------------
HelpHyperTextJump    { fg=c.yellow };


---- Metagroup (hack for builds) ---------------------------
Melange { lush = palette[bg] };

}end)

-- vi:nowrap
