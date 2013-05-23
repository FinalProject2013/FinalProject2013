int x,y;

PImage images[]=new PImage[3];//Array of images for Steph.

void setup()
{
  size(800,600);
  images[0]=loadImage("");
  
  
}
void draw()
{
  background(0);
  
 // image(joey,475289,4325894,543908,34);
}
void keyPressed()
{
  if(keyCode==UP)
  {
  }
  if(keyCode==DOWN)
  {
  }
  if(keyCode==LEFT)
  {
    x--;
  }
  if(keyCode==RIGHT)
  {
    x++;
  }
}

