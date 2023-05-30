// sketch 2 - ageels - 30/05/2023
// main :

// initiate the amount of horizontal lines you'd like to see
int n = 5;

HLine[] horLines = new HLine[n];

void setup() {
  keyHook();
  size(800, 600);
  frameRate(30);
  for (int i = 0; i < n; i++) {
    horLines[i] = new HLine(random(0, width), random(3, 6));
  }
}

int  isInside(int rectStart, int rectLen) {
  int inside = 0;
  for (int i = 0; i < n; i++) {
    if (horLines[i].ypos >= rectStart && horLines[i].ypos <= rectStart + rectLen)
      return (1);
  }
  return (inside);
}

void  draw() {
  push ();
  float a = float(width) / float(height);
  background(0);
  
  stroke(darkBlue);
  strokeWeight(20);
  line (0, 0, width, height);
  strokeWeight(10);
  stroke(cyan);
  for (int i = 0; i < n; i++) {
    horLines[i].update(a);
  }
  noStroke();

  int rectStart = 140;
  int rectLen = 40;
  if (isInside(140, 40) == 0)
    fill(purple);
  else
    fill(pink);
  rect(0, rectStart, width, rectLen);
  pop();
}
