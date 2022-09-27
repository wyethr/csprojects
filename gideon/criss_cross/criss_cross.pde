void setup() {
  fullScreen();
  background(255);
  
  lines = new ArrayList<Line>();
  Line test = new Line(random(width), height, random(width), 0);
  lines.add(test);
  
  stroke(0);
}

void draw() {
  ellipse((float)width/2, (float)height/2, 50, 50);
  for(Line l: lines) {
    l.display();
    l.update();
  }
}

ArrayList<Line> lines;
