// p5.js sketch to draw the logo

let fg, bg;

function setup() {
    createCanvas(640, 320);
    colorMode(HSL);

    bg = color(30, 10, 15);
    fg = color('#E2DBD5');

    background(bg);
    stroke(fg);
    strokeWeight(2);
    fill(fg);

    textFont('Noto Serif');
    textStyle(BOLDITALIC);
    textAlign(CENTER);
    textSize(80);
    text('meλanʒe', width / 2, height / 2);

    line(0, height *2 / 3, width, height * 2 / 3);
    draw_colors();

    noLoop();
    //saveCanvas('melange-logo');
}

function draw_colors() {
    draw_hsl(-10, 60, 60);
    //draw_hsl( 10, 90, 70);
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
    fill(bg);
    stroke(h, s, l);
    strokeWeight(2);
    const x = map(h, -30, 330, 0, width);
    circle(x, height * 2 / 3, 2000 / l);
} 
