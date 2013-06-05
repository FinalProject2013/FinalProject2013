PImage joeychar, ring, bikinibottom;
float xjoey, yjoey;
float joeyimagesize=50;
int p=0;

void setup() {
  size(800, 600);
  joeychar=loadImage("joey.char.png");
  ring=loadImage("ring.png");
  bikinibottom=loadImage("bikini bottom.jpg");
}

void draw() {
  image(bikinibottom, 0, 0, 800, 600);
  image(joeychar, xjoey, yjoey, joeyimagesize, joeyimagesize);
  if (p==0)
  {
    xjoey=2;
    p++;
  }
  if (yjoey<340) {
    yjoey++;
  }
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
  joeyimagesize=map(xjoey, 0, width, 25, 100);
  if(yjoey>=340){
  yjoey=xjoey*.29586+340;
  }
  println(mouseX);
  println(mouseY);
  if (xjoey>=width)
  {
    p=0;
  }
}

//2,340
//678,540

