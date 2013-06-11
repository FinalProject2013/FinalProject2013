PImage bg, dragoonthegreat, dvdpic, joeychar, frebll;
Bomb[] fireballs = new Bomb[500];
ArrayList dots = new ArrayList();
float dx = 400;
float dy = -100;
float dspeed = 1;
float xjoey = -50;
float yjoey;
int currentTime, oldTime; //affects Doctor Who DVD
int ftimecurrent, ftimeold; //affects fireballs falling from sky class Bomb
int flametimecurrent, flametimeold;
int index = 0;
int health = 100;
boolean spewfire = false;
boolean holdDVD = false;
Doctor dvd;

void setup()
{
  size(800,600);
  bg = loadImage("Cave.png");
  dragoonthegreat = loadImage("Final Freaking Dragon.png");
  joeychar = loadImage("joey.char.png");
  dvdpic = loadImage("Doctor Who DVD Small.jpg");
  frebll = loadImage("Falling Fireball.png");
  yjoey = height-130;
  dvd = new Doctor();
  for(int i=0; i<=index;i++)
  {
    fireballs[i] = new Bomb();
  }
}

void draw()
{
  background(bg);
  currentTime = millis();
  ftimecurrent = millis();
  flametimecurrent = millis();
  
  image(dragoonthegreat,dx,dy);
  dx+=dspeed;
  if(dx>450 || dx<350)
  {
    dspeed = -dspeed;
  }
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

  if(currentTime-oldTime>15000)
  {
    oldTime=currentTime;
    dvd = new Doctor();
  }
  dvd.fall();
  if(dist(xjoey,yjoey,dvd.x,dvd.y)<=50+dvd.h)
  {
    dvd.x = xjoey;
    dvd.y = yjoey-25;
    holdDVD = true;
  }
  if(xjoey>dx)
  {
    if(holdDVD)
    {
      //GO TO NEXT SCENE
    }
    else if(holdDVD==false)
    {
      xjoey = -50;
    }
  }
  
  for(int i=0; i<=index; i++)
  {
    fireballs[i].show();
    fireballs[i].move();
    fireballs[i].burn();
  }
  if(ftimecurrent-ftimeold>2000)
  {
    ftimeold=ftimecurrent;
    fireballs[index+1] = new Bomb();
    index++;
  }
  
  if(flametimecurrent-flametimeold>3000)
  {
    flametimeold=flametimecurrent;
    spewfire=!spewfire;
  }
    
  if(spewfire)
  {
    if(frameCount%3==0)
    {
      dots.add(new Fire());
    }
  }
  for(int i=dots.size()-1; i>0; i--)
  {
    Fire d = (Fire)dots.get(i);
    d.display();
    d.move();
    if(dist(xjoey,yjoey,d.x,d.y)<d.radius+50)
    {
      health-=0.00001;
      if(health==0)
      {
        xjoey=-50;
        health=100;
      }
    }
    if(d.life==0)
    {
      dots.remove(i);
    }
  }
  stroke(255,0,0);
  textSize(20);
  text("Health: " + health + "%",50,50);
}
