-- colorsmk2.lua
-- Mantainer: Sergio Alejandro Vargas <savargasqu+git@unal.edu.co>
-- last update: 2021-02-19
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

local lush = require 'lush'
local hsl = lush.hsl

--------------------------------------------------

-- GUI options
local bf, it, un = 'bold', 'italic', 'underline'

-- Base colors
local c0 = hsl(30, 0, 15)
local c1 = c0.lighten(5)
local c2 = c1.lighten(20)
local c3 = c2.lighten(40)
local c4 = c3.lighten(60)
local c5 = c4.lighten(80)

-- Set base colors
local bg     = c0
local subtle = c1
local mid    = c2
local faded  = c3
local fg     = c4
local pop    = c5

-- Color palette
local red     = hsl(350,  50, 60)
local orange  = hsl( 30,  60, 50)
local yellow  = hsl( 40, 100, 70)

local green   = hsl(100,  40, 50)
local teal    = hsl(150,  30, 50)
local cyan    = hsl(180,  30, 60)

local blue    = hsl(225,  90, 80)
local purple  = hsl(270,  40, 60)
local magenta = hsl(310,  50, 70)


return lush(function() return {
-- these are repeated here for use elsewhere

-- :help highlight-groups
Normal       { fg=fg,     bg=bg };
NormalFloat  { fg=fg,     bg=subtle };    -- normal text in floating windows
NormalNC     { fg=fg,     bg=bg.da(10) }; -- normal text in non-current windows

Comment      { fg=mid,  gui=it };
Conceal      { fg=faded }; -- placeholder characters substituted for concealed text (see 'conceallevel')
Whitespace   { fg=mid };   -- white space in 'listchars'
NonText      { fg=mid };   -- characters that don't exist in the text
SpecialKey   { fg=mid };   -- Unprintable characters: text displayed differently from what it really is

Cursor       { fg=bg, bg=fg };
TermCursor   { fg=bg, bg=fg };
ColorColumn  { bg=subtle };
CursorColumn { ColorColumn };
CursorLine   { ColorColumn };
LineNr       { fg=faded };
CursorLineNr { fg=orange }; -- Like LineNr when 'cursorline' or 'relativenumber' is set
SignColumn   { LineNr };
VertSplit    { fg=subtle, bg=subtle };     -- column separating vertically split windows
Folded       { fg=faded, bg=bg.da(10) };  -- line used for closed folds
FoldColumn   { fg=faded };

Pmenu        { bg=subtle }; -- Popup menu normal item
PmenuSel     { bg=mid };    -- selected item
PmenuSbar    { Pmenu };     -- scrollbar
PmenuThumb   { PmenuSel };  -- Thumb of the scrollbar

StatusLine   { bg=subtle };
StatusLineNC { fg=faded,  bg=subtle };

--TabLine      { }; -- not active tab page label. TODO
--TabLineFill  { }; -- where there are no labels
--TabLineSel   { }; -- active tab page label

IncSearch    { fg=bg,     bg=fg };     -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Substitute   { fg=bg,     bg=fg };     -- |:substitute| replacement text highlighting
Search       { fg=pop,    bg=subtle }; -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.

Visual       { fg=pop,    bg=subtle }; -- Visual mode selection
VisualNOS    { fg=fg,     bg=subtle }; -- Visual mode selection when vim is "Not Owning the Selection".

WildMenu     { fg=pop }; -- current match in 'wildmenu' completion

MatchParen   { fg=pop,    bg=mid };

QuickFixLine { fg=pop };         -- Current |quickfix| item in the quickfix window

ModeMsg      { fg=faded }; -- 'showmode' message (e.g. "-- INSERT -- ")
MsgArea      { Normal };   -- Area for messages and cmdline
--MsgSeparator { };          -- Separator for scrolled messages `msgsep` flag of 'display'
MoreMsg      { fg=green };  -- |more-prompt|
Question     { fg=green };  -- |hit-enter| prompt and yes/no questions
ErrorMsg     { fg=red };   -- error messages on the command line
WarningMsg   { fg=red };   -- warning messages

Directory    { fg=orange }; -- directory names (and other special names in listings)
Title        { fg=orange }; -- titles for output from ":set all" ":autocmd" etc.

DiffAdd      { fg=green };
DiffDelete   { fg=red };
DiffChange   { fg=magenta }; --strange color
DiffText     { fg=magenta, gui=un };

SpellBad     { fg=red,     gui=un };
SpellCap     { fg=magenta, gui=un };
SpellLocal   { fg=orange,  gui=un };
SpellRare    { fg=yellow,  gui=un };


-- These highlight groups are not listed as default Vim groups, but they are
-- de-facto standard for syntax highlighting. commented out groups should
-- chain up to their "preferred" group by default, Uncomment and edit if you
-- want more specific syntax highlighting.

Constant       { fg=magenta };
Number         { Constant };
Float          { Constant };
Boolean        { Constant };
Character      { Constant };
String         { fg=blue, gui=it };

Identifier     { fg=fg };
Function       { fg=yellow };

Statement      { fg=orange }; -- (preferred) any statement
Conditional    { Statement };
Repeat         { Statement };
Label          { Statement, gui=bf };       -- case, default, etc.
Operator       { fg=orange };
Keyword        { Statement };    -- any other keyword
Exception      { fg=red };

PreProc        { fg=green };    -- (preferred) generic Preprocessor
Include        { PreProc };    -- preprocessor #include
Define         { PreProc };    -- preprocessor #define
Macro          { fg=yellow };    -- same as Define
PreCondit      { PreProc };    -- preprocessor #if, #else, #endif, etc.

Type           { fg=cyan };
StorageClass   { Type };    -- static, register, volatile, etc.
Structure      { Type };    -- struct, union, enum, etc.
Typedef        { Type };

Special        { fg=orange };  -- (preferred) any special symbol
SpecialChar    { Special };    -- special character in a constant
Tag            { Special };    -- you can use CTRL-] on this
Delimiter      { Special };    -- character that needs attention
SpecialComment { Special };    -- special things inside a comment
Debug          { Special };    -- debugging statements

Underlined { gui = un };
Bold       { gui = bf };
Italic     { gui = it };
Ignore     { fg=faded };           --  left blank, hidden  |hl-Ignore|
Error      { fg=red };             --  any erroneous construct
Todo       { fg=orange, gui=bf };  --  anything that needs extra attention; mostly the keywords TODO FIXME and XXX


---- LSP
---- These groups are for the native LSP client. Some other LSP clients may use
---- these groups, or use their own. Consult your LSP client's documentation.

LspDiagnosticsError               { fg=faded };  -- "Error" diagnostic virtual text
LspDiagnosticsErrorSign           { fg=red };    -- "Error" diagnostic signs in sign column
LspDiagnosticsErrorFloating       { fg=faded };  -- "Error" diagnostic messages in the diagnostics float
LspDiagnosticsWarning             { fg=faded };  -- "Warning" diagnostic virtual text
LspDiagnosticsWarningSign         { fg=yellow }; -- "Warning" diagnostic signs in sign column
-- LspDiagnosticsWarningFloating     { }; -- "Warning" diagnostic messages in the diagnostics float
-- LspDiagnosticsInformation         { }; -- "Information" diagnostic virtual text
LspDiagnosticsInformationSign     { fg=teal }; -- "Information" signs in sign column
-- LspDiagnosticsInformationFloating { }; -- "Information" diagnostic messages in the diagnostics float
LspDiagnosticsHint                { fg=faded }; -- "Hint" diagnostic virtual text
-- LspDiagnosticsHintSign            { }; -- "Hint" diagnostic signs in sign column
-- LspDiagnosticsHintFloating        { }; -- "Hint" diagnostic messages in the diagnostics float
-- LspReferenceText                  { }; -- highlighting "text" references
-- LspReferenceRead                  { }; -- highlighting "read" references
-- LspReferenceWrite                 { }; -- highlighting "write" references


---- TREESITTER
---- These groups are for the neovim tree-sitter highlights.  As of writing,
---- tree-sitter support is a WIP, group names may change.  By default, most of
---- these groups link to an appropriate Vim group, TSError -> Error for example,
---- so you do not have to define these unless you explicitly want to support
---- Treesitter's improved syntax awareness.

TSError              { fg=red }; -- syntax/parser errors.

TSPunctDelimiter     { Delimiter };        -- delimiters ie: `.`
TSPunctBracket       { fg=yellow };        -- brackets and parens.
TSPunctSpecial       { TSPunctDelimiter }; -- special punctutation that does not fall in the catagories before.

TSConstant           { Constant };
TSConstBuiltin       { Constant };         -- constant that are built in the language: `nil` in Lua.
TSConstMacro         { Constant, gui=bf }; -- constants that are defined by macros: `NULL` in C.

TSString             { String };
TSStringRegex        { String };
TSStringEscape       { String,   fg=cyan }; -- escape characters within a string
TSCharacter          { Character };
TSBoolean            { Boolean };
TSNumber             { Number };
TSFloat              { Float };

TSFunction           { Function };          -- function calls and definitions
TSFuncBuiltin        { Function };
TSFuncMacro          { Macro };  -- macro defined fuctions (calls and definitions): each `macro_rules` in Rust
TSMethod             { Function };
TSConstructor        { Function, gui=bf };  -- For constructor calls and definitions: `{ }` in Lua and Java constructors.
TSKeywordFunction    { fg=teal };

TSParameter          { fg=fg };
TSParameterReference { TSParameter };

TSField              { fg=teal };
TSProperty           { TSField };

TSKeyword            { Statement };
TSConditional        { Conditional };
TSRepeat             { Repeat };
TSLabel              { Label };
TSOperator           { Operator };
TSException          { Exception };

TSType               { Type };
TSTypeBuiltin        { TSType,   gui=it };

TSNamespace          { fg=purple };      -- identifiers referring to modules and namespaces.
TSInclude            { TSNamespace };    -- includes: `#include` in C `use` or `extern crate` in Rust or `require` in Lua.
TSAnnotation         { TSNamespace };    -- C++/Dart attributes annotations that can be attached to the code to denote some kind of meta information

TSText               { fg=fg };
TSStrong             { TSText,   gui=bf };
TSEmphasis           { TSText,   gui=it };
TSUnderline          { TSText,   gui=un };
TSTitle              { fg=orange };   -- Text that is part of a title
TSLiteral            { TSString };    -- Literal text
TSURI                { TSConstant };  -- Any URI like a link or email

TSVariable           { fg=fg };    -- Any variable name that does not have another highlight
TSVariableBuiltin    { fg=fg };    -- Variable names that are defined by the languages like `this` or `self`.


---- MARKDOWN
markdownCode          { String };
markdownCodeBlock     { String };
markdownRule          { Statement };
markdownLinkText      { fg=cyan };

}end)
-- vi:nowrap
