let width, growFactor, lastX, lastY, x, y, growMult;

function setup() {
  width = 10;
  growFactor = 5;
  lastX = mouseX;
  lastY = mouseY;
  x = 200;
  y = 100;
  createCanvas(400, 400);
  growMult = 1;
}

function draw() {
  background(0);
  if(width > 200 || width < 10) {
    growMult = growMult * -1;
  }
  if(dist(mouseX, mouseY, x, y) - dist(lastX, lastY, x, y) > 1) {
    growFactor = growFactor + growMult;

    if(growFactor == 0) {
      growFactor = growFactor + growMult;
    }
  }
  if(dist(mouseX, mouseY, x, y) - dist(lastX, lastY, x, y) < -1) {
    growFactor = growFactor - growMult;

    if(growFactor == 0) {
      growFactor = growFactor + growMult;
    }
  }

  if(width < 10) {
    width = 10;
  }

  lastX = mouseX;
  lastY = mouseY;
  width = width + (growMult*growFactor);
  heart(x, y, width);
  print(width);
}

function heart(x, y, size) {
  beginShape();
  vertex(x, y);
  bezierVertex(x - size / 2, y - size / 2, x - size, y + size / 3, x, y + size);
  bezierVertex(x + size, y + size / 3, x + size / 2, y - size / 2, x, y);
  endShape(CLOSE);
}
