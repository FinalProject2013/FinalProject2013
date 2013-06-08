float xjoey,yjoey;
float yjoeyspeed;
float yjoeychange;
float easing;

int i=0;//level start CHANGE IT BACK 
int n;
int b;
boolean bo=false;
boolean ke=false;
int bmove=0;

int xspeech=0;

//for the video:
import processing.video.*;
Movie explosion;
int newtime=0;

int oldtime=0;
int p=0;


PImage images[]=new PImage[7];//backgrounds
PImage bomb[]=new PImage[2];//bombs
PImage lockerkey;
PImage joeyChar;


PImage speech []= new PImage [3];//Speech bubbles 1
int q=0;

PImage blackHole;

//lvl 3
ArrayList nyancat = new ArrayList();
PImage meteor;
PImage joeychar;

boolean start = true;

boolean check;

//joeys screen changes
ArrayList stars= new ArrayList();

PImage star, ufo;
float xleveltext=0;
color c1, c2;
int ufox=width/2+100;
int ufoy=height;
float angle;

import ddf.minim.*;

Minim minim;
AudioPlayer rugrats;

boolean screenchange=true;
int lvl=1;

void setup()
{
  size(800,600);
  //images[0]=loadImage("c1.jpg");//blank 1
  images[0]=loadImage("0.jpg");//background 1
  images[1]=loadImage("1.jpg");//need lockers
  images[2]=loadImage("2.jpg");//gersteins
  images[3]=loadImage("3.jpg");  //escalator
  //lvl 2
  
  //images[5]=loadImage("4.jpg");//blank 2
  //images[6]=loadImage("4.jpg");
  //images[7]=loadImage("5.jpg");
  //lvl 3
  images[6]=loadImage("6.jpg");//field//lv 3
  
  bomb[0]=loadImage("bomb1.png");
  bomb[1]=loadImage("bomb2.png");
  joeyChar=loadImage("joey.char.png");
  lockerkey=loadImage("lockerkey.png");
  
  //video:
  explosion = new Movie(this, "SpongebobExplosion.mov");
//  explosion.loop();
  
  speech[0]=loadImage("Speech1!.png");
  speech[1]=loadImage("Speech2!.png");
  speech[2]=loadImage("Speech3!.png");


  blackHole=loadImage("blackHole.png");
  
  
  
  /// lvl 3 STEPH's STUFF
  meteor = loadImage("Nyan Nyan Cat.png");
  joeychar = loadImage("joey.char.png");

  nyancat.add(new Meteor());
  //yjoey = height-80;
  
  
    textAlign(CENTER);
  c1=color(82, 167, 240);
  c2=color(255, 100, 240);
  star=loadImage("star.png");
  ufo=loadImage("ufo.png");
  stars.add(new Star());
   minim = new Minim(this);
   rugrats=minim.loadFile("RugratsBumBum!.mp3");
   //rugrats.play();
  
  
}
void draw()
{
  
      
    //joeys screen
    background(0);
  //  print(bo);
    image(images[i],0,0,800,600);
    point(xjoey,0);
    if(i==0)//anything that happens on the first image
    {
      /*if(screenchange)
  {
        for (int i = 0; i <= height; i++) {
      float inter = map(i, 0, height, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(0, i, width, i);
    }
  
  
    if (frameCount%35==0) {
      stars.add(new Star());
    }
  
    for (int i=stars.size()-1; i>0; i--) {
      Star star= (Star)stars.get(i);
      star.display();
      star.shoot();
      if (star.life<=0) {
        stars.remove(i);
      }
    }
    String s;
    s="Now to Level 1!";
    textSize(50);
    text(s, xleveltext, height/2);
    if (xleveltext<width/2) {
      xleveltext+=10;
    }
    if (xleveltext>=width/2) {
      angle++; 
      image(ufo, ufox, ufoy);
      ufox+=sin(radians(angle))*-5;
      ufoy-=cos(radians(angle))*-5;
    }
    if(mousePressed)
    {
      screenchange=!screenchange;
    }
  }
    //end joey's screen change*/
    Screen();
    
    if(screenchange==false)
    {
    moveJoey();
    explosion.stop();
    //ellipse(xjoey,yjoey,50,50);
    image(joeyChar,xjoey-50,yjoey-50,100,100);
    yjoey=(-.4732)*xjoey+620;//an eqation based off of two points
    
    if(xjoey>=626)
    {
      i++;
      //n=int(random(0,6));
      //FOR DEBUGGING PURPOSES ALWAYS WIN
      n=5;//win
      //n=4;//lose
    }
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
            explosion.play();
              //explosion.loop();
            
            image(explosion, 0, 0,800,600);
           
            if(newtime-oldtime>=5000)
            {
              i=0;
              bo=false;
              bmove=0;
              xjoey=0;
              cursor(ARROW);
              p=0;
              explosion.stop();
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
      if(q==1)
      {
        xspeech=300;
      }
      else
      {
        xspeech=0;
      }
      image(speech[q],xspeech,0);
      
    }
    else
    {
     // yjoey=500;
      moveJoey();
    }
   if(xjoey>=width-50)
    {
      i=3;
      xjoey=100;
    }  
  }
  if(i==3)
  {
    yjoey=(2.318)*xjoey+50;
    xjoey++;
    image(blackHole,330,500,300,200);
    image(joeyChar,xjoey-50+175,yjoey-50,100,100);
    if(yjoey>=500)
    {
      i=6;
      screenchange=true;
    }
  }
  
  //lvl 2
  if(i==4)
  {
  }
  if(i==5)
  {
  }
  
  //vl 3
  if(i==6)//NEXT LEVEL //or level 3 cuz were totes going out of order
  {
    Screen();
    if(screenchange==false)
    {
    ///MAKE SURE TO EDIT IT FOR IMAGE MODE CENTER CUZ YYEEAAA
    if(q==0)
    {
      yjoey=height-80;
      xjoey=50;
      q++;
    }

  if(frameCount%25==0) {
    nyancat.add(new Meteor());
  }
  for(int i=nyancat.size()-1; i>0; i--) {
    Meteor cat = (Meteor)nyancat.get(i);
    cat.display();
    cat.move();
    if(dist(xjoey,yjoey,cat.x+(cat.diam/2),cat.y+(cat.diam/2))<50+cat.diam/2) {
      xjoey = 50;
      nyancat.remove(i);
      for(int j=nyancat.size()-1; i>0; i--) {
        Meteor c = (Meteor)nyancat.get(j);
        c.y = 0;
      }
    }
    if(cat.life==0) {
      nyancat.remove(i);
    }
  }
  image(joeychar,xjoey-50,yjoey-50,100,100);
  if(keyPressed) {
    if(key==CODED) {
      if(keyCode==LEFT) {
        xjoey+=-2;
      }
      if(keyCode==RIGHT) {
        xjoey+=2;
      }
    }
  }
    
    if(xjoey>=width)
    {
      q=0;
      i++;
    }
  }
  }
  println("X"+mouseX);
  println("Y"+mouseY);

}

//movie:
void movieEvent(Movie m)
{
  m.read();
}

