// p5.js sketch to visualise colors

function setup() {
    createCanvas(600, 400);
    angleMode(DEGREES);
    translate(width / 2, height / 2); // move origin
    colorMode(HSL);

    const grays = [
        color(30, 10, 15),
        color(30, 10, 20),
        color(30, 15, 30),
        color(30, 20, 35),
        color(30, 20, 55),
        color(30, 30, 90),
        //color(0, 0, 100)
    ];

    const dark_colors = {
        red:     color(350, 60, 60),
        salmon:  color( 10, 90, 70),
        orange:  color( 30, 60, 50),
        papaya:  color( 30, 90, 60),
        amber:   color( 40, 60, 50),
        yellow:  color( 40, 90, 70),
        teal:    color(100, 40, 60),
        green:   color(150, 40, 50),
        blue:    color(180, 20, 60),
        aqua:    color(225, 30, 70),
        purple:  color(270, 30, 60),
        magenta: color(310, 40, 70),
    };

    background(grays[0]);
    stroke(grays[5]);
    strokeWeight(2);
    noFill();

    draw_wheel(grays[0]);
    draw_colors(dark_colors);
    draw_grays(grays);

    noLoop(); // don't animate
}

function draw_wheel(bg) {
    // draw a circle with some radii
    circle(0, 0, 300);
    for (let i = 0; i < 360; i += 15) {
        line(0, 0, cos(i) * 150, sin(i) * 150);
    }
    // Middle "invisible" circle
    fill(bg);
    noStroke();
    circle(0, 0, 50);
}

function draw_colors(colors) {
    for (let n in colors) {
        draw_hsl(colors[n]);
    }
}

function draw_hsl(color) {
    const h = hue(color);
    const s = saturation(color);
    const l = lightness(color);
    stroke(h, s, l);
    fill(h, s, l);
    circle(cos(h) * s * 1.5, sin(h) * s * 1.5, 2000 / l);
}

function draw_grays(grays) {
    /*
  let a = [];
  let s = 15;
  for (let i = 0; i <= 6; i++) {
    a[i] = s;
    s *= 1.4;
  }
  */

    for (let g of grays) {
        draw_gray(g);
        draw_hsl(g);
    }
}

function draw_gray(color) {
    const h = hue(color);
    const s = saturation(color);
    const l = lightness(color);
    stroke(255);
    fill(h, s, l);
    let y = map(l, 0, 100, 0, 400);
    circle(-250, y - 200, 30);
}

