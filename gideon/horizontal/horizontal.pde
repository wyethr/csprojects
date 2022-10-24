import processing.sound.*; 

void setup() {
  size(500, 500);
  background(255);
  
  music = new SoundFile(this, "gideonPerhaps.mp3");
  //music.play();
  fullTime = 60*music.duration();
  
  radius = height/10;
  strokeWeight(radius);
  fill(0);
  
  x = 0;
  y = 0;
  
  xFactor = .5;
  yFactor = .5;
  
  topRight = width;
  bottomRight = height;
  bottomLeft = 0;
  topLeft = 0;
}

void draw() {
  point(x, y);
  if(y <= topLeft + radius && x < topRight) {
    x += xFactor;
  }
  else if(x >= topRight - radius && y < bottomRight) {
    y += yFactor;
  }
  else if(y >= bottomRight - radius && x < bottomLeft) {
    x -= xFactor;
  }
  else if(x <= bottomLeft + radius) {
    y -= yFactor;
  }
}

float x, y, radius, xFactor, yFactor;
SoundFile music;
float fullTime;
float topLeft, topRight, bottomLeft, bottomRight;
