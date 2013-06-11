class Fire
{
  float x;
  float y;
  float life;
  int radius;
  float xspeed;
  float yspeed;
  
  Fire()
  {
    x = dx+20;
    y = height/2-25;
    radius = 5;
    xspeed = random(1,1.5);
    yspeed = random(1,3);
    life = 150;
  }
  
  void display()
  {
    noStroke();
    fill(255,0,0);
    ellipse(x,y,radius*2,radius*2);
  }
  
  void move()
  {
    x-=xspeed;
    y+=yspeed;
    life--;
  }
}
