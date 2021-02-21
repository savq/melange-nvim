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
  circle(0, 0, 300);

  // draw some radii
  for (let i = 0; i < 360; i += 15) {
    line(0, 0, cos(i) * 150, sin(i) * 150)
  }

  draw_color(350,  60, 60)
  draw_color( 30,  60, 50)
  draw_color( 40, 100, 70)

  draw_color(100,  90, 80)
  draw_color(150,  30, 50)
  draw_color(180,  30, 60)

  draw_color(225,  90, 80)
  draw_color(270,  40, 60)
  draw_color(310,  50, 70)

  noLoop()
}

function draw_color(h, s, l) {
  let a;
  stroke(h, s, l);
  strokeWeight(l / 2);
  point(cos(h) * s * 1.5, sin(h) * s * 1.5);
}

/*
function draw_color_wheel() {
  let a;
  for (let i = 0; i < 360; i++) {
    for (let j = 0; j < 100; j++) {
      stroke(i, j, 50);
      a = radians(i);
      point(cos(a) * j + 200, sin(a) * j + 200);
    }
  }
}
*/
