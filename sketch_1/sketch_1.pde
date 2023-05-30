// sketch 1 - ageels - 28-05-2023
// inspired by urbanoxygen 



float time = 0;
int numFrames = 360;

int   amount;

void setup() {
  size (1000, 1000);
  smooth(2);
}

int len = 100;
int hei = height / 16;
int offsetX = 0;
int offsetY = 0;

void draw() {
  background(0);
  time = ((float)frameCount/numFrames)%1;
  amount = 16;
  translate(width / 2, height / 2);
  
  noFill();
  for (int j = 0; j < 6; j++) {
    offsetX = 100 + j * 10;
    len = j * offsetX + 10;
    for (int i = 0; i < amount; i++) {
      push();
      float frequency = sin(TAU * time / 2);
      rotate(i * TAU/amount * frequency);
  
      strokeWeight(0.4 + (abs(frequency) % 3));
      stroke(blue);
      ellipse(offsetY, offsetX, len, 10 + i * hei);
      stroke(cyan);
      ellipse(offsetX, offsetY, 10 + i * hei, len);
      stroke(blue);
      ellipse(offsetY, -offsetX, len, 10 + i * hei);
      stroke(cyan);
      ellipse(-offsetX, offsetY, 10 + i * hei, len);
      pop();
    }
  }
}
