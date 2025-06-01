# Contributing

**NOTE:**
Supported plugins and terminal emulators must be open source and actively maintained.
If that's not the case, your PR will be closed without comment.

## Plugin support

Support for plugins, status-lines and the like are welcome.
Good plugins should make this easy, defining their own highlight groups (with sensible defaults)
and letting the color scheme override them when necessary.

To add support for a plugin:

- Find the documentation detailing the highlight groups defined by the plugin.
- Copy the highlight groups to [`colors/melange.lua`](colors/melange.lua).
- Comment out the highlight groups that don't need to be modified.
- When possible, link to already existing highlight groups:
  - [Default highlight groups](https://neovim.io/doc/user/syntax.html#highlight-default)
  - [tree-sitter highlight groups](https://neovim.io/doc/user/treesitter.html#treesitter-highlight-groups)
  - [mini.nvim highlight groups](https://github.com/echasnovski/mini.nvim/blob/main/CONTRIBUTING.md#list-of-highlight-groups)

**NOTE:**
Melange is focused on tree-sitter based highlighting,
so highlight groups for specific programming languages won't be accepted.
Your favorite language likely has a
[tree-sitter grammar already available](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages).


## Terminal emulator support

Melange includes files with color schemes for many terminal emulators. See [`term/`](term/).
These are generated in an ad-hoc way, defining some template-like format strings.

To add support for a terminal emulator, take a look at the existing ones in
[`lua/melange/build.lua`](lua/melange/build.lua) and open a PR.


## Code structure

Like most colorschemes, Melange is structured as a set of color palettes
and a list of highlight groups those palettes are applied to.

A color palette is a table with some color definitions
written as hex triplet strings like `"#FFFFFF"`.
The color palettes are in [`lua/melange/palettes/`](lua/melange/palettes).

A highlight group is mapping from a name (like `String`) to a group of
attributes (like `{fg = blue}`) or another highlight group (a link).
The file [`colors/melange.lua`](colors/melange.lua) defines the list of
highlight groups, and then applies them to set the appereance of Neovim.
