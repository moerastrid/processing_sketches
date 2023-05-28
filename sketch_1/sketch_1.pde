// sketch 1 - ageels - 28-05-2023
// inspired by urbanoxygen 



float time = 0;
int numFrames = 360;

int   amount;

void setup() {
  size (1000, 1000);
  smooth(100);
}

int len = 100;
int hei = height / 16;
int offsetX = 20;
int offsetY = 0;

void draw() {
  background(darkBlue);
  time = ((float)frameCount/numFrames)%1;
  amount = 40;
  translate(width / 2, height / 2);
  
  noFill();
  for (int j = 0; j < 6; j++) {
    offsetX = 100 + j * 10;
    len = j * offsetX;
    for (int i = 0; i < amount; i++) {
      push();
      float frequency = sin(TAU * time);
      rotate(i * TAU/amount * frequency);
  
      strokeWeight(0.4 + 2 * ( abs(frequency) % 2));
      stroke(cyan);
      ellipse(offsetY, offsetX, len, 10 + i * hei);
      stroke(blue);
      ellipse(offsetX, offsetY, 10 + i * hei, len);
      stroke(cyan);
      ellipse(offsetY, -offsetX, len, 10 + i * hei);
      stroke(blue);
      ellipse(-offsetX, offsetY, 10 + i * hei, len);
      pop();
    }
  }
}
