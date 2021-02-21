🚧 **WORK IN PROGRESS** 🚧

## TODO
  - Screenshot
  - Logo
  - Distribute cold colors better


# Meλanʒe

Melange is a dark color scheme with a warm, moderate contrast color palette;
written for Neovim, and with tree-sitter support.


## Requirements

* (recommended) Neovim 0.5
* (alternative) Vim 8
* (recommended) [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* `termguicolors` enabled for true color support

Melange will work with Vim 8, however, since Vim 8 doesn't have tree-sitter,
the syntax highlighting won't be as fine-tuned.


## Installation

With [Paq](https://github.com/savq/paq-nvim):

```lua
paq 'savq/melange'
```

With [Packer](https://github.com/wbthomason/packer.nvim):

```lua
use 'savq/melange'
```


## Usage

In your `init.vim`:
```vim
colorscheme melange
```

Or in your `init.lua`:
```lua
vim.cmd 'colorscheme melange'
```


## Build and develop

Melange is made with [Lush.nvim](https://github.com/rktjmp/lush.nvim),
which makes it very easy to modify.

Assuming you have Lush.nvim installed, you can change the definitions in 
`lua/melange/colors.lua`, live preview them, and when your happy with them
compile them to a `.vim` file. Melange provides a makefile for convenience.

Alternatively, you can use the color scheme `melange_dev`, which will source
the `.lua` files directly.


## Design

The color scheme was developed with the following ideas in mind:

* Control flow should use warmer colors
* Data should use colder colors
* Use red sparingly
* It should be trivial to modify
* Ayu and Gruvbox were the main inspirations


## Contributing

I'm open to suggestions on the color scheme, there are still things that
I don't find perfect just yet.

Highlight group definitions for specific languages won't be accepted. The only
current exception is Markdown, which doesn't yet have a working grammar and has
plenty of half-broken syntax plugins out there.

Your favorite language probably has a tree-sitter grammar already available.
See the [supported languages](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages).

Auto-generation of colors schemes for different terminal emulators is possible.
Currently only [Alacritty](https://github.com/alacritty/alacritty) is available.
If you want to add support for another terminal emulator, feel free to open a PR.
