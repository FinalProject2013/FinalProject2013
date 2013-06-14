PImage cliff, joeychar, boat, steph, minidragon;
PImage d1, d2, d3, d4, d5, d6;
float joeyimagesize = 50;
float xboat;
float yboat;
float boatwidth = joeyimagesize;
float boatheight = joeyimagesize/3;
float xjoey = 25/2;
float yjoey = 200;

void setup()
{
  size(800,600);
  cliff = loadImage("Cliff.jpg");
  joeychar = loadImage("joey.char.png");
  boat = loadImage("Boat Color.png");
  steph = loadImage("Stephanie Head.png");
  minidragon = loadImage("Final Freaking Dragon.png");
  d1 = loadImage("Dialogue 1.png");
  d2 = loadImage("Dialogue 2.png");
  d3 = loadImage("Dialogue 3.png");
  d4 = loadImage("Dialogue 4.png");
  d5 = loadImage("Dialogue 5.png");
  d6 = loadImage("Dialogue 6.png");
}

void draw()
{
  background(cliff);
  image(joeychar,xjoey,yjoey,joeyimagesize,joeyimagesize);
  image(boat,xboat,yboat,boatwidth,boatheight);
  image(steph,440,500,60,60);
  if(xjoey<403.90625 || yboat<442.1875)
  {
    xboat = xjoey-joeyimagesize/4;
    yboat = yjoey+joeyimagesize/2;
  }
  if(xboat>=403.90625 || yboat>=442.1875)
  {
    xboat = 403.90625;
    yboat = 442.1875;
  }
  //gives placement of boat, first moving then still
  
  //changes size of boat and joey
  joeyimagesize = map(xjoey,0,width,25,100);
  boatwidth = map(xboat,0,width,50,150);
  boatheight = map(yboat,0,width,10,60);
  yjoey = xjoey*.5+200;
  movejoey();
  if(xjoey>=472 || yjoey>=436)
  {
    //GO TO NEXT SCENE BECAUSE JOEY IS AT THE CAVE MOUTH
  }
  
  if(xjoey>=388 && yjoey>=394)
  {
    println("YAY!");
    //DIALOGUE WITH STEPHANIE
    //idk how this works but when joey reaches this location
    //we should talk then I should morph into a dragon for like,
    //three seconds and then vanish and then joey can move
  }
  
  //here is stuff that will happen with the timer, to help with placement
  /*image(minidragon,400,350);
  image(d1,200,200);
  image(d2,450,300);
  image(d3,200,200);
  image(d4,450,300);
  image(d5,200,200);
  image(d6,450,300);*/
}

void movejoey()
{
  if (keyPressed)
  {
    if (keyCode==LEFT)
    {
      xjoey-=2;
    }
    if (keyCode==RIGHT)
    {
      xjoey+=2;
    }
  }
}
