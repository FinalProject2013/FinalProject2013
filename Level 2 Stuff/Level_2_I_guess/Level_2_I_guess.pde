PImage joeychar, ring, bikinibottom, goolagoon;
float xjoey, yjoey;
float joeyimagesize=50;
int p=0;
boolean nextImage=false;
void setup() {
  size(800, 600);
  joeychar=loadImage("joey.char.png");
  ring=loadImage("ring.png");
  bikinibottom=loadImage("bikini bottom.jpg");
  goolagoon=loadImage("goo lagoon.jpg");
}

void draw() {
  if (nextImage==false) {
    image(bikinibottom, 0, 0, 800, 600);
    if (p==0)
    {
      xjoey=2;
      p++;
    }
    if (yjoey<340) {
      yjoey+=3;
    }

    joeyimagesize=map(xjoey, 0, width, 25, 100);
    if (yjoey>=340) {
      yjoey=xjoey*.29586+340;
    }
    if (xjoey>=width)
    {
      nextImage=true;
    }
  }
  if (nextImage) {
    image(goolagoon, 0, 0, 800, 600);
    xjoey=50;
    yjoey=440;
  }
  image(joeychar, xjoey, yjoey, joeyimagesize, joeyimagesize);
  if (keyPressed)
  {
    if (keyCode==LEFT)
    {
      xjoey-=3;
    }
    if (keyCode==RIGHT)
    {
      xjoey+=3;
      //joeyimagesize++;
    }
  }
}

//2,340
//678,540

