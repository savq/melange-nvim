const or = 30;

const colors = [
  0,
  120,
  240,

  30,
  150,
  270,
  
  75,
  195,
  315,
];

function setup() {
  frameRate(10);
  createCanvas(400, 400);
  colorMode(HSL);
  background(50);
}

function draw() {
  stroke(0);
  strokeWeight(5);
  noFill();
  circle(200, 200, 300);

draw_color( 30, 60, 50);
draw_color( 60, 70, 70);
draw_color(105, 50, 55);
  
draw_color(150, 60, 50);
draw_color(180, 60, 70);
draw_color(225, 50, 55);
  
draw_color(270, 60, 50);
draw_color(300, 50, 70);
draw_color(345, 50, 55);
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
