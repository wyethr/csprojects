void setup() {
  fullScreen();
  background(0);
  
  moon = new Moon();
  rotation = (float)0;
}

void draw() {
  translate(width/2, height);
  rotate(rotation);
  background(0);
  moon.display();
  
  rotation -= PI/1000;
}

Moon moon;
float rotation;
