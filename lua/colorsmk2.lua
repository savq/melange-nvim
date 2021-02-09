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

local lush = require('lush')
local hsl = lush.hsl

--------------------------------------------------
-- TODO: Finish color palette

-- GUI options
local bf, it, un = 'bold', 'italic', 'underline'

-- Color palette
local red     = hsl(  0, 50, 50)
local orange  = hsl( 30, 60, 50)
local teal    = hsl(160, 50, 50)


local b0 = hsl(30, 10, 10)
local b1 = b0.lighten(10)
local b2 = b1.lighten(20)
local b3 = b2.lighten(20)
local b4 = b3.lighten(50)
local b5 = b4.lighten(40)

local bg     = b0
local subtle = b1

local mid    = b2

local faded  = b3
local fg     = b4
local pop    = b5


return lush(function() return {
-- :help highlight-groups

Normal       { fg=fg,     bg=bg };
NormalFloat  { fg=fg,     bg=subtle };    -- normal text in floating windows
NormalNC     { fg=fg,     bg=bg.da(20) }; -- normal text in non-current windows

Comment      { fg=faded,  gui=it};
Conceal      { bg=mid }; -- placeholder characters substituted for concealed text (see 'conceallevel')
Whitespace   { fg=mid }; -- white space in 'listchars'
NonText      { fg=mid }; -- characters that don't exist in the text
SpecialKey   { fg=mid }; -- Unprintable characters: text displayed differently from what it really is

--Cursor       { };
--TermCursor   { };
ColorColumn  { bg=subtle };
CursorColumn { ColorColumn };
CursorLine   { ColorColumn };
LineNr       { fg=faded };
CursorLineNr { fg=orange.darken(20) }; -- Like LineNr when 'cursorline' or 'relativenumber' is set
SignColumn   { LineNr };
VertSplit    { fg=mid,    bg=mid };     -- column separating vertically split windows
Folded       { fg=faded,  bg=subtle };  -- line used for closed folds
FoldColumn   { fg=faded };

Pmenu        { bg=subtle }; -- Popup menu normal item
PmenuSel     { bg=mid };    -- selected item
PmenuSbar    { Pmenu };     -- scrollbar
PmenuThumb   { PmenuSel };  -- Thumb of the scrollbar

StatusLine   { bg=subtle };
StatusLineNC { fg=faded,  bg=subtle };

--TabLine      { }; -- not active tab page label
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
MoreMsg      { fg=teal };  -- |more-prompt|
Question     { fg=teal };  -- |hit-enter| prompt and yes/no questions
ErrorMsg     { fg=red };   -- error messages on the command line
WarningMsg   { fg=red };   -- warning messages

Directory    { fg=orange }; -- directory names (and other special names in listings)
Title        { fg=orange }; -- titles for output from ":set all" ":autocmd" etc.

DiffAdd      { fg=teal };
DiffChange   { fg=orange };
DiffDelete   { fg=red };
DiffText     { fg=orange, gui=bf };

SpellBad     { fg=red,    gui=un };
SpellCap     { fg=teal,   gui=un };
SpellLocal   { fg=orange, gui=un };
SpellRare    { fg=orange, gui=un };


-- These highlight groups are not listed as default Vim groups,
-- but they are de-facto standard for syntax highlighting.
-- commented out groups should chain up to their "preferred" group by
-- default,
-- Uncomment and edit if you want more specific syntax highlighting.

--- TODO: Cold colors
Constant       { }; -- (preferred) any constant
String         { }; -- string constant: "this is a string"
Character      { }; -- character constant: 'c', '\n'
Number         { }; -- number constant: 234, 0xff
Boolean        { }; -- boolean constant: TRUE, false
Float          { }; -- floating point constant: 2.3e10

Identifier     { }; -- (preferred) any variable name

---- TODO: Warm colors
--Function       { fg=orange.ro(30) }; -- function name (also: methods for classes)
Statement      { fg=orange }; -- (preferred) any statement
--Conditional    { }; -- if, then, else, endif, switch, etc.
--Repeat         { }; -- for, do, while, etc.
--Label          { }; -- case, default, etc.
--Operator       { }; -- "sizeof", "+", "*", etc.
--Keyword        { }; -- any other keyword
--Exception      { }; -- try, catch, throw

PreProc        { }; -- (preferred) generic Preprocessor
Include        { }; -- preprocessor #include
Define         { }; -- preprocessor #define
Macro          { }; -- same as Define
PreCondit      { }; -- preprocessor #if, #else, #endif, etc.

Type           { }; -- (preferred) int, long, char, etc.
StorageClass   { }; -- static, register, volatile, etc.
Structure      { }; -- struct, union, enum, etc.
Typedef        { };

Special        { }; -- (preferred) any special symbol
SpecialChar    { }; -- special character in a constant
Tag            { }; -- you can use CTRL-] on this
Delimiter      { }; -- character that needs attention
SpecialComment { }; -- special things inside a comment
Debug          { }; -- debugging statements

Underlined { gui = "underline" }; -- (preferred) text that stands out, HTML links
Bold       { gui = "bold" };
Italic     { gui = "italic" };

Ignore         { }; -- (preferred) left blank, hidden  |hl-Ignore|
Error          { }; -- (preferred) any erroneous construct
Todo           { fg=red }; -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX



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



-- These groups are for the neovim tree-sitter highlights.
-- As of writing, tree-sitter support is a WIP, group names may change.
-- By default, most of these groups link to an appropriate Vim group,
-- TSError -> Error for example, so you do not have to define these unless
-- you explicitly want to support Treesitter's improved syntax awareness.

-- TSError              { }; -- For syntax/parser errors.
-- TSPunctDelimiter     { }; -- For delimiters ie: `.`
-- TSPunctBracket       { }; -- For brackets and parens.
-- TSPunctSpecial       { }; -- For special punctutation that does not fall in the catagories before.
-- TSConstant           { }; -- For constants
-- TSConstBuiltin       { }; -- For constant that are built in the language: `nil` in Lua.
-- TSConstMacro         { }; -- For constants that are defined by macros: `NULL` in C.
-- TSString             { }; -- For strings.
-- TSStringRegex        { }; -- For regexes.
-- TSStringEscape       { }; -- For escape characters within a string.
-- TSCharacter          { }; -- For characters.
-- TSNumber             { }; -- For integers.
-- TSBoolean            { }; -- For booleans.
-- TSFloat              { }; -- For floats.
-- TSFunction           { }; -- For function (calls and definitions).
-- TSFuncBuiltin        { }; -- For builtin functions: `table.insert` in Lua.
-- TSFuncMacro          { }; -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
-- TSParameter          { }; -- For parameters of a function.
-- TSParameterReference { }; -- For references to parameters of a function.
-- TSMethod             { }; -- For method calls and definitions.
-- TSField              { }; -- For fields.
-- TSProperty           { }; -- Same as `TSField`.
-- TSConstructor        { }; -- For constructor calls and definitions: `{ }` in Lua, and Java constructors.
-- TSConditional        { }; -- For keywords related to conditionnals.
-- TSRepeat             { }; -- For keywords related to loops.
-- TSLabel              { }; -- For labels: `label:` in C and `:label:` in Lua.
-- TSOperator           { }; -- For any operator: `+`, but also `->` and `*` in C.
-- TSKeyword            { }; -- For keywords that don't fall in previous categories.
-- TSKeywordFunction    { }; -- For keywords used to define a fuction.
-- TSException          { }; -- For exception related keywords.
-- TSType               { }; -- For types.
-- TSTypeBuiltin        { }; -- For builtin types (you guessed it, right ?).
-- TSNamespace          { }; -- For identifiers referring to modules and namespaces.
-- TSInclude            { }; -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
-- TSAnnotation         { }; -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
-- TSText               { }; -- For strings considered text in a markup language.
-- TSStrong             { }; -- For text to be represented with strong.
-- TSEmphasis           { }; -- For text to be represented with emphasis.
-- TSUnderline          { }; -- For text to be represented with an underline.
-- TSTitle              { }; -- Text that is part of a title.
-- TSLiteral            { }; -- Literal text.
-- TSURI                { }; -- Any URI like a link or email.
-- TSVariable           { }; -- Any variable name that does not have another highlight.
-- TSVariableBuiltin    { }; -- Variable names that are defined by the languages, like `this` or `self`.

}
end)

-- vi:nowrap
