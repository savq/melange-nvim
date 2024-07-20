![melange-logo](logo.svg)

## Features
- Dark and light variants
- Special support for various plugins, including:
  - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [VimTeX](https://github.com/lervag/vimtex)
  - [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
  - [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
  - [lightline.vim](https://github.com/itchyny/lightline.vim)
  - [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Support for various terminal emulators (see [`term/`](term/)):
  - [Alacritty](https://github.com/alacritty/alacritty)
  - [Foot](https://codeberg.org/dnkl/foot)
  - [Kitty](https://github.com/kovidgoyal/kitty)
  - [Terminator](https://github.com/gnome-terminator/terminator)
  - [Wezterm](https://github.com/wez/wezterm)
  - [iTerm2](https://github.com/gnachman/iTerm2)


## Requirements
* Neovim ≥ 0.9.2
* `termguicolors` enabled
* A terminal emulator or GUI with true color and font variants support (italics, bold, etc).


## Installation
You can install Melange with any (Neo)Vim plugin manager.

[Paq](https://github.com/savq/paq-nvim):
```lua
"savq/melange-nvim";
```

[Lazy](https://github.com/folke/lazy.nvim):
```
{ "savq/melange-nvim" }
```


Additionally, [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
can be used to install tree-sitter parsers.

## Usage
Enable [`termguicolors`](https://neovim.io/doc/user/options.html#'termguicolors')
and load the [`colorscheme`](https://neovim.io/doc/user/syntax.html#%3Acolorscheme).

In your `init.lua`:
```lua
vim.opt.termguicolors = true
vim.cmd.colorscheme 'melange'
```

Or in your `init.vim`:
```vim
set termguicolors
colorscheme melange
```

To enable the light variant, set the [`background`](https://neovim.io/doc/user/options.html#'background')
(or let your terminal do it for you) before setting the colorscheme.


## Design
Melange was designed with one idea in mind: _Control flow_ should use warm colors and _data_ should use cold colors;
It was originally developed using [Lush.nvim](https://github.com/rktjmp/lush.nvim);
and it's been inspired by many colorschemes, in particular Ayu and Gruvbox.

## Previews

<img width="1326" alt="melange dark screenshot" src="https://user-images.githubusercontent.com/30883030/212500086-a6709213-c82a-4eca-8f3f-67fdc5c26f23.png">
<img width="1326" alt="melange light screenshot" src="https://user-images.githubusercontent.com/30883030/212500082-b67699c7-09dd-42f5-ac7e-ee71ca41c5c6.png">

<!-- The font in the screenshots is [IBM Plex Mono](https://github.com/IBM/plex) -->
