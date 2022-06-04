local hsluv = require('lush').hsluv

return {
  a = {
    bg = hsluv(50, 20, 95),
    overbg = hsluv(50, 20, 90),
    sel = hsluv(50, 20, 85),
    com = hsluv(50, 30, 60),
    faded = hsluv(50, 30, 50),
    fg = hsluv(50, 30, 40),
  },
  b = {
    red = hsluv(20, 80, 50),
    yellow = hsluv(60, 90, 65),
    green = hsluv(130, 50, 60),
    cyan = hsluv(180, 50, 40),
    blue = hsluv(250, 50, 40),
    magenta = hsluv(310, 50, 40),
  },
  c = {
    red = hsluv(10, 50, 65),
    yellow = hsluv(40, 90, 60),
    green = hsluv(130, 40, 70),
    cyan = hsluv(180, 40, 60),
    blue = hsluv(250, 40, 75),
    magenta = hsluv(310, 40, 60),
  },
  d = {
    red = hsluv(20, 40, 80),
    yellow = hsluv(60, 50, 80),
    green = hsluv(130, 30, 90),
    cyan = hsluv(190, 30, 90),
    blue = hsluv(250, 30, 90),
    magenta = hsluv(310, 30, 90),
  },
}
