import processing.sound.*;

void setup() {
  fullScreen();
  
  startRadius = 1.5*width;
  radius = startRadius;
  
  music = new SoundFile(this, "gideonMusic.mp3");
  music.play();
  fullTime = 60*music.duration();
}

void draw() {  
  background(0);
  if(radius > 0) {
    fill(255);
    ellipse(width/2, height/2, radius, radius);
    radius -= startRadius/fullTime;
  }
}

float radius, startRadius;
SoundFile music;
float fullTime;
