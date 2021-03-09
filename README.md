🚧 **WORK IN PROGRESS. See [TODO](TODO.md)** 🚧

![logo](./assets/melange-logo.png)

Melange is a dark color scheme with a warm, moderate contrast color palette.
It works with Neovim, as well as Vim 8, and it has with tree-sitter support.

![screenshot](./assets/screenshot-ch20rs.png)



## Requirements

* `termguicolors` enabled for true color support

* (recommended) Neovim 0.5
* (recommended) [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter),



## Installation

With [Paq](https://github.com/savq/paq-nvim):

```lua
paq 'savq/melange'
```

With [Packer](https://github.com/wbthomason/packer.nvim):

```lua
use 'savq/melange'
```

Additionally, [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter),
can be used to install tree-sitter grammars.


## Usage

In your `init.vim`:
```vim
colorscheme melange
```

Or in your `init.lua`:
```lua
vim.cmd 'colorscheme melange'
```


## Design

The color scheme was developed with the following ideas in mind:

* Control flow should use warmer colors
* Data should use colder colors
* It should be easy to modify
* Ayu and Gruvbox were the main inspirations



## Build and develop

Melange is made with [Lush.nvim](https://github.com/rktjmp/lush.nvim),
which makes it very easy to modify.

Assuming you have Lush.nvim installed, you can change the definitions in
`lua/melange/colors.lua`, live preview them, and when your happy with them
compile them to a `.vim` file. Melange provides a build script and a makefile
for convenience.

Alternatively, you can source the `.lua` file directly:

```lua
lua require('lush')(require('melange.colors'))
```


## Contributing

I'm open to suggestions on the color scheme, there are still things that
I don't find perfect just yet.

Highlight group definitions for specific languages won't be accepted though.
Your favorite language probably has a tree-sitter grammar already available.
See the [supported languages](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages).

Auto-generation of colors schemes for different terminal emulators is possible.
Currently only [Alacritty](https://github.com/alacritty/alacritty) is available.
If you want to add support for another terminal emulator, feel free to open a PR.

Support status line plugins is also be welcome
(The lush templates have some info on that).
