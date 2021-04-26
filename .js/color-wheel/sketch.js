// p5.js sketch to visualise colors

let bg, fg;

function setup() {
    createCanvas(600, 400);
    angleMode(DEGREES);
    translate(width / 2, height / 2);

    colorMode(HSL);
    bg = color(30, 20, 15);
    fg = color('#DED1C4');

    background(bg);
    stroke(fg);
    strokeWeight(2);
    noFill();

    draw_wheel();
    draw_colors();
    strokeWeight(2);
    draw_grays();

    noLoop();    // don't animate
}

function draw_wheel() {
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

function draw_colors() {
    draw_hsl(350, 60, 60);
    draw_hsl( 10, 90, 70);
    draw_hsl( 30, 60, 50);
    //draw_hsl( 40, 60, 50);
    draw_hsl( 40, 90, 70);

    draw_hsl(100, 40, 60);
    draw_hsl(150, 40, 50);
    draw_hsl(180, 20, 60);

    draw_hsl(225, 30, 70);
    draw_hsl(270, 30, 60);
    draw_hsl(310, 40, 70);
}

function draw_hsl(h, s, l) {
    // draw
    stroke(h, s, l);
    fill(h, s, l);
    circle(cos(h) * s * 1.5, sin(h) * s * 1.5, 2000 / l);
}

function draw_grays() {
    let a = [];
    let s = 15;
    for (let i = 0; i <= 6; i++) {
        a[i] = s;
        s *= 1.4;
    }
    draw_gray(30, 10, 15);
    draw_gray(30, 10, 20);
    draw_gray(30, 15, 30);
    draw_gray(30, 20, 35);
    draw_gray(30, 20, 55);
    draw_gray(30, 30, 90);
}

function draw_gray(h, s, l) {
    stroke(255);
    fill(h, s, l);
    let y = map(l, 0, 100, 0, 400);
    circle(-250, y-200, 30);
}
