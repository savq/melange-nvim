local hsluv = require('lush').hsluv

return {
  a = {
    bg = hsluv(50, 20, 15),
    overbg = hsluv(50, 20, 20),
    sel = hsluv(50, 20, 30),
    com = hsluv(50, 30, 60),
    faded = hsluv(50, 30, 70),
    fg = hsluv(50, 30, 90),
  },
  b = {
    red = hsluv(20, 80, 65),
    yellow = hsluv(60, 70, 80),
    green = hsluv(130, 40, 80),
    cyan = hsluv(190, 40, 70),
    blue = hsluv(250, 40, 70),
    magenta = hsluv(310, 40, 70),
  },
  c = {
    red = hsluv(10, 40, 50),
    yellow = hsluv(40, 70, 70),
    green = hsluv(130, 30, 60),
    cyan = hsluv(190, 30, 65),
    blue = hsluv(250, 30, 50),
    magenta = hsluv(310, 30, 60),
  },
  d = {
    red = hsluv(10, 60, 30),
    yellow = hsluv(60, 70, 50),
    green = hsluv(130, 50, 20),
    cyan = hsluv(190, 50, 20),
    blue = hsluv(250, 50, 20),
    magenta = hsluv(310, 50, 20),
  },
}
