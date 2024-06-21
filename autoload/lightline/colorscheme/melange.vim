lua << EOF
local variant = vim.opt.background:get()
vim.b.lightline_melange_palette = require("melange/palettes/" .. variant)
EOF
let s:grays = b:lightline_melange_palette.a
let s:bright = b:lightline_melange_palette.b
let s:fg = b:lightline_melange_palette.c
let s:bg = b:lightline_melange_palette.d

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left     = [[[s:grays.float, 0], [s:grays.com, 0]], [[s:grays.com, 0], [s:grays.float, 0]]]
let s:p.normal.middle   = [[[s:grays.com, 0], [s:grays.float, 0]]]
let s:p.normal.right    = [[[s:grays.float, 0], [s:grays.com, 0]], [[s:grays.float, 0], [s:grays.ui, 0]]]
let s:p.normal.warning  = [[[s:grays.float, 0], [s:bright.red, 0]]]
let s:p.normal.error    = [[[s:grays.float, 0], [s:bright.red, 0]]]

let s:p.inactive.left   = [[[s:grays.ui, 0], [s:grays.float, 0]]]
let s:p.inactive.middle = [[[s:grays.ui, 0], [s:grays.float, 0]]]
let s:p.inactive.right  = [[[s:grays.ui, 0], [s:grays.float, 0]]]

let s:p.insert.left     = [[[s:grays.float, 0], [s:bright.red, 0]], [[s:grays.com, 0], [s:grays.float, 0]]]
let s:p.insert.right    = [[[s:grays.float, 0], [s:bright.red, 0]], [[s:grays.float, 0], [s:fg.red, 0]]]

let s:p.replace.left    = [[[s:grays.bg, 0], [s:bright.magenta, 0]], [[s:grays.com, 0], [s:grays.float, 0]]]
let s:p.replace.right   = [[[s:grays.bg, 0], [s:bright.magenta, 0]], [[s:grays.float, 0], [s:fg.magenta, 0]]]

let s:p.visual.left     = [[[s:grays.bg, 0], [s:bright.yellow, 0]], [[s:grays.com, 0], [s:grays.float, 0]]]
let s:p.visual.right    = [[[s:grays.bg, 0], [s:bright.yellow, 0]], [[s:grays.float, 0], [s:fg.yellow, 0]]]

let s:p.tabline.left    = [[[s:grays.ui, 0], [s:grays.sel, 0]]]
let s:p.tabline.middle  = [[[s:grays.com, 0], [s:grays.bg, 0]]]
let s:p.tabline.right   = [[[s:grays.ui, 0], [s:grays.sel, 0]]]
let s:p.tabline.tabsel  = [[[s:grays.float, 0], [s:grays.com, 0]]]

let g:lightline#colorscheme#melange#palette = lightline#colorscheme#flatten(s:p)
