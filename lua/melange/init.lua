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
        yellow  = hsl( 40, 50, 50); -- amber
        green   = hsl(120, 30, 20);
        cyan    = hsl(180, 30, 20);
        blue    = hsl(220, 30, 20);
        magenta = hsl(320, 30, 20);
    };

    tones = {
        red     = hsl(  0, 40, 50);
        yellow  = hsl( 30, 70, 60); -- orange
        green   = hsl(120, 30, 50);
        cyan    = hsl(180, 20, 60);
        blue    = hsl(220, 30, 50);
        magenta = hsl(300, 20, 60);
    };

    tints = {
        red     = hsl( 10, 90, 70); -- salmon
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
        com    = hsl(30, 30, 50);
        faded  = hsl(30, 30, 40);
        fg     = hsl(30, 30, 30);
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
        blue    = hsl(220, 40, 60);
        magenta = hsl(320, 40, 50);
    };
}

local bg = vim.opt.background:get()
local g = palette[bg].grays
local c = palette[bg].tones

local d, b; -- TODO: Rename
if bg == "dark" then --shades are backgrounds, and tints foregrounds
    d = palette[bg].shades
    b = palette[bg].tints
elseif bg == "light" then --tints are backgrounds, and shades foregrounds
    d = palette[bg].tints
    b = palette[bg].shades
end


