# colorsmk2

> This is my color scheme. There are many like it, but this one is mine.


Colorsmk2 is a dark color scheme for Neovim, with tree-sitter support.

## Requirements

* (recommended) Neovim 0.5
* `termguicolors` for true color support
* [Lush.nvim](https://github.com/rktjmp/lush.nvim)


## Installation

With [Paq](https://github.com/savq/paq-nvim):

```lua
paq 'savq/colorsmk2'
paq 'rktjmp/lush.nvim'
```

With [Packer](https://github.com/wbthomason/packer.nvim):

```lua
  use {
    'savq/colorsmk2'
    requires = {'rktjmp/lush.nvim'}
  }
```


## Design

Colorsmk2 is a dark color scheme with a warm, moderate contrast palette.
It was made with the following ideas in mind:

* Control flow should use warm colors
* Structural elements, like constants and types, should use cold colors
* Use red sparingly
* It should be trivial to modify
* Gruvbox and Ayu were the main inspirations
