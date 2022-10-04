import processing.sound.*;

void setup() {
  fullScreen();
  
  backgroundColor = 0;
  background(backgroundColor);
  
  music = new SoundFile(this, "gideonMusic.mp3");
  music.play();
  
  startTime = 5000;
  originTime = millis();
  
  rotation = (float)0;
  rotationFactor = PI/1000; //(4*width/music.frames());
  
  moon = new Moon(rotation);
  arc = new Arc(moon, backgroundColor, rotationFactor);
}

void draw() { 
  translate(width/2, height);
  println(millis() - originTime);
  background(0);
  
  if(millis() - originTime > startTime) { 
    rotate(rotation);

    if(rotation > -1*PI/3) {
      moon.display();
    }
    else {
      moon.displayDark();
      moon.update(rotation);
    }
    
      //arc.display();
    arc.update();
  
    rotation -= rotationFactor;
    arc.changeRotation(rotationFactor);
  }
  
  

}

Moon moon;

float rotation, rotationFactor;
color backgroundColor;
Arc arc;

SoundFile music;
float startTime; 
float originTime;
