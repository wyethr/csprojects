class Line {
  
  Line(float startX, float startY, float endX, float endY) {
    position = new PVector(startX, startY);
    destination = new PVector(endX, endY);
    
    velocity = new PVector((startX - endX)/100, (startY - endY)/100);
  }
  
  void display() {
    point(position.x, position.y);
  }
  
  void update() {
    position.add(velocity);
    print("position.x = " + position.x);
    print("position.y = " + position.y); 
    print("velocity.x = " + velocity.x);
    print("velocit.y = " + velocity.y);
    print("");
  }
  
  PVector position, destination, velocity;
  
}
