// p5.js sketch to visualise colors

// This isn't needed for anything in the color scheme.
// It's just a visual aid to help design.

function setup() {
  createCanvas(400, 400);
  colorMode(HSL);

  angleMode(DEGREES);
  translate(width / 2, height / 2);

  const bg = color(30, 20, 15);
  const fg = color('#DED1C4');

  background(bg);
  stroke(fg);
  strokeWeight(2);
  noFill();

  // draw a circle with some radii
  circle(0, 0, 300);
  let x = 0;
  for (let i = 0; i < 360; i += 15) {
    line(0, , cos(i) * 150, sin(i) * 150);
  }

  // Middle "invisible" circle
  fill(bg);
  noStroke();
  circle(0, 0, 50);

  // Color circles
  draw_colors();
  noLoop();
}

function draw_colors() {
  draw_hsl(350, 60, 60);
  draw_hsl(5, 80, 70);
  draw_hsl(30, 60, 50);
  draw_hsl(40, 100, 70);

  draw_hsl(100, 50, 60);
  draw_hsl(140, 40, 60);
  draw_hsl(180, 30, 60);

  draw_hsl(225, 50, 70);
  draw_hsl(270, 30, 60);
  draw_hsl(310, 60, 80);

}

function draw_hsl(h, s, l) {
  stroke(h, s, l);
  fill(h, s, l);
  circle(cos(h) * s * 1.5, sin(h) * s * 1.5, 2000 / l);
}
