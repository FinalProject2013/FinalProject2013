class Mermaid {

  float x;
  float y;
  float diam=150;
  float xSpeed, ySpeed;

  Mermaid() {
    x=random(0, width-diam);
    y=random(0, height-diam);
    xSpeed=random(1,3);
    ySpeed=random(1,3);
  }
  void display() {
    image(wermermaid, x, y, diam, diam);
  }

  void bounce () {
    x+=xSpeed;
    y+=ySpeed;
    if (x+diam>=width||x<=0) {
      xSpeed=-xSpeed;
    }
    if (y+diam>=height||y<=0) {
      ySpeed=-ySpeed;
    }
  }
}

