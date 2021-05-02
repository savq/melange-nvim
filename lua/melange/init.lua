-- Melange
--
--      Author: Sergio Vargas <savargasqu+git@unal.edu.co>
-- Last update: 2021-05-01
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


local lush = require('lush')
local hsl = lush.hsl

local lighting = vim.o.background -- dark | light
local bf, it, un = 'bold', 'italic', 'underline' --GUI options

--------------------------------------------------------------------------------
local grays = {
    dark = {
        hsl(30, 10, 15);
        hsl(30, 10, 20);
        hsl(30, 10, 30);
        hsl(30, 20, 35);
        hsl(30, 20, 55);
        hsl(30, 30, 90);
    },
    light = {
        hsl(30, 60, 90);
        hsl(30, 40, 80);
        hsl(30, 30, 70);
        hsl(30, 30, 60);
        hsl(30, 20, 50);
        hsl(30, 10, 30);
    },
}

local colors = {
    red     = hsl(350, 60, 60);
    salmon  = hsl( 10, 90, 70);

    orange  = hsl( 30, 60, 50);
    amber   = hsl( 40, 60, 50);
    yellow  = hsl( 40, 90, 70);

    green   = hsl(100, 40, 60);
    teal    = hsl(150, 40, 50);
    cyan    = hsl(180, 20, 60);

    blue    = hsl(225, 30, 70);
    purple  = hsl(270, 30, 60);
    magenta = hsl(310, 40, 70);
}

local bg, overbg, faded, mid, drop, fg;
local red, salmon, orange, amber, yellow, green, teal, cyan, blue, purple, magenta;

-- backgrounds
bg     = grays[lighting][1]
overbg = grays[lighting][2]
faded  = grays[lighting][3]
-- foregrounds
mid    = grays[lighting][4]
drop   = grays[lighting][5]
fg     = grays[lighting][6]

if lighting == 'light' then
    red     = colors.red    .da(20)
    salmon  = colors.salmon .da(20).de(30)
    orange  = colors.orange
    amber   = colors.amber  .da(20)
    yellow  = colors.yellow .da(35)
    green   = colors.green  .da(20)
    teal    = colors.teal   .da(20)
    cyan    = colors.cyan   .da(20)
    blue    = colors.blue   .da(20)
    purple  = colors.purple .da(20)
    magenta = colors.magenta.da(20)
elseif lighting == 'dark' then
    red     = colors.red
    salmon  = colors.salmon
    orange  = colors.orange
    amber   = colors.amber
    yellow  = colors.yellow
    green   = colors.green
    teal    = colors.teal
    cyan    = colors.cyan
    blue    = colors.blue
    purple  = colors.purple
    magenta = colors.magenta
end

