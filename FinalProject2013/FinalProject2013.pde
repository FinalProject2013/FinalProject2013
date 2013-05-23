float x,y;
int i=0;
int n;
int b=0;
boolean bo=false;


PImage images[]=new PImage[3];//Array of images for Steph.
PImage bomb[]=new PImage[2];//bombs
PImage joeyChar;
void setup()
{
  size(800,600);
  images[0]=loadImage("0.jpg");//background 1
  images[1]=loadImage("1.jpg");//need lockers
  bomb[0]=loadImage("bomb1.png");
  bomb[1]=loadImage("bomb2.png");
  joeyChar=loadImage("joey.char.png");
}
void draw()
{
  background(0);
//  print(bo);
  image(images[i],0,0,800,600);
  point(x,0);
  if(i==0)//anything that happens on the first image
  {
    ellipse(x,y,50,50);
    image(joeyChar,x-50,y-50,100,100);
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
        x-=3;
      }
      if(keyCode==RIGHT)
      {
        x+=3;
      }
    }
    
    if(x>=626)
    {
      i++;
      n=int(random(0,8));
    }
  }
  
  if(i==1)
  {
     
    if(mousePressed)
    {
     
      if(n==5)
      {
        //key
        println("WINNER");
      }
      else
      {
        bo=true;
        //bomb 

      }
      
      
  }if(bo==true)
      {
        image(bomb[b],0,200,50,50);
        //image(bomb[b],0,height-bomb[b].height,50,50);
        if(b==0)
          b=1;
        if(b==1)
          b=0;
      }
      
    }


  println("X"+mouseX);
  println("Y"+mouseY);

}


