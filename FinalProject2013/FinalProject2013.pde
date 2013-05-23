float x,y;
int i=0;

PImage images[]=new PImage[3];//Array of images for Steph.
PImage joeyChar;
void setup()
{
  size(800,600);
  images[0]=loadImage("0.jpg");//background 1
  images[1]=loadImage("1.jpg");//need lockers
  joeyChar=loadImage("joey.char.png");
}
void draw()
{
  background(0);
  image(images[i],0,0,800,600);
  point(x,0);
  if(i==0)//anything that happens on the first image
  {
    ellipse(x,y,50,50);
    image(joeyChar,x-50,y-50,100,100);
    //ellipse(width/2,height/2,50,50);
    y=(-.4732)*x+620;//an eqation based off of two points
    if(keyPressed)
    {
      if(keyCode==UP)
      {
        //add a jump maybe
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
  if(x>=626)
  {
    i++;
  }
  }



  println("X"+mouseX);
  println("Y"+mouseY);

}


