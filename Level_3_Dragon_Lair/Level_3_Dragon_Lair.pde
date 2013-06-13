PImage dragonlair, ukulele, joeychar, mermaid, crown, pile, dragonhead;
float xjoey = -50;
float yjoey;
boolean holdUK;
float xUK = 290;
float yUK = 200;
float xmer = 200;
float ymer = -400;
float xcrown = 490;
float ycrown = -100;
float gravy = 0.1;
float xhead = 510;
float yhead = 180;

void setup()
{
  size(800,600);
  dragonlair = loadImage("Gold Pile.jpg");
  ukulele = loadImage("Ukulele.png");
  joeychar = loadImage("joey.char.png");
  mermaid = loadImage("Landed Mermaid.png");
  crown = loadImage("Crown Color.png");
  dragonhead = loadImage("Happy Dragon Done.png");
  pile = loadImage("Gold Bit.png");
  yjoey = height-150;
}

void draw()
{
  background(dragonlair);
  image(joeychar,xjoey,yjoey,100,100);
  image(ukulele,xUK,yUK,150,150);
  image(mermaid,xmer,ymer,400,400);
  image(crown,xcrown,ycrown);
  image(dragonhead,xhead,yhead);
  image(pile,0,0,width,height);
  //boolean for holding ukulele and ukulele moving with Joey
  if(xjoey == xUK)
  {
    holdUK = true; 
  }
  if(holdUK)
  {
    xUK = xjoey;
    yUK = yjoey;
  }
  
  //when Joey reaches top of hill
  if(xjoey>=476 || yjoey<=69.19998)
  {
    //movement: first crown falls, then mermaid falls
    //then mermaid slides, then dragon pops out
    if(ycrown<59)
    {
      ycrown+=3;
    }
    else if(ycrown>=59)
    {
      if(ymer<100)
      {
        ymer+=8;
      }
      else if(ymer>=100)
      {
        if(xmer>16 || ymer<316)
        {
          ymer = xmer*-1+300;
          xmer-=2;
        }
        else if(xmer<=16 && xhead<610)
        {
          yhead--;
          xhead++;
        }
      }
    }
  }
  else
  {
    yjoey = xjoey*-.8+height-150;
    movejoey();
  }
}

void movejoey()
{
  if(keyPressed)
  {
    if(keyCode == LEFT)
    {
      xjoey-=2;
    }
    if(keyCode == RIGHT)
    {
      xjoey+=2;
    }
  }
}
