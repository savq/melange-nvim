![melange-logo](logo.svg)

## Features

- Dark and light variants
- Support for all Neovim highlight groups, including:
  - [Default highlight groups](https://neovim.io/doc/user/syntax.html#highlight-default)
  - [tree-sitter highlight groups](https://neovim.io/doc/user/treesitter.html#treesitter-highlight-groups)
  - [LSP semantic highlight groups](https://neovim.io/doc/user/lsp.html#lsp-semantic-highlight)
- Special support for various plugins, including:
  - [mini.nvim](https://github.com/echasnovski/mini.nvim)
  - [blink.cmp](https://github.com/Saghen/blink.cmp)
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
  - [lightline.vim](https://github.com/itchyny/lightline.vim)
  - [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  - [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
  - [rainbow-delimiters.nvim](https://github.com/hiphish/rainbow-delimiters.nvim)
  - [VimTeX](https://github.com/lervag/vimtex)
- Support for various terminal emulators/multiplexers (see [`term/`](term/)):
  - [Alacritty](https://github.com/alacritty/alacritty)
  - [Foot](https://codeberg.org/dnkl/foot)
  - [Ghostty](https://ghostty.org/docs)
  - [Kitty](https://github.com/kovidgoyal/kitty)
  - [Terminator](https://github.com/gnome-terminator/terminator)
  - [Wezterm](https://github.com/wez/wezterm)
  - [iTerm2](https://github.com/gnachman/iTerm2)
  - [Zellij](https://github.com/zellij-org/zellij)


## Requirements

- Neovim ≥ 0.9.2
- A terminal emulator with true color and font variants support (italics, bold, etc).


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

Load the [`colorscheme`](https://neovim.io/doc/user/syntax.html#%3Acolorscheme)
in your `init.lua`:
```lua
vim.cmd.colorscheme 'melange'
```
or in your `init.vim`:
```vim
colorscheme melange
```

Since Neovim 0.10,
Neovim will enable [`termguicolors`](https://neovim.io/doc/user/options.html#'termguicolors') automatically if your terminal supports it.
It will also set the [`background`](https://neovim.io/doc/user/options.html#'background') according to your terminal background.
It's not necessary to set these options manually.


## Design

Melange was designed with one idea in mind: _Control flow_ should use warm colors and _data_ should use cold colors;
It was originally developed using [Lush.nvim](https://github.com/rktjmp/lush.nvim);
and it's been inspired by many colorschemes, in particular Ayu and Gruvbox.


## Previews

<img width="1326" title="Melange Dark with IBM Plex Mono" alt="Screenshot of code listing using melange dark" src="https://user-images.githubusercontent.com/30883030/212500086-a6709213-c82a-4eca-8f3f-67fdc5c26f23.png">
<img width="1326" title="Melange Light with IBM Plex Mono" alt="Screenshot of code listing using melange light" src="https://user-images.githubusercontent.com/30883030/212500082-b67699c7-09dd-42f5-ac7e-ee71ca41c5c6.png">
