class Star {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float size;
  float life;

  Star() {
    x=-size;
    size=random(100, 350);
    life=100;
    y=random(0, height);
    xSpeed=7;
    ySpeed=-4;
  }

  void display() {
    image(star, x, y, size, size);
  }
  void shoot() {
    x+=xSpeed;
    y+=ySpeed;
    life--;
  }
}
