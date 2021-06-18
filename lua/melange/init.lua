-- Melange
--
--      Author: Sergio A. Vargas <savargasqu+git@unal.edu.co>
-- Last update: 2021-05-15
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


local vim = vim
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
        hsl(30, 20, 90);
    },
    light = {
        hsl(30, 40, 85);
        hsl(30, 40, 80);
        hsl(30, 40, 70);
        hsl(30, 40, 65);
        hsl(30, 20, 45);
        hsl(30, 20, 30);
    },
}
-- backgrounds
local bg     = grays[lighting][1]
local overbg = grays[lighting][2]
local faded  = grays[lighting][3]
-- foregrounds
local mid    = grays[lighting][4]
local drop   = grays[lighting][5]
local fg     = grays[lighting][6]

local c = {
    red     = hsl(350, 60, 60);
    salmon  = hsl( 10, 90, 70);

    orange  = hsl( 30, 60, 50);
    papaya  = hsl( 30, 90, 70);

    amber   = hsl( 40, 60, 50);
    yellow  = hsl( 40, 90, 70);

    green   = hsl(100, 40, 60);
    teal    = hsl(150, 40, 50);

    aqua    = hsl(180, 20, 60);
    blue    = hsl(225, 30, 70);

    purple  = hsl(270, 30, 60);
    magenta = hsl(310, 40, 70);
}

local diff = {
    add    = hsl(c.green.h, 30, 20);
    delete = hsl(c.red.h,   30, 20);
    change = hsl(c.amber.h, 30, 20);
    text   = hsl(c.amber.h, 40, 30);
}

if lighting == 'light' then
    c.red     = c.red    .da(20)
    c.salmon  = c.salmon .da(20).de(20)
    c.orange  = c.orange .da(10).sa(40)
    c.papaya  = c.papaya .da(20)
    c.amber   = c.amber
    c.yellow  = c.yellow .da(30).de(20)
    c.green   = c.green  .da(20)
    c.teal    = c.teal   .da(20)
    c.aqua    = c.aqua   .da(20)
    c.blue    = c.blue   .da(20)
    c.purple  = c.purple .da(20)
    c.magenta = c.magenta.da(20)

    diff.add    = hsl(c.green.h, 30, 80)
    diff.delete = hsl(c.red.h,   50, 80)
    diff.change = hsl(c.amber.h, 50, 80)
    diff.text   = hsl(c.amber.h, 70, 80)
end

