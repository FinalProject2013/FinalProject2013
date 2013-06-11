PImage bg;
PImage flydrag;
PImage joeychar;
float xjoey = 400;
float yjoey;
float wdragon;
float hdragon;
float winitial = 209;
float hinitial = 174;
float stephs_i=1;

void setup()
{
  size(800,600);
  bg = loadImage("Cave.png");
  flydrag = loadImage("Flying Dragon Color.png");
  joeychar = loadImage("joey.char.png");
  yjoey = height-130;
}

void draw()
{
  background(bg);
  image(flydrag,50,150,wdragon,hdragon);
  wdragon = winitial/stephs_i;
  hdragon = hinitial/stephs_i;
  stephs_i+=0.01;
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
}
