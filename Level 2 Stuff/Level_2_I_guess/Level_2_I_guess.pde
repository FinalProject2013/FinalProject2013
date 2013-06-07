PImage joeychar, ring, bikinibottom, goolagoon, wermermaid;
Mermaid [] mermaids = new Mermaid [3];
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
  wermermaid=loadImage("Mermaid Weronika Final.png");
  
  for(int i=0;i<mermaids.length;i++)
  {
    mermaids[i]=new Mermaid();
  }
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
    for (int i=0; i<mermaids.length; i++) {
      mermaids[i].display();
      mermaids[i].bounce();
      if(dist(xjoey+(joeyimagesize/2),yjoey+(joeyimagesize/2),mermaids[i].x+(mermaids[i].diam/2),mermaids[i].y+(mermaids[i].diam/2))<=(joeyimagesize/2)+(mermaids[i].diam/2)) {
      xjoey = 0;
      }
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
    }
  }
}



