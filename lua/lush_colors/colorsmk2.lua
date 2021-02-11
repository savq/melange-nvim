-- colorsmk2.lua
-- Mantainer: Sergio Alejandro Vargas <savargasqu+git@unal.edu.co>
-- last update: 2021-02-07
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

-- Define first the TS groups, then define other groups based on that
--------------------------------------------------

-- GUI options
local bf, it, un = 'bold', 'italic', 'underline'


-- Base colors
local c0 = hsl(30, 5, 15)
local c1 = c0.lighten(10)
local c2 = c1.lighten(40)
local c3 = c2.lighten(10)
local c4 = c3.lighten(50)
local c5 = c4.lighten(30)

-- Set base colors
local bg     = c0
local subtle = c1
local mid    = c2
local faded  = c3
local fg     = c4
local pop    = c5

-- Color palette
local red     = hsl(350,  50, 40)
local orange  = hsl( 30,  60, 50)
local yellow  = hsl( 40, 100, 70)

local green   = hsl(100,  60, 40)
local teal    = hsl(150,  30, 50)
local cyan    = hsl(180,  40, 70)

local blue    = hsl(225,  60, 70)
local purple  = hsl(270,  50, 60)
local magenta = hsl(310,  40, 70)


local r = lush['hsl']

return lush(function() return {
-- :help highlight-groups

-- These groups are for the neovim tree-sitter highlights.
-- As of writing, tree-sitter support is a WIP, group names may change.
-- By default, most of these groups link to an appropriate Vim group,
-- TSError -> Error for example, so you do not have to define these unless
-- you explicitly want to support Treesitter's improved syntax awareness.

TSError              { fg=red }; -- syntax/parser errors.

TSPunctDelimiter     { fg=orange };        -- delimiters ie: `.`
TSPunctBracket       { fg=yellow };        -- brackets and parens.
TSPunctSpecial       { TSPunctDelimiter }; -- special punctutation that does not fall in the catagories before.

TSConstant           { fg=blue };
TSConstBuiltin       { fg=blue };         -- constant that are built in the language: `nil` in Lua.
TSConstMacro         { fg=blue,    gui=bf }; -- constants that are defined by macros: `NULL` in C.

--TSString             { fg=green,   gui=it };
--TSStringRegex        { fg=green, gui=it };
--TSStringEscape       { fg=green, gui=it }; -- escape characters within a string
TSCharacter          { fg=teal };

TSNumber             { fg=teal };
TSBoolean            { fg=teal,    gui=it };
TSFloat              { fg=teal };

TSFunction           { fg=yellow };          -- function calls and definitions
TSFuncBuiltin        { };
TSFuncMacro          { fg=yellow,  gui=bf }; -- macro defined fuctions (calls and definitions): each `macro_rules` in Rust
TSParameter          { fg=fg };
TSParameterReference { TSParameter };
TSMethod             { fg=yellow };

TSField              { fg=cyan }; -- For fields.
TSProperty           { fg=magenta }; -- Same as `TSField`.
TSConstructor        { fg= yellow }; -- For constructor calls and definitions: `{ }` in Lua and Java constructors.

TSKeyword            { fg=orange };
TSConditional        { TSKeyword };
TSRepeat             { TSKeyword };
TSLabel              { TSKeyword,  gui=bf };
TSOperator           { TSKeyword };
TSKeywordFunction    { TSKeyword };
TSException          { fg=red };

TSType               { fg=teal };
TSTypeBuiltin        { fg=teal };

TSNamespace          { fg=purple }; -- identifiers referring to modules and namespaces.
--TSInclude            { }; -- includes: `#include` in C `use` or `extern crate` in Rust or `require` in Lua.
--TSAnnotation         { }; -- C++/Dart attributes annotations that can be attached to the code to denote some kind of meta information.

TSText               { fg=fg };
TSStrong             { fg=fg,      gui=bf };
TSEmphasis           { fg=fg,      gui=it };
TSUnderline          { fg=fg,      gui=un };
TSTitle              { fg=orange }; -- Text that is part of a title
TSLiteral            { fg=faded }; -- Literal text
TSURI                { fg=blue }; -- Any URI like a link or email
TSVariable           { fg=fg }; -- Any variable name that does not have another highlight

TSVariableBuiltin    { fg=fg }; -- Variable names that are defined by the languages like `this` or `self`.






--------------------------------------------------------------------------------






Normal       { fg=fg,     bg=bg };
NormalFloat  { fg=fg,     bg=subtle };    -- normal text in floating windows
NormalNC     { fg=fg,     bg=bg.da(10) }; -- normal text in non-current windows

Comment      { fg=mid,  gui=it};
Conceal      { fg=faded }; -- placeholder characters substituted for concealed text (see 'conceallevel')
Whitespace   { fg=mid };   -- white space in 'listchars'
NonText      { fg=subtle };   -- characters that don't exist in the text
SpecialKey   { fg=mid };   -- Unprintable characters: text displayed differently from what it really is

--Cursor       { };
--TermCursor   { };
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
DiffChange   { fg=orange };
DiffDelete   { fg=red };
DiffText     { fg=orange, gui=bf };

SpellBad     { fg=red,     gui=un };
SpellCap     { fg=cyan,    gui=un };
SpellLocal   { fg=orange,  gui=un };
SpellRare    { fg=magenta, gui=un };


-- These highlight groups are not listed as default Vim groups,
-- but they are de-facto standard for syntax highlighting.
-- commented out groups should chain up to their "preferred" group by
-- default,
-- Uncomment and edit if you want more specific syntax highlighting.

--- TODO: Cold colors
Constant       { }; -- (preferred) any constant
--Boolean        { }; -- boolean constant: TRUE, false
--String         { }; -- string constant: "this is a string"
--Character      { }; -- character constant: 'c', '\n'
--Number         { }; -- number constant: 234, 0xff
--Float          { }; -- floating point constant: 2.3e10

Identifier     { };  -- (preferred) any variable name
--Function       { }; -- function name (also: methods for classes)

Statement      { }; -- (preferred) any statement
--Conditional    { }; -- if, then, else, endif, switch, etc.
--Repeat         { }; -- for, do, while, etc.
--Label          { }; -- case, default, etc.
--Operator       { }; -- "sizeof", "+", "*", etc.
--Keyword        { }; -- any other keyword
--Exception      { }; -- try, catch, throw

PreProc        { }; -- (preferred) generic Preprocessor
--Include        { }; -- preprocessor #include
--Define         { }; -- preprocessor #define
--Macro          { }; -- same as Define
--PreCondit      { }; -- preprocessor #if, #else, #endif, etc.

Type           { };
--StorageClass   { }; -- static, register, volatile, etc.
--Structure      { }; -- struct, union, enum, etc.
--Typedef        { };

--Special        { fg=pink }; -- (preferred) any special symbol
--SpecialChar    { fg=green }; -- special character in a constant
--Tag            { }; -- you can use CTRL-] on this
--Delimiter      { }; -- character that needs attention
--SpecialComment { }; -- special things inside a comment
--Debug          { }; -- debugging statements

Underlined { gui = un };
Bold       { gui = bf };
Italic     { gui = it };
Ignore     { fg=faded }; -- (preferred) left blank, hidden  |hl-Ignore|
Error      { fg=red };   -- (preferred) any erroneous construct
Todo       { fg=orange, gui=bf }; -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX



-- These groups are for the native LSP client. Some other LSP clients may use
-- these groups, or use their own. Consult your LSP client's documentation.

-- LspDiagnosticsError               { }; -- used for "Error" diagnostic virtual text
-- LspDiagnosticsErrorSign           { }; -- used for "Error" diagnostic signs in sign column
-- LspDiagnosticsErrorFloating       { }; -- used for "Error" diagnostic messages in the diagnostics float
-- LspDiagnosticsWarning             { }; -- used for "Warning" diagnostic virtual text
-- LspDiagnosticsWarningSign         { }; -- used for "Warning" diagnostic signs in sign column
-- LspDiagnosticsWarningFloating     { }; -- used for "Warning" diagnostic messages in the diagnostics float
-- LspDiagnosticsInformation         { }; -- used for "Information" diagnostic virtual text
-- LspDiagnosticsInformationSign     { }; -- used for "Information" signs in sign column
-- LspDiagnosticsInformationFloating { }; -- used for "Information" diagnostic messages in the diagnostics float
-- LspDiagnosticsHint                { }; -- used for "Hint" diagnostic virtual text
-- LspDiagnosticsHintSign            { }; -- used for "Hint" diagnostic signs in sign column
-- LspDiagnosticsHintFloating        { }; -- used for "Hint" diagnostic messages in the diagnostics float
-- LspReferenceText                  { }; -- used for highlighting "text" references
-- LspReferenceRead                  { }; -- used for highlighting "read" references
-- LspReferenceWrite                 { }; -- used for highlighting "write" references

}end)
-- vi:nowrap
