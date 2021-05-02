# TODO

- [ ] Variants:
  - [X] Light
    - NOTE: Currently the light colors are generated and applied based on `&background`,
      this is annoyingly stateful and requires module reloading.
      TODO: Figure out a more functional way to do this.
  - [ ] dark high contrast

- [ ] Better screenshots:
  - Explain that tree-sitter makes color more consistent across languages
  - showcase various languages: static and dynamic; with and without type inference; etc.

- [ ] TeX/VimTeX support:
  - TeX doesn't have a tree-sitter grammar
  - VimTeX is widely used and should look nice by default

- [ ] Update kitty definitions to only require the `c` table (see `build.lua`)
