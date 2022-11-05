# Contributing


## Plugin support

Support for plugins, status-lines and the like are welcome.
Good plugins should make this easy, defining their own highlight groups (with
sensible defaults) and letting the colorscheme override them when necessary.
I don't use many plugins, so I've limited myself to defining the basics.


Melange is focused on tree-sitter based highlighting,
so highlight groups for specific programming languages won't be accepted.
Your favorite language likely has a tree-sitter grammar already available.
See the [supported languages](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages).

Many markup languages don't have a good tree-sitter grammar yet (LaTeX, Org, etc).
Improved highlights for plugins that support these formats are welcome.


## Terminal emulator support

Melange has files defining syntax highlights for many terminal emulators.
This are made in a very ad hoc way, defining some template-like format strings.
If you want to add support for another terminal emulator,
take a look at the existing ones (in `lua/melange/build.lua`) and feel free to open a PR.


## Code structure

Like most colorschemes, Melange is structured as a set of color palettes
and a list of highlight groups those palettes are applied to.

A color palette is a table with some color definitions.
Each color is a hex triplet string like `"#FFFFFF"`.
The color palettes are in `lua/melange/palettes/`.

A highlight group is mapping from a name (like `String`) to a set of colors (like `{fg = blue}`) 
the file `lua/melange/hl_groups.lua` exports a single function
which takes a color palette as input and returns a table of name-colors pairs as output.

Note that the palettes and the highlight group function are stateless,
so you can use them in your own Lua code, or to extend plugins as you see fit.
The only file that modifies the state of the editor is `colors/melange.lua`,
which does the actual setup of the colorscheme.

