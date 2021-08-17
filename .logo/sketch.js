// p5.js sketch to draw the logo

let fg, bg;

let palette_dark;

function setup() {
    createCanvas(640, 320)
    colorMode(HSL)

    bg = color(30, 10, 15)
    fg = color(30, 30, 90)

    const tones = {
        red     : color(  0, 40, 50),
        orange  : color( 30, 70, 60),
        yellow  : color( 40, 90, 70),
        green   : color(120, 20, 50),
        cyan    : color(180, 20, 60),
        blue    : color(220, 40, 70),
        purple  : color(300, 20, 60),
        magenta : color(340, 40, 70),
    }

    background(bg)
    fill(fg)
    textFont('Noto Serif')
    textStyle(BOLDITALIC)
    textAlign(CENTER)
    textSize(80)
    text('meλanʒe', width / 2, height / 2)

    let y = height * 2 / 3
    fill(bg)
    stroke(fg)
    strokeWeight(1)
    line(0, y, width, y)
    strokeWeight(2)
    draw_colors(tones, y)

    noLoop();
    saveCanvas('melange-logo');
}

function draw_colors(colors, y) {
    for (let c in colors) {
        console.log(c, colors[c]);
        draw_color(colors[c], y);
    }
}

function draw_color(color, y) {
    const h = hue(color);
    const s = saturation(color);
    const l = lightness(color);
    stroke(h, s, l);
    const x = map(h, -20, 360, 0, width);
    circle(x, y, 2000 / l);
}
