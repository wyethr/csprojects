void setup() {
  fullScreen();
  
  backgroundColor = 0;
  background(backgroundColor);
  
  rotation = (float)0;
  rotationFactor = PI/1000;
  
  moon = new Moon();
  arc = new Arc(moon, backgroundColor, rotationFactor);
}

void draw() {
  translate(width/2, height);
  rotate(rotation);
  background(0);
  moon.display();
  
  //arc.display();
  arc.update();
  
  rotation -= rotationFactor;
  arc.changeRotation(rotationFactor);
}

Moon moon;
float rotation, rotationFactor;
color backgroundColor;
Arc arc;
