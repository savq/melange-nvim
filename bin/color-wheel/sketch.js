// p5.js sketch to visualise colors

// This isn't needed for anything in the color scheme.
// It's just a visual aid to help design.

function setup() {
  frameRate(10);
  createCanvas(400, 400);
  colorMode(HSL);
  background(50);
  angleMode(DEGREES)
  translate(width / 2, height / 2)
  stroke(0);
  strokeWeight(2);
  noFill();

  // draw a circle with some radii
  circle(0, 0, 300);
  for (let i = 0; i < 360; i += 15) {
    line(0, 0, cos(i) * 150, sin(i) * 150)
  }

  draw_colors();
  noLoop();
}

function draw_colors() {
  draw_hsl(350, 60, 60);
  draw_hsl(30,  60, 50);
  draw_hsl(40, 100, 70);
                        
  draw_hsl(100, 50, 60);
  draw_hsl(150, 40, 50);
  draw_hsl(180, 30, 60);
                        
  draw_hsl(225, 30, 60);
  draw_hsl(270, 40, 70);
  draw_hsl(310, 50, 70);
}

function draw_hsl(h, s, l) {
  stroke(h, s, l);
  strokeWeight(l / 2);
  point(cos(h) * s * 1.5, sin(h) * s * 1.5);
}

/*
function draw_color_wheel() {
  for (let i = 0; i < 360; i++) {
    for (let j = 0; j < 100; j++) {
      stroke(i, j, 50);
      point(cos(i) * j + 200, sin(i) * j + 200);
    }
  }
}
*/
