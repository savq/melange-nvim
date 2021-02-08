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

-- GUI options
local bf, it, un = 'bold', 'italic', 'underline'
-- Color palette
local red     = hsl(  0, 50, 50)
local orange  = hsl( 30, 70, 50)
local teal    = hsl(160, 50, 50)


-- TODO:
    -- Change order so that low is dark and high is light
    -- Change bg to base, and fg to <something-else>
local base = hsl(30, 10, 10)
local b1   = base.lighten(40)
local b2   = b1.lighten(40)
local b3   = b2.lighten(40)
local b4   = b3.lighten(40)

local c0 = hsl(30, 10, 80)
local c1 = c0.darken(40).desaturate(50)
local c2 = c1.darken(40)
local c3 = c2.darken(40)
local c4 = c3.darken(40)

local bg = base
local fg = b4

-- Change names
local mid = c1
local out = c3


return lush(function() return {
-- :help highlight-groups

Normal       { fg=fg,    bg=bg };
NormalFloat  { fg=fg,    bg=bg.li(20) }; -- normal text in floating windows
NormalNC     { fg=fg,    bg=bg.da(20) }; -- normal text in non-current windows

Comment      { fg=mid,   gui=it};
Conceal      { bg=c3 }; -- placeholder characters substituted for concealed text (see 'conceallevel')
Whitespace   { fg=c2 }; -- white space in 'listchars'
NonText      { fg=c2 }; -- characters that don't exist in the text
SpecialKey   { fg=c1 }; -- Unprintable characters: text displayed differently from what it really is

Cursor       { };
TermCursor   { };

ColorColumn  { bg=out };
CursorColumn { bg=out };
CursorLine   { bg=out };
LineNr       { fg=c1 };
CursorLineNr { fg=orange.darken(20) }; -- Like LineNr when 'cursorline' or 'relativenumber' is set
SignColumn   { fg=c1 };
VertSplit    { fg=c3, bg=c3 };         -- column separating vertically split windows
Folded       { fg=c1, bg=c3 }; -- line used for closed folds
FoldColumn   { LineNr }; -- 'foldcolumn'

Pmenu        { bg=out }; -- Popup menu normal item
PmenuSel     { bg=mid }; -- selected item
PmenuSbar    { bg=out }; -- scrollbar
PmenuThumb   { bg=mid }; -- Thumb of the scrollbar

StatusLine   { bg=out }; -- status line of current window
StatusLineNC { fg=mid,    bg=out }; -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.

TabLine      { }; -- tab pages line, not active tab page label
TabLineFill  { }; -- tab pages line, where there are no labels
TabLineSel   { }; -- tab pages line, active tab page label

IncSearch    { fg=bg, bg=fg }; -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Substitute   { fg=bg, bg=fg }; -- |:substitute| replacement text highlighting
Search       { bg=out }; -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.

Visual       { bg=out }; -- Visual mode selection
VisualNOS    { }; -- Visual mode selection when vim is "Not Owning the Selection".
WildMenu     { }; -- current match in 'wildmenu' completion

MatchParen   { fg=fg,     bg=mid }; -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|


ModeMsg      { fg=mid }; -- 'showmode' message (e.g., "-- INSERT -- ")
MsgArea      { Normal }; -- Area for messages and cmdline
MsgSeparator { }; -- Separator for scrolled messages, `msgsep` flag of 'display'
MoreMsg      { fg=teal }; -- |more-prompt|

Question     { fg=teal }; -- |hit-enter| prompt and yes/no questions
QuickFixLine { }; -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

Directory    { fg=orange}; -- directory names (and other special names in listings)

DiffAdd      { fg=teal };
DiffChange   { fg=orange };
DiffDelete   { fg=red };
DiffText     { fg=orange, gui=bf };
ErrorMsg     { fg=red }; -- error messages on the command line

SpellBad     { fg=red,    gui=un }; -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
SpellCap     { fg=teal,   gui=un }; -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
SpellLocal   { fg=orange, gui=un }; -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
SpellRare    { fg=orange, gui=un }; -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

Title        { fg=orange }; -- titles for output from ":set all", ":autocmd" etc.
WarningMsg   { fg=red }; -- warning messages



-- These highlight groups are not listed as default Vim groups,
-- but they are de-facto standard for syntax highlighting.
-- commented out groups should chain up to their "preferred" group by
-- default,
-- Uncomment and edit if you want more specific syntax highlighting.

Constant       { }; -- (preferred) any constant
String         { }; --   a string constant: "this is a string"
Character      { }; --  a character constant: 'c', '\n'
Number         { }; --   a number constant: 234, 0xff
Boolean        { }; --  a boolean constant: TRUE, false
Float          { }; --    a floating point constant: 2.3e10

Identifier     { }; -- (preferred) any variable name
--Function       { fg=orange.ro(30) }; -- function name (also: methods for classes)

Statement      { fg=orange }; -- (preferred) any statement
--Conditional    { }; --  if, then, else, endif, switch, etc.
--Repeat         { }; --   for, do, while, etc.
--Label          { }; --    case, default, etc.
--Operator       { }; -- "sizeof", "+", "*", etc.
--Keyword        { }; --  any other keyword
--Exception      { }; --  try, catch, throw

PreProc        { }; -- (preferred) generic Preprocessor
Include        { }; --  preprocessor #include
Define         { }; --   preprocessor #define
Macro          { }; --    same as Define
PreCondit      { }; --  preprocessor #if, #else, #endif, etc.

Type           { }; -- (preferred) int, long, char, etc.
StorageClass   { }; -- static, register, volatile, etc.
Structure      { }; --  struct, union, enum, etc.
Typedef        { }; --  A typedef

Special        { }; -- (preferred) any special symbol
SpecialChar    { }; --  special character in a constant
Tag            { }; --    you can use CTRL-] on this
Delimiter      { }; --  character that needs attention
SpecialComment { }; -- special things inside a comment
Debug          { }; --    debugging statements

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
