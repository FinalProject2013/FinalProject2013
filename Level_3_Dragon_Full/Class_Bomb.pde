class Bomb
{
  float x;
  float y;
  float yspeed;
  float firesize = 40;
  
  Bomb()
  {
    x = random(width);
    y = -firesize;
    yspeed = random(2,5);
  }
  
  void show()
  {
    image(frebll,x,y,firesize,firesize);
  }
  
  void move()
  {
    y+=yspeed;
  }
  
  void burn()
  {
    if(dist(x+firesize/2,y+firesize/2,xjoey+50,yjoey+50)<firesize/2+50)
    {
      xjoey = -50;
    }
  }
}
