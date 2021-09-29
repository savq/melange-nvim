## Contributing

Support for plugins, status-lines and the like are welcome.
Good plugins should make this easy, defining their own highlight groups (with
sensible defaults) and letting the colorscheme override them when necessary.
I don't use many plugins myself, so I've limited myself to defining the basics.

Highlight groups for specific programming languages won't be accepted though.
Your favorite language likely has a tree-sitter grammar already available.
See the [supported languages](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages).

Many markup languages don't have a good tree-sitter grammar yet.
Improved highlights for plugins that support these formats are welcome.

It's possible to auto-generate colors schemes for different terminal emulators.
This is done in a very ad hoc way, defining some template-like format strings.
If you want to add support for another terminal emulator, take a look at the
existing ones (in `lua/melange/build.lua`) and feel free to open a PR.


## Build and develop

Melange is made with [Lush.nvim](https://github.com/rktjmp/lush.nvim),
which makes it very easy to modify; either for extending, contributing, or for
making your own fork. Refer to the [Lush docs](https://github.com/rktjmp/lush.nvim/blob/main/doc/lush.txt)
for more information on extending the colorscheme.

Melange provides a [build script](./lua/melange/build.lua) and a makefile to
compile Lush colorschemes to vimscript persistently, this improves load times
and it means you don't need to load Lush during startup.

Alternatively, you can source `./lua/melange/init.lua` with Lush directly. In Lua:

```lua
package.loaded.melange = nil  -- Clear cache.
require("lush")(require("melange"))
```

