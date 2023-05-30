// sketch 2 - ageels - 30/05/2023
// HLine :

class HLine {
  float ypos;
  float speed;
  
  HLine (float y, float s) {
    ypos = y;
    speed = s;
  }
  
  void update(float a) {
    ypos += speed;
    if (ypos > height) {
      ypos = (height + ypos) % height;
    }
    line (0, ypos, width, ypos);
    circle ((ypos * a), ypos, 10);
  }
}
