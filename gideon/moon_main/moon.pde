// JUST TRY TO DO A BIG CIRCLE BLACK THING MOVING ACROSS THIS TIME

class Moon {
  
  Moon() {
    position = new PVector(width/4, 0);
    radius = width/8;
  }
  
  void display() {
    fill(200);
    ellipse(position.x, position.y, radius, radius);
  }
  
  PVector getPosition() {
    return position;
  }
  
  float getRadius() {
    return radius;
  }
  
  PVector copyPosition() {
    return new PVector(position.x, position.y);
  }
  
  PVector position;
  float radius;
}
