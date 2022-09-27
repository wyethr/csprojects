class Moon {
  
  Moon() {
    position = new PVector(width/4, 0);
  }
  
  void display() {
    fill(200);
    ellipse(position.x, position.y, width/10, width/10);
  }
  
  PVector position;
}
