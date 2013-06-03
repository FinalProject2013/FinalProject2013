float xjoey,yjoey;
int i=0;
int n;
int b;
boolean bo=false;
boolean ke=false;
int bmove=0;

//for the video:
import processing.video.*;
Movie explosion;
int newtime=0;

int oldtime=0;
int p=0;


PImage images[]=new PImage[3];//Array of images for Steph.
PImage bomb[]=new PImage[2];//bombs
PImage lockerkey;
PImage joeyChar;


PImage speech []= new PImage [3];//Speech bubbles 1
int q=0;
//PImage techClassroom;



void setup()
{
  size(800,600);
  images[0]=loadImage("0.jpg");//background 1
  images[1]=loadImage("1.jpg");//need lockers
  images[2]=loadImage("2.jpg");
  bomb[0]=loadImage("bomb1.png");
  bomb[1]=loadImage("bomb2.png");
  joeyChar=loadImage("joey.char.png");
  lockerkey=loadImage("lockerkey.png");
  
  //video:
  explosion = new Movie(this, "SpongebobExplosion.mov");
  explosion.loop();
  
  speech[0]=loadImage("Speech1!.png");
  speech[1]=loadImage("Speech2!.png");
  speech[2]=loadImage("Speech3!.png");
  //techClassroom=loadImage("techClassroom.jpg");
}
void draw()
{
  background(0);
//  print(bo);
  image(images[i],0,0,800,600);
  point(xjoey,0);
  if(i==0)//anything that happens on the first image
  {
    //ellipse(xjoey,yjoey,50,50);
    image(joeyChar,xjoey-50,yjoey-50,100,100);
    yjoey=(-.4732)*xjoey+620;//an eqation based off of two points
    if(keyPressed)
    {
      if(keyCode==UP)
      {
        //add a jump maybe
        yjoey+=10;
        //THIS IS NOT DONE KTHXBAI
        
      }
      if(keyCode==DOWN)
      {
      }
      if(keyCode==LEFT)
      {
        xjoey-=3;
      }
      if(keyCode==RIGHT)
      {
        xjoey+=3;
      }
    }
    
    if(xjoey>=626)
    {
      i++;
      //n=int(random(0,6));
      //FOR DEBUGGING PURPOSES ALWAYS WIN
      n=5;
    }
  }
  
  if(i==1)
  {
    if(mouseX>=50&&mouseX<=width-50&&mouseY>=50&&mouseY<=height-50)
    {
      cursor(HAND);
    } 
    else
      cursor(ARROW);
    if(mousePressed)
    {
     
      if(n==5)
      {
        //key
        println("WINNER");
        ke=true;
        
      }
      else
      {
        bo=true;
        //bomb 

      }
      
  }
  if(bo==true)
      {

        bmove+=3;//bomb walking 
        if(bmove%16==0)
        {
          //b=!b;
        if(b==0)
          b=1;
        else if(b==1)
          b=0;
        }
        
       image(bomb[b],bmove,500,100,100);
        //image(bomb[b],0,height-bomb[b].height,50,50);
        if(bmove>=width)//resets all values when the bomb reaches the end
        {
          if(p==0)
          {
            oldtime=millis();
          }
          newtime=millis();
          p++;
          //movie:
          rect(0,0,width,height);
            //tint(255, 20);
            cursor(WAIT);
            image(explosion, 0, 0,800,600);
           
           
            
            if(newtime-oldtime>=5000)
            {
              i=0;
              bo=false;
              bmove=0;
              xjoey=0;
              cursor(ARROW);
              p=0;
            }
            

        }

      }
  
    }
  if(ke==true)
  {
    image(lockerkey,width/2-250,height/2-50,500,100);
    if(p==0)
    {
    oldtime=millis();
    }
    p++;
    newtime=millis();
    if(newtime-oldtime>=1000)
    {
      cursor(HAND);
    
      if(mousePressed)
      {
       i=2; //this is the next background
       //I STILL NEED THIS 
       //Gerstein's room
       ke=false;
       p=0;
      }
    }
  }
  if(i==2)
  {
    image(joeyChar,xjoey-50,yjoey-50,100,100);
    cursor(ARROW);
    
    if(p==0)
    {
    oldtime=millis();
    }
    p++;
    newtime=millis();
    if(newtime-oldtime>=5000)
    {
      q++;
      p=0;
    }
    if(q<=2)
    {
      xjoey=100;
      yjoey=500;
      image(speech[q],0,0);
    }
    else
    {
    }
      
    
   // background(0);
    //image(techClassroom,0,0,800,600);
  }

  println("X"+mouseX);
  println("Y"+mouseY);

}

//movie:
void movieEvent(Movie m)
{
  m.read();
}
