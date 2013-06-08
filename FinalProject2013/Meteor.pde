class Meteor {
  float x;
  float y;
  float diam = random(50,60);
  float ySpeed = 1;
  float xSpeed;
  float grav = 0.1;
  float life;
  
  Meteor() {
    x = random(width);
    xSpeed = random(-3,3);
    life = 200;
    y = -diam;
  }
  
  void display() {
    image(meteor,x,y,diam,diam);
  }
  
  void move() {
    x+=xSpeed;
    y+=ySpeed;
    ySpeed+=grav;
    life--;
  }
}
