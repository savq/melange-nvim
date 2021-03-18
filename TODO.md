# TODO

- Fix grays:
  Currently Melange uses 7 grays (including foreground and background),
  This should be reduced to 6, so that it conforms to modern terminal's convention
  (foreground, background, black, white, bright black, and bright white)
- Split into modules:
  - The color palette should be defined in a separate file, so that terminal's
  - colors are defined by colors and not Vim groups.
- Variants:
  - Light theme
  - high contrast dark theme
- Better screenshots:
  - Explain that tree-sitter makes color more consistent across languages
  - showcase various languages: static and dynamic; with and without type inference; etc.
- TeX/VimTeX support:
  - TeX doesn't have a tree-sitter grammar
  - VimTeX is widely used and should look nice by default