--------------------------------------------------------------------------------
return lush(function() return {
Normal       { fg=fg,      bg=bg };
NormalFloat  { fg=fg,      bg=overbg };
NormalNC     { Normal };        -- normal text in non-current windows

Comment      { fg=drop,    gui=it };
Conceal      { fg=c.yellow };
Whitespace   { fg=mid };                     -- 'listchars'
NonText      { Whitespace };                 -- characters that don't exist in the text
SpecialKey   { Whitespace };                 -- Unprintable characters: text displayed differently from what it really is

Cursor       { fg='reverse', bg='reverse' };
TermCursor   { fg=bg,      bg=fg };
ColorColumn  { bg=overbg };
CursorColumn { ColorColumn };
CursorLine   { ColorColumn };
MatchParen   { fg=fg,      bg=mid };

LineNr       { fg=mid };
CursorLineNr { fg=c.orange };
SignColumn   { LineNr };
VertSplit    { fg=overbg,  bg=overbg };      -- column separating vertically split windows
Folded       { fg=drop,    bg=overbg };
FoldColumn   { LineNr };

Pmenu        { fg=fg,      bg=overbg };      -- Popup menu normal item
PmenuSel     { fg=fg,      bg=faded };       -- selected item
PmenuSbar    { Pmenu };                      -- scrollbar
PmenuThumb   { PmenuSel };                   -- Thumb of the scrollbar
WildMenu     { Pmenu };                      -- current match in 'wildmenu' completion

StatusLine   { fg=fg,      bg=overbg };
StatusLineNC { fg=drop,    bg=overbg };

TabLine      { StatusLineNC };               -- not active tab page label
TabLineFill  { StatusLineNC };               -- where there are no labels
TabLineSel   { StatusLine };                 -- active tab page label


Search       { fg=bg,      bg=c.yellow };    -- Last search pattern highlighting (see 'hlsearch')
IncSearch    { Search };                     -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Substitute   { Search };                     -- |:substitute| replacement text highlighting
QuickFixLine { Search };                     -- Current |quickfix| item in the quickfix window

Visual       { bg=faded,  gui=bf };         -- Visual mode selection
VisualNOS    { Visual };                    -- Visual mode selection when Vim is "Not Owning the Selection".

ModeMsg      { fg=drop };                    -- 'showmode' message (e.g. "-- INSERT -- ")
MsgArea      { Normal };                     -- Area for messages and cmdline
MsgSeparator { fg=c.orange };                -- Separator for scrolled messages `msgsep` flag of 'display'
MoreMsg      { fg=c.green };                 -- |more-prompt|
Question     { fg=c.green };                 -- |hit-enter| prompt and yes/no questions
ErrorMsg     { fg=c.red };                   -- error messages on the command line
WarningMsg   { fg=c.red };                   -- warning messages

Directory    { fg=c.orange };                -- directory names (and other special names in listings)
Title        { fg=c.orange };                -- titles for output from ":set all" ":autocmd" etc.

DiffAdd      { bg=diff.add };
DiffDelete   { bg=diff.delete };
DiffChange   { bg=diff.change };
DiffText     { bg=diff.text, gui=bf };
DiffAdded    { DiffAdd };
DiffRemoved  { DiffDelete };


SpellBad     { fg=c.red,     gui=un };
SpellCap     { fg=c.magenta, gui=un };
SpellLocal   { fg=c.orange,  gui=un };
SpellRare    { fg=c.yellow,  gui=un };



---- Language Server Protocol highlight groups ---------------------------------

-- LspReferenceText                  { };    -- highlighting "text" references
-- LspReferenceRead                  { };    -- highlighting "read" references
-- LspReferenceWrite                 { };    -- highlighting "write" references

-- base highlight groups. Other LspDiagnostic highlights link to these by default (except Underline)
LspDiagnosticsDefaultError           { fg=c.red };
LspDiagnosticsDefaultWarning         { fg=c.yellow };
LspDiagnosticsDefaultInformation     { fg=fg };
LspDiagnosticsDefaultHint            { fg=c.green };

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

Constant       { fg=c.purple };
Number         { fg=c.magenta };
Float          { Number };
Boolean        { Number };
Character      { fg=c.blue };
String         { fg=c.blue, gui=it };

Identifier     { fg=fg };
Function       { fg=c.yellow };

Statement      { fg=c.orange };    -- (preferred) any statement
Conditional    { Statement };
Repeat         { Statement };
Label          { Statement };      -- case, default, etc.
Operator       { fg=c.salmon };
Keyword        { Statement };      -- any other keyword
Exception      { fg=c.red };

PreProc        { fg=c.teal };      --  generic Preprocessor
Include        { PreProc };        -- preprocessor #include
Define         { PreProc };        -- preprocessor #define
Macro          { PreProc };        -- same as Define
PreCondit      { PreProc };        -- preprocessor #if, #else, #endif, etc.

Type           { fg=c.aqua };
StorageClass   { Type };           -- static, register, volatile, etc.
Structure      { Type };           -- struct, union, enum, etc.
Typedef        { Type };

Special        { fg=c.papaya };    -- (preferred) any special symbol
SpecialChar    { Special };        -- special character in a constant
Tag            { Special };        -- you can use CTRL-] on this
Delimiter      { fg=c.salmon };    -- character that needs attention
SpecialComment { Special };        -- special things inside a comment
Debug          { Special };        -- debugging statements

Underlined { gui = un };
Bold       { gui = bf };
Italic     { gui = it };
Ignore     { fg=faded };                     --  left blank, hidden  |hl-Ignore|
Error      { fg=c.red };                     --  any erroneous construct
Todo       { fg=c.orange, gui=bf..','..it};  --  anything that needs extra attention



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
TSStringEscape       { String,     fg=c.aqua };   -- escape characters within a string
TSSymbol             { fg=c.magenta, gui=it };    -- For identifiers referring to symbols or atoms.

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
TSKeywordFunction    { fg=c.green };

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
TSPunctBracket       { fg=c.amber };            -- brackets and parens.
TSPunctSpecial       { Delimiter };             -- special punctutation that does not fall in the catagories before.

TSComment            { Comment };
TSTag                { Tag };                   -- Tags like html tag names.
TSTagDelimiter       { Special };               -- Tag delimiter like < > /
TSText               { fg=fg };
TSEmphasis           { TSText,     gui=it };
TSUnderline          { TSText,     gui=un };
TSStrike             { Comment,    gui=un };
TSStrong             { TSText,     gui=bf };
TSTitle              { fg=c.orange };           -- Text that is part of a title
TSLiteral            { TSString };              -- Literal text
TSURI                { TSSymbol };              -- Any URI like a link or email

TSError              { fg=c.red };              -- syntax/parser errors.


-- Other stuff
HelpHyperTextJump {Tag};
markdownLinkText {fg=fg};

-- Metagroup (basically a hack for builds)
Melange {lush = vim.tbl_extend('keep', c,
    {bg=bg,
    overbg=overbg,
    faded=faded,
    egroun=egroun,
    mid=mid,
    drop=drop,
    fg=fg})
};

}end)

-- vi:nowrap
