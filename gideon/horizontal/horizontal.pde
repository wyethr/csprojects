import processing.sound.*; 

void setup() {
  fullScreen();
  background(255);
  
  radius = height/10;
  strokeWeight(radius);
  fill(0);
  
  x = 0;
  y = 0;
  xFactor = 1;
}

void draw() {
  point(x, y);
  x += xFactor;
  if(x > width + radius|| x < 0 - radius) {
    xFactor *= -1;
    y += radius;
  }
}

float x, y, radius, xFactor;
