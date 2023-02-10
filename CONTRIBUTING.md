# Contributing

## Plugins

Support for plugins, status-lines and the like are welcome.
Good plugins should make this easy, defining their own highlight groups (with sensible defaults)
and letting the color scheme override them when necessary.

If you want to add support for a plugin, take a look at the existing highlight
groups in [`colors/melange.lua`](colors/melange.lua) and open a PR.

**NOTE:**
Melange is focused on tree-sitter based highlighting,
so highlight groups for specific programming languages won't be accepted.
Your favorite language likely has a
[tree-sitter grammar already available](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages).
Many markup languages don't have good tree-sitter grammars yet (LaTeX, Org, etc),
so improved highlights for these filetypes are welcome.


## Terminal emulator support

Melange has files with color schemes for many terminal emulators.
These are made in an ad-hoc way, defining some template-like format strings.

If you want to add support for a terminal emulator, take a look at the existing
ones in [`lua/melange/build.lua`](lua/melange/build.lua) and open a PR.


## Code structure

Like most colorschemes, Melange is structured as a set of color palettes
and a list of highlight groups those palettes are applied to.

A color palette is a table with some color definitions
written as hex triplet strings like `"#FFFFFF"`.
The color palettes are in [`lua/melange/palettes/`](lua/melange/palettes).

A highlight group is mapping from a name (like `String`) to a group of
attributes (like `{fg = blue}`).
The file [`colors/melange.lua`](colors/melange.lua) defines the list of
highlight groups, and then applies them to set the appereance of Neovim.

