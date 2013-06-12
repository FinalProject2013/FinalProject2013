class BouncingStuff {

  float x;
  float y;
  float diam;
  float xSpeed, ySpeed;
  PImage i;

  BouncingStuff(PImage ti) {
    
    xSpeed=random(1, 3);
    ySpeed=random(1, 3);
    i=ti;
    diam=150;
    x=random(1, width-diam-1);
    y=random(1, height-diam-1);
  }

  BouncingStuff(PImage ti, float tdiam) {
    
    xSpeed=random(1, 3);
    ySpeed=random(1, 3);
    i=ti;
    diam=tdiam;
    x=random(1, width-diam);
    y=random(1, height-diam);
  }

  void display() {
    image(i, x, y, diam, diam);
  }

  void bounce () {
   
    if (x+diam>=width||x<=0) {
      xSpeed=-xSpeed;
    }
    if (y+diam>=height||y<=0) {
      ySpeed=-ySpeed;
    }
     x+=xSpeed;
    y+=ySpeed;
  }
}

