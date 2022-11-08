/* 

KEYCODE: 
enter = fade in
tab = start shrinking
backspace = reset shrink
shift = reset opacity

*/

import processing.sound.*;

void setup() {
  fullScreen();
  noCursor();
  
  c = 0;
  
  startRadius = 1.1*width;
  radius = startRadius;
  
  //music = new SoundFile(this, "gideonPerhapsReal.mp4");
  fullTime = 1000*79; //60*79 //music.duration();
  //music.play();
  
  startTime = 0;
  
  currentTime = millis() - startTime;
  
  startShrink = false;
  colorAdd = false;
}

void draw() {  
  background(0);
  fill(c);
  ellipse(width/2, height/2, radius, radius);
  
  currentTime = millis() - startTime;
  
  if(colorAdd == true) {
    c++;
  }
  
  if(c >= 255) {
    colorAdd = false;
  }
  
  if(startShrink == true && radius > 0) {
    radius = map(currentTime, 0, fullTime, startRadius, 0);
    //radius -= startRadius/fullTime;
  }
}

void keyPressed() {
  if(keyCode == ENTER) {
    //startShrink = true;
    colorAdd = true;
    //music.play();
  }
  else if(keyCode == TAB) {
    startShrink = true;
    startTime = millis();
  }
  else if(keyCode == BACKSPACE) {
    radius = startRadius;
    startShrink = false;
  }
  else if(keyCode == SHIFT) {
    c = 0;
    colorAdd = false;
  }
}

float radius, startRadius;
//SoundFile music;
float fullTime, currentTime, startTime;
boolean startShrink, colorAdd;
float c;
