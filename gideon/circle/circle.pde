import processing.sound.*;

void setup() {
  fullScreen();
  
  startRadius = .90*width;
  radius = startRadius;
  
  music = new SoundFile(this, "gideonPerhaps.mp3");
  //music.play();
  fullTime = 60*music.duration();
  
  startShrink = false;
}

void draw() {  
  background(0);
  fill(255);
  ellipse(width/2, height/2, radius, radius);
  
  if(startShrink == true && radius > 0) {
    radius -= startRadius/fullTime;
  }
}

void keyPressed() {
  if(keyCode == ENTER) {
    startShrink = true;
  }
  else if(keyCode == BACKSPACE) {
    radius = .90*width;
    startShrink = false;
  }
}

float radius, startRadius;
SoundFile music;
float fullTime;
boolean startShrink;