--------------------------------------------------------------------------------
return lush(function() return {
-- Metagroup (basically a hack for builds)
Melange {lush = {
    bg=bg,
    overbg=overbg,
    faded=faded,
    mid=mid,
    drop=drop,
    fg=fg,

    red=red,
    salmon=salmon,
    orange=orange,
    amber=amber,
    yellow=yellow,
    green=green,
    teal=teal,
    cyan=cyan,
    blue=blue,
    purple=purple,
    magenta=magenta}
};

Normal       { fg=fg,      bg=bg };
NormalFloat  { fg=fg,      bg=overbg };
NormalNC     { fg=fg,      bg=bg };        -- normal text in non-current windows

Comment      { fg=drop,    gui=it };
Conceal      { fg=yellow };
Whitespace   { fg=mid };                   -- 'listchars'
NonText      { Whitespace };               -- characters that don't exist in the text
SpecialKey   { Whitespace };               -- Unprintable characters: text displayed differently from what it really is


Cursor       { fg=bg,      bg=fg };
TermCursor   { fg=bg,      bg=fg };
ColorColumn  { bg=overbg };
CursorColumn { bg=overbg };
CursorLine   { CursorColumn };
MatchParen   { fg=fg,      bg=faded };

LineNr       { fg=mid };
CursorLineNr { fg=orange };
SignColumn   { LineNr };
VertSplit    { fg=overbg,  bg=overbg };    -- column separating vertically split windows
Folded       { fg=drop,    bg=overbg };
FoldColumn   { LineNr };

Pmenu        { fg=fg,      bg=overbg };    -- Popup menu normal item
PmenuSel     { fg=fg,      bg=faded };     -- selected item
PmenuSbar    { Pmenu };                    -- scrollbar
PmenuThumb   { PmenuSel };                 -- Thumb of the scrollbar
WildMenu     { Pmenu };                    -- current match in 'wildmenu' completion

StatusLine   { fg=fg,      bg=overbg };
StatusLineNC { fg=drop,    bg=overbg };

TabLine      { fg=fg,      bg=overbg };    -- not active tab page label
TabLineFill  { bg=overbg };                -- where there are no labels
TabLineSel   { fg=yellow,  bg=faded };     -- active tab page label

Search       { fg=bg,      bg=yellow };    -- Last search pattern highlighting (see 'hlsearch')
IncSearch    { Search };                   -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Substitute   { Search };                   -- |:substitute| replacement text highlighting
QuickFixLine { Search };                   -- Current |quickfix| item in the quickfix window

Visual       { bg=faded, gui=bf };         -- Visual mode selection
VisualNOS    { bg=overbg };                -- Visual mode selection when Vim is "Not Owning the Selection".

ModeMsg      { fg=drop };                  -- 'showmode' message (e.g. "-- INSERT -- ")
MsgArea      { Normal };                   -- Area for messages and cmdline
MsgSeparator { fg=orange };                -- Separator for scrolled messages `msgsep` flag of 'display'
MoreMsg      { fg=green };                 -- |more-prompt|
Question     { fg=green };                 -- |hit-enter| prompt and yes/no questions
ErrorMsg     { fg=red };                   -- error messages on the command line
WarningMsg   { fg=red };                   -- warning messages

Directory    { fg=orange };                -- directory names (and other special names in listings)
Title        { fg=orange };                -- titles for output from ":set all" ":autocmd" etc.

DiffAdd      { fg=green };
DiffDelete   { fg=red };
DiffChange   { fg=amber };
DiffText     { DiffChange, gui=un };
DiffAdded    { DiffAdd };
DiffRemoved  { DiffDelete };

SpellBad     { fg=red,     gui=un };
SpellCap     { fg=magenta, gui=un };
SpellLocal   { fg=orange,  gui=un };
SpellRare    { fg=yellow,  gui=un };



---- Language Server Protocol highlight groups ---------------------------------

-- LspReferenceText                  { };    -- highlighting "text" references
-- LspReferenceRead                  { };    -- highlighting "read" references
-- LspReferenceWrite                 { };    -- highlighting "write" references

-- base highlight groups. Other LspDiagnostic highlights link to these by default (except Underline)
LspDiagnosticsDefaultError           { fg=red };
LspDiagnosticsDefaultWarning         { fg=yellow };
LspDiagnosticsDefaultInformation     { fg=fg };
LspDiagnosticsDefaultHint            { fg=green };

--LspDiagnosticsVirtualTextError       { };           -- "Error" diagnostic virtual text
--LspDiagnosticsVirtualTextWarning     { };           -- "Warning" diagnostic virtual text
--LspDiagnosticsVirtualTextInformation { };           -- "Information" diagnostic virtual text
--LspDiagnosticsVirtualTextHint        { };           -- "Hint" diagnostic virtual text
--LspDiagnosticsUnderlineError         { gui=un };    -- underline "Error" diagnostics
--LspDiagnosticsUnderlineWarning       { gui=un };    -- underline "Warning" diagnostics
--LspDiagnosticsUnderlineInformation   { gui=un };    -- underline "Information" diagnostics
--LspDiagnosticsUnderlineHint          { gui=un };    -- underline "Hint" diagnostics
--LspDiagnosticsFloatingError          { };           -- color "Error" diagnostic messages in diagnostics float
--LspDiagnosticsFloatingWarning        { };           -- color "Warning" diagnostic messages in diagnostics float
--LspDiagnosticsFloatingInformation    { };           -- color "Information" diagnostic messages in diagnostics float
--LspDiagnosticsFloatingHint           { };           -- color "Hint" diagnostic messages in diagnostics float
--LspDiagnosticsSignError              { };           -- "Error" signs in sign column
--LspDiagnosticsSignWarning            { };           -- "Warning" signs in sign column
--LspDiagnosticsSignInformation        { };           -- "Information" signs in sign column
--LspDiagnosticsSignHint               { };           -- "Hint" signs in sign column



---- Standard highlight groups -------------------------------------------------
-- See :help group-name

Constant       { fg=purple };
Number         { fg=magenta };
Float          { Number };
Boolean        { Number };
Character      { fg=blue };
String         { fg=blue, gui=it };

Identifier     { fg=fg };
Function       { fg=yellow };

Statement      { fg=orange };    -- (preferred) any statement
Conditional    { Statement };
Repeat         { Statement };
Label          { Statement };    -- case, default, etc.
Operator       { fg=salmon };
Keyword        { Statement };    -- any other keyword
Exception      { fg=red };

PreProc        { fg=teal };      --  generic Preprocessor
Include        { PreProc };      -- preprocessor #include
Define         { PreProc };      -- preprocessor #define
Macro          { PreProc };      -- same as Define
PreCondit      { PreProc };      -- preprocessor #if, #else, #endif, etc.

Type           { fg=cyan };
StorageClass   { Type };         -- static, register, volatile, etc.
Structure      { Type };         -- struct, union, enum, etc.
Typedef        { Type };

Special        { fg=orange };    -- (preferred) any special symbol
SpecialChar    { Special };      -- special character in a constant
Tag            { fg=yellow };    -- you can use CTRL-] on this
Delimiter      { fg=salmon };    -- character that needs attention
SpecialComment { Special };      -- special things inside a comment
Debug          { Special };      -- debugging statements

Underlined { gui = un };
Bold       { gui = bf };
Italic     { gui = it };
Ignore     { fg=faded };                   --  left blank, hidden  |hl-Ignore|
Error      { fg=red };                     --  any erroneous construct
Todo       { fg=orange, gui=bf..','..it};  --  anything that needs extra attention



---- TREESITTER ----------------------------------------------------------------

TSConstant           { Constant };
TSConstBuiltin       { Constant,   gui=it };    -- constant that are built in the language: `nil` in Lua.
TSConstMacro         { Constant,   gui=bf };    -- constants that are defined by macros: `NULL` in C.
TSNumber             { Number };
TSFloat              { Float };
TSBoolean            { Boolean };
TSCharacter          { Character };
TSString             { String };
TSStringRegex        { String };
TSStringEscape       { String,     fg=cyan };   -- escape characters within a string
TSSymbol             { fg=magenta, gui=it };    -- For identifiers referring to symbols or atoms.

-- TODO: More variety in these groups
TSField              { fg=fg };
TSProperty           { TSField };
TSParameter          { fg=fg };
TSParameterReference { TSParameter };
TSVariable           { fg=fg };                 -- Any variable name that does not have another highlight
TSVariableBuiltin    { fg=fg,      gui=it };    -- Variable names that are defined by the languages like `this` or `self`.

TSFunction           { Function };
TSFuncBuiltin        { TSFunction };
TSFuncMacro          { TSFunction };            -- macro defined fuctions: each `macro_rules` in Rust
TSMethod             { TSFunction };
TSConstructor        { TSFunction };            -- For constructor: `{}` in Lua and Java constructors.
TSKeywordFunction    { fg=green };

TSKeyword            { Keyword };
TSConditional        { Conditional };
TSRepeat             { Repeat };
TSLabel              { Label };
TSOperator           { Operator };
TSException          { Exception };

TSNamespace          { PreProc };               -- identifiers referring to modules and namespaces.
TSAnnotation         { TSNamespace };           -- C++/Dart attributes annotations that can be attached to the code to denote some kind of meta information
--TSAttribute          { };                     -- Unstable
TSInclude            { TSNamespace };           -- includes: `#include` in C `use` or `extern crate` in Rust or `require` in Lua.

TSType               { Type };
TSTypeBuiltin        { TSType,     gui=it };

TSPunctDelimiter     { Delimiter };             -- delimiters ie: `.`
TSPunctBracket       { fg=amber };              -- brackets and parens.
TSPunctSpecial       { Delimiter };             -- special punctutation that does not fall in the catagories before.

TSComment            { Comment };
TSTag                { Tag };                   -- Tags like html tag names.
TSTagDelimiter       { Special };               -- Tag delimiter like < > /
TSText               { fg=fg };
TSEmphasis           { TSText,     gui=it };
TSUnderline          { TSText,     gui=un };
TSStrike             { Comment,    gui=un };
TSStrong             { TSText,     gui=bf };
TSTitle              { fg=orange };             -- Text that is part of a title
TSLiteral            { TSString };              -- Literal text
TSURI                { TSSymbol };              -- Any URI like a link or email

TSError              { fg=red };                -- syntax/parser errors.


-- Other stuff
HelpHyperTextJump {fg=yellow};
markdownLinkText {fg=fg};

}end)

-- vi:nowrap
