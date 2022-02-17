![melange-logo](https://user-images.githubusercontent.com/30883030/129780812-8d0cfa59-40d7-4413-8fb7-efdf41b04aed.png)

## Features
- Works with Neovim stable and Vim 8
- Dark and light variants
- Special support for various plugins, including:
  - [VimTeX](https://github.com/lervag/vimtex)
  - [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Support for various terminal emulators:
  - [Alacritty](https://github.com/alacritty/alacritty)
  - [Kitty](https://github.com/kovidgoyal/kitty)
  - [Wezterm](https://github.com/wez/wezterm)
  - [iTerm2](https://github.com/gnachman/iTerm2)
  - [terminator](https://github.com/gnome-terminator/terminator)


## Requirements
* Terminal emulator or GUI with true color and font variants support (italics, bold, etc).
* `termguicolors` enabled


## Installation
You can install Melange with any (Neo)Vim plugin manager.

[Packer](https://github.com/wbthomason/packer.nvim):
```lua
use "savq/melange"
```

[Paq](https://github.com/savq/paq-nvim):
```lua
"savq/melange";
```


Additionally, [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
can be used to install tree-sitter parsers,
and [Lush.nvim](https://github.com/rktjmp/lush.nvim)
can be used to extend the colorscheme (see [Contributing](./CONTRIBUTING.md)).


## Usage
Enable `termguicolors` and load the `colorscheme`.

In your `init.vim`:
```vim
set termguicolors
colorscheme melange
```

Or in your `init.lua`:
```lua
vim.opt.termguicolors = true
vim.cmd("colorscheme melange")
```

To enable the light variant, set the `background` (or let your terminal do it for you)
before setting the colorscheme.


## Design
Melange was developed with the following ideas in mind:

* _Control flow_ should use warm colors and _data_ should use cold colors.
* No runtime configuration. If you want to modify anything, you should do it
  statically.  See [Build and develop](./CONTRIBUTING.md#Build-and-develop).
* Ayu and Gruvbox were the main inspirations.


## Previews

<img width="1326" alt="melange-dark" src="https://user-images.githubusercontent.com/30883030/138142670-3344cbfb-641d-4d14-9173-ce039a83e2ba.png">
<img width="1326" alt="melange-light" src="https://user-images.githubusercontent.com/30883030/138520116-2c6ad1d8-ac4a-45d3-86f7-1307ee2ab6ed.png">

The font is [IBM/plex](https://github.com/IBM/plex) Mono.
