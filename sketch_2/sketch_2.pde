// sketch 2 - ageels - 30/05/2023
// main :

HLine h1 = new HLine(20, 2.0); 
HLine h2 = new HLine(50, 2.5); 

void setup() {
  size(800, 600);
  noStroke();
  background(pink);
}

void  keyHook() {
  if (keyPressed) {
    if (key == ESC) {
      exit();
    }
  }
}

Figure test;

void  draw() {
  push ();
  keyHook();
  fill(purple);
  rect(0, 160, width, 80);
  strokeWeight(10);
  stroke(blue);
  line (100, 50, width, height);
  line(test.xa, test.ya, test.xb, test.yb);
  pop();
}

//void draw() { 
//  background(204);
//  h1.update(); 
//  h2.update();  
//} 
 
class HLine { 
  float ypos, speed; 
  HLine (float y, float s) {  
    ypos = y; 
    speed = s; 
  } 
  void update() { 
    ypos += speed; 
    if (ypos > height) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos); 
  } 
} 
