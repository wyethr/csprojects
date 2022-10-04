class Moon {
  
  Moon(float rotation) {
    radius = width/8;
    position = new PVector(width/4, 0);
    darkPosition = new PVector(radius, 0);
    this.rotation = rotation;
  }
  
  void display() {
    noStroke();
    fill(200);
    ellipse(position.x, position.y, radius, radius);
  }
  
  void displayDark() {
    noStroke();
    fill(200);
    ellipse(position.x, position.y, radius, radius);
    
    pushMatrix();
    fill(0, 0, 0);
    translate(position.x, position.y);
    rotate(-rotation);
    ellipse(darkPosition.x, darkPosition.y, radius, radius);
    popMatrix();
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
  
  void update(float rotation) {
    this.rotation = rotation;
    darkPosition.x = darkPosition.x - (float)width/(float)10000;
  }
  
  PVector position;
  float radius, rotation;
  PVector darkPosition;
}
