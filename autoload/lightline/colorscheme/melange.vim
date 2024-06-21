let s:fg            = ['#ECE1D7', 0]
let s:bg            = ['#292522', 1]
let s:black         = ['#34302C', 2]
let s:red           = ['#BD8183', 3]
let s:green         = ['#78997A', 4]
let s:darker_green  = ['#5D8A78', 5]
let s:yellow        = ['#E49B5D', 6]
let s:blue          = ['#7F91B2', 7]
let s:magenta       = ['#B380B0', 8]
let s:cyan          = ['#7B9695', 9]
let s:white         = ['#C1A78E', 10]
let s:darker_white  = ['#9F8A75', 11]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left     = [ [ s:black, s:green ], [ s:white, s:black ] ]
let s:p.normal.middle   = [ [ s:white, s:black ] ]
let s:p.normal.right    = [ [ s:black, s:green ], [ s:black, s:darker_green ] ]
let s:p.normal.warning  = [ [ s:black, s:red ] ]
let s:p.normal.error    = [ [ s:black, s:red ] ]

let s:p.inactive.left   = [ [ s:darker_white, s:black ] ]
let s:p.inactive.middle = [ [ s:darker_white, s:black ] ]
let s:p.inactive.right  = [ [ s:darker_white, s:black ] ]

let s:p.insert.left     = [ [ s:black, s:red ], [ s:white, s:black ] ]
let s:p.insert.right    = [ [ s:black, s:red ], [ s:white, s:black ] ]

let s:p.replace.left    = [ [ s:bg, s:cyan ], [ s:white, s:black ] ]
let s:p.replace.right   = [ [ s:bg, s:cyan ], [ s:white, s:black ] ]

let s:p.visual.left     = [ [ s:bg, s:yellow ], [ s:white, s:black ] ]
let s:p.visual.right    = [ [ s:bg, s:yellow ], [ s:white, s:black ] ]

let s:p.tabline.left    = [ [ s:darker_white, s:black ] ]
let s:p.tabline.middle  = [ [ s:white, s:bg ] ]
let s:p.tabline.right   = [ [ s:darker_white, s:black ] ]
let s:p.tabline.tabsel  = [ [ s:black, s:green ] ]

let g:lightline#colorscheme#melange#palette = lightline#colorscheme#flatten(s:p)
