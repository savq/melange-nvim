## Contributing

Support for plugins, status-lines and the like are welcome.
Good plugins should make this easy, defining their own highlight groups (with
sensible defaults) and letting the colorscheme override them when necessary.
I don't use many plugins myself, so I've limited myself to defining the basics.

Highlight groups for specific programming languages won't be accepted though.
Your favorite language likely has a tree-sitter grammar already available.
See the [supported languages](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages).

Many markup languages don't have a good tree-sitter grammar yet.
Improved highlights for these plugins that support these formats are welcome.

It's possible to auto-generate colors schemes for different terminal emulators.
This is done in a very ad hoc way, defining some template-like format strings.
If you want to add support for another terminal emulator, take a look at the
existing ones (in `lua/melange/build.lua`) and feel free to open a PR.


## Build and develop

Melange is made with [Lush.nvim](https://github.com/rktjmp/lush.nvim),
which makes it very easy to modify. Either for contributing, or for making your
own fork.

Assuming you have Lush.nvim installed, you can change the color definitions,
and highlight group definitions in `lua/melange/init.lua`, live preview them,
and when you're happy with them compile them to a `.vim` file. Melange provides
a build script and a makefile for convenience.

Alternatively, you can source the `.lua` file directly:

```lua
lua require("lush")(require("melange"))
```
