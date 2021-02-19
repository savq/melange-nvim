function setup() {
  frameRate(10);
  createCanvas(400, 400);
  colorMode(HSL);
  background(50);

  stroke(0);
  strokeWeight(5);
  noFill();
  circle(200, 200, 300);
  draw_color(350,  50, 60)
  draw_color( 30,  60, 50)
  draw_color( 40, 100, 70)
  draw_color(100,  40, 50)
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
  strokeWeight(20);
  a = radians(h);
  point(cos(a) * s*1.5 + 200, sin(a) * s*1.5 + 200);
}

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
