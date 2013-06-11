PImage beach;
PImage boat;
float xboat;

PImage joeychar;

float xjoey = -100;
float yjoey;


void setup()
{
  size(800,600);
  beach = loadImage("Beach Night.jpg");
  joeychar = loadImage("joey.char.png");
  boat = loadImage("Boat Color.png");
   xboat = width/2;
  yjoey = height-200;
 
}

void draw()
{
  background(beach);
  image(joeychar,xjoey,yjoey,100,100);
  if(keyPressed)
  {
    if(key==CODED)
    {
      if(keyCode==LEFT)
      {
        xjoey-=2;
      }
      if(keyCode==RIGHT)
      {
        xjoey+=2;
      }
    }
  }
  image(boat,xboat,460,150,50);
  if(xjoey>width/2+25)
  {
    xboat = xjoey-25;
  }
}
