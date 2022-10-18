import processing.sound.*;

void setup() {
  size(400, 400);
  
  radius = 1.5*width;
  
  music = new SoundFile(this, "gideonMusic.mp3");
}

void draw() {
  background(0);
  if(radius > 0) {
    fill(255);
    ellipse(width/2, height/2, radius, radius);
    radius--;
    println(radius);
  }
}

float radius;
SoundFile music;