return lush(function() return {

---- :help highlight-default -------------------------------

Normal       { fg=g.fg, bg=g.bg };                          -- Normal text
NormalFloat  { bg=g.overbg };                               -- Normal text in floating windows
-- NormalNC     { };                                        -- Normal text in non-current windows

-- Cursor       { };                                        -- Character under the cursor
-- lCursor      { };                                        -- The character under the cursor when |language-mapping| is used (see 'guicursor')
-- CursorIM     { };                                        -- Like Cursor, but used when in IME mode |CursorIM|
-- TermCursor   { };                                        -- Cursor in a focused terminal
-- TermCursorNC { };                                        -- Cursor in an unfocused terminal

ColorColumn  { bg=g.overbg };                               -- Used for the columns set with 'colorcolumn'
CursorColumn { ColorColumn };                               -- Screen-column at the cursor, when 'cursorcolumn' is set
CursorLine   { ColorColumn };                               -- Screen-line at the cursor, when 'cursorline' is set
VertSplit    { fg=g.sel };                                  -- The column separating vertically split windows

LineNr       { fg=g.sel };                                  -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set
CursorLineNr { fg=c.yellow };                               -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line

Folded       { fg=g.com, bg=g.overbg };                     -- Line used for closed folds
FoldColumn   { LineNr };                                    -- 'foldcolumn'
SignColumn   { LineNr };                                    -- Column where |signs| are displayed

Pmenu        { NormalFloat };                               -- normal item
PmenuSel     { bg=g.sel };                                  -- selected item
PmenuSbar    { Pmenu };                                     -- scrollbar
PmenuThumb   { PmenuSel };                                  -- Thumb of the scrollbar

StatusLine   { NormalFloat };                               -- status line of current window
StatusLineNC { StatusLine, fg=g.faded };                    -- status lines of not-current windows
WildMenu     { NormalFloat };                               -- current match in 'wildmenu' completion

TabLine      { StatusLineNC };                              -- not active tab page label
TabLineFill  { StatusLine };                                -- where there are no labels
TabLineSel   { StatusLine, gui="bold" };                    -- active tab page label

MatchParen   { fg=b.yellow, bg=g.sel, gui="bold" };         -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
Substitute   { fg=g.bg, bg=d.yellow };                      -- |:substitute| replacement text highlighting
Search       { fg=g.bg, bg=d.yellow };                      -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
-- QuickFixLine { };                                        -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
-- IncSearch    { };                                        -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Visual       { bg=g.sel, gui="bold" };                      -- Visual mode selection
-- VisualNOS    { };                                        -- Visual mode selection when vim is "Not Owning the Selection".

Conceal      { fg=d.yellow };                               -- Placeholder characters substituted for concealed text (see 'conceallevel')
Whitespace   { fg=g.sel };                                  -- "nbsp", "space", "tab" and "trail" in 'listchars'
EndOfBuffer  { Whitespace };                                -- Filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
NonText      { Whitespace };                                -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
SpecialKey   { Whitespace };                                -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|

Directory    { fg=c.yellow };                               -- directory names (and other special names in listings)
Title        { fg=c.yellow };                               -- titles for output from ":set all", ":autocmd" etc.
ErrorMsg     { bg=d.red };                                  -- error messages on the command line
ModeMsg      { fg=g.faded };                                -- 'showmode' message (e.g., "-- INSERT -- ")
-- MsgArea      { };                                        -- Area for messages and cmdline
-- MsgSeparator { };                                        -- Separator for scrolled messages, `msgsep` flag of 'display'
MoreMsg      { fg=c.green, gui="bold" };                    -- |more-prompt|
WarningMsg   { fg=c.red };                                  -- warning messages
Question     { MoreMsg };                                   -- |hit-enter| prompt and yes/no questions

DiffAdd      { bg=d.green };
DiffAdded    { DiffAdd };
DiffDelete   { bg=d.red };
DiffRemoved  { DiffDelete };
DiffChange   { bg=d.magenta };
DiffText     { bg=d.blue };

SpellBad     { fg=c.red,    gui="undercurl" };
SpellCap     { fg=c.blue,   gui="undercurl" };
SpellLocal   { fg=c.yellow, gui="undercurl" };
SpellRare    { fg=b.yellow, gui="undercurl" };



---- :help group-name --------------------------------------

Comment        { fg=g.com, gui="italic" };
Identifier     { fg=g.fg };
Function       { fg=b.yellow };

Constant       { fg=c.magenta };
String         { fg=b.blue, gui="italic" };
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

Special        { fg=d.yellow };
-- SpecialChar    { };
-- Tag            { };
-- Delimiter      { };
-- SpecialComment { };
-- Debug          { };

Underlined     { gui="underline" };
Bold           { gui="bold" };
Italic         { gui="italic" };

Ignore         { fg=g.overbg };
Error          { bg=d.red };
Todo           { fg=c.yellow, gui="bold" };



---- :help nvim-treesitter-highlights ----------------------

-- TSAnnotation         { };                                -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
-- TSAttribute          { };                                -- (unstable) TODO: docs
-- TSBoolean            { };
-- TSCharacter          { };
-- TSComment            { };
-- TSConstructor        { };                                -- constructor calls and definitions: ` { }` in Lua, and Java constructors.
-- TSConditional        { };                                -- keywords related to conditionnals.
-- TSConstant           { };
TSConstBuiltin       { Constant, gui="italic" };            -- constant that are built in the language: `nil` in Lua.
TSConstMacro         { Constant, gui="bold" };              -- constants that are defined by macros: `NULL` in C.
TSError              { gui="undercurl" };                   -- syntax/parser errors.
-- TSException          { };                                -- exception related keywords.
-- TSField              { };
-- TSFloat              { };
-- TSFunction           { };                                -- function (calls and definitions).
TSFuncBuiltin        { Function };                          -- builtin functions: `table.insert` in Lua.
TSFuncMacro          { Function };                          -- macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
-- TSInclude            { };                                -- includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
-- TSKeyword            { };                                -- keywords that don't fall in previous categories.
-- TSKeywordOperator    { };                                -- operators that are English words, e.g. `and`, `as`, `or`.
TSKeywordFunction    { fg=b.green };                        -- keywords used to define a fuction.
-- TSLabel              { };                                -- labels: `label:` in C and `:label:` in Lua.
-- TSMethod             { };                                -- method calls and definitions.
-- TSNamespace          { };                                -- identifiers referring to modules and namespaces.
-- TSNone               { };                                -- no highlighting.
-- TSNumber             { };
-- TSOperator           { };                                -- any operator: `+`, but also `->` and `*` in C.
-- TSParameter          { };                                -- parameters of a function.
-- TSParameterReference { };                                -- references to parameters of a function.
-- TSProperty           { };                                -- Same as `TSField`.
TSPunctDelimiter     { fg=c.red };                          -- delimiters ie: `.`
-- TSPunctBracket       { };                                -- brackets and parentheses.
-- TSPunctSpecial       { };                                -- special punctutation that does not fall in the catagories before.
-- TSRepeat             { };                                -- keywords related to loops.
-- TSString             { };
-- TSStringRegex        { };
TSStringEscape       { fg=c.blue };                         -- escape characters within a string.
TSSymbol             { gui="italic" };                      -- identifiers referring to symbols or atoms.
-- TSType               { };
-- TSTypeBuiltin        { };
-- TSVariable           { };                                -- Any variable name that does not have another highlight.
TSVariableBuiltin    { gui="italic" };                      -- Variable names that are defined by the languages, like `this` or `self`.

-- TSTag                { };                                -- Tags like html tag names.
-- TSTagDelimiter       { };                                -- Tag delimiter like `<` `>` `/`
-- TSText               { };                                -- strings considered text in a markup language.
TSEmphasis           { Italic };                            -- text to be represented with emphasis.
TSUnderline          { Underlined };                        -- text to be represented with an underline.
TSStrike             { gui="strikethrough" };               -- strikethrough text.
-- TSTitle              { };                                -- Text that is part of a title.
-- TSLiteral            { };
TSURI                { String, gui="underline" };           -- Any URI like a link or email.
TSMath               { Identifier };                        -- LaTeX-like math environments.
-- TSTextReference      { };                                -- footnotes, text references, citations.
TSEnviroment         { Statement };                         -- text environments of markup languages.
-- TSEnviromentName     { };                                -- name/string indicating the type of text environment.
-- TSNote               { };                                -- Text representation of an informational note.
-- TSWarning            { };                                -- Text representation of a warning note.
-- TSDanger             { };                                -- Text representation of a danger note.



---- :help lsp-highlight -----------------------------------

-- LspReferenceText                     { };                -- highlighting "text" references
-- LspReferenceRead                     { };                -- highlighting "read" references
-- LspReferenceWrite                    { };                -- highlighting "write" references

LspDiagnosticsDefaultError           { fg=c.red };          -- base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
LspDiagnosticsDefaultWarning         { fg=b.yellow };       -- base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
LspDiagnosticsDefaultInformation     { fg=b.blue };         -- base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
LspDiagnosticsDefaultHint            { fg=c.green};         -- base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

-- LspDiagnosticsVirtualTextError       { };                -- "Error" diagnostic virtual text
-- LspDiagnosticsVirtualTextWarning     { };                -- "Warning" diagnostic virtual text
-- LspDiagnosticsVirtualTextInformation { };                -- "Information" diagnostic virtual text
-- LspDiagnosticsVirtualTextHint        { };                -- "Hint" diagnostic virtual text

LspDiagnosticsUnderlineError         { gui="undercurl" };   -- underline "Error" diagnostics
LspDiagnosticsUnderlineWarning       { gui="undercurl" };   -- underline "Warning" diagnostics
LspDiagnosticsUnderlineInformation   { gui="undercurl" };   -- underline "Information" diagnostics
LspDiagnosticsUnderlineHint          { gui="undercurl" };   -- underline "Hint" diagnostics

-- LspDiagnosticsFloatingError          { };                -- color "Error" diagnostic messages in diagnostics float
-- LspDiagnosticsFloatingWarning        { };                -- color "Warning" diagnostic messages in diagnostics float
-- LspDiagnosticsFloatingInformation    { };                -- color "Information" diagnostic messages in diagnostics float
-- LspDiagnosticsFloatingHint           { };                -- color "Hint" diagnostic messages in diagnostics float

-- LspDiagnosticsSignError              { };                -- "Error" signs in sign column
-- LspDiagnosticsSignWarning            { };                -- "Warning" signs in sign column
-- LspDiagnosticsSignInformation        { };                -- "Information" signs in sign column
-- LspDiagnosticsSignHint               { };                -- "Hint" signs in sign column



--- :help vimtex-syntax-reference --------------------------

texOptSep            { TSPunctDelimiter };
texOptEqual          { Operator };
texFileArg           { Constant };
texTitleArg          { gui="bold" };
texRefArg            { Constant };

texMathZone          { Identifier };
texMathDelimZone     { TSPunctDelimiter };
texMathDelim         { Special };
texMathEnvArgName    { Type };



---- Other Vim groups --------------------------------------
HelpHyperTextJump    { fg=c.yellow };



---- Metagroup (basically a hack for builds) ---------------
Melange { lush = palette[bg] };

}end)

-- vi:nowrap
