class Arc {
  
  Arc(Moon moon, color backgroundColor, float rotation) {
    this.moon = moon;
    this.backgroundColor = backgroundColor;
    this.rotation = rotation;
    radius = moon.getRadius();
    position = moon.copyPosition();
  }
  
  void display() {
    fill(0, 0, 255);
    arc(position.x, position.y, radius, moon.getRadius(), HALF_PI - rotation, 3*HALF_PI - rotation);
  }
  
  void changeRotation(float rotationFactor) {
    rotation -= rotationFactor;
  }
  
  void update() {
    //position.x ++;
    //radius-= 0.5;
  }
  
  Moon moon;
  color backgroundColor;
  float rotation;
  float radius;
  PVector position;
}
