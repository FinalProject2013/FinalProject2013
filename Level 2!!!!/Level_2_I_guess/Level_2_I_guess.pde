PImage joeychar, bikinibottom, goolagoon, volcano, ringbubble, emptybubble, wermermaid;
PImage ring, volcanospeechwin, volcanospeechlose;
Mermaid [] mermaids = new Mermaid [3];
Mermaid [] bubbles=new Mermaid[30];
Mermaid [] floatingring =new Mermaid[1];
float xjoey, yjoey;
float joeyimagesize=50;
int p=0;
boolean nextImage=false;
boolean bubble=false;
boolean ringholding=false;
boolean ringappearing=true;
float ringx, ringy;

void setup() {
  size(800, 600);
  joeychar=loadImage("joey.char.png");
  ring=loadImage("ring.png");
  bikinibottom=loadImage("bikini bottom.jpg");
  goolagoon=loadImage("goo lagoon.jpg");
  volcano=loadImage("funny volcano gif.gif");
  ringbubble=loadImage("bubble with ring.png");
  emptybubble=loadImage("bubble.png");
  volcanospeechwin=loadImage("volcanospeechwin.png");
  volcanospeechlose=loadImage("volcanospeechlose.png");
  wermermaid=loadImage("Mermaid Weronika Final.png");

  for (int i=0;i<mermaids.length;i++)
  {
    mermaids[i]=new Mermaid(wermermaid);
  }
  for (int i=0;i<bubbles.length;i++)
  {
    bubbles[i]=new Mermaid(emptybubble, random(30, 60));
  }
  for (int i=0;i<floatingring.length;i++) {
    floatingring[i]=new Mermaid(ringbubble, 40);
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
      moveJoey();
    }
    if (xjoey>=width)
    {
      nextImage=true;
      xjoey=50;
      yjoey=440;
    }
    if (ringappearing) {
      for (int i=0;i<floatingring.length;i++) {
        floatingring[i].display();
        floatingring[i].bounce();
        if (dist(xjoey+(joeyimagesize/2), yjoey+(joeyimagesize/2), floatingring[i].x+(floatingring[i].diam/2), floatingring[i].y+(floatingring[i].diam/2))<=(joeyimagesize/2)+(floatingring[i].diam/2)) {
          ringholding=true;
          ringappearing=false;
        }
      }
    }

    for (int i=0; i<bubbles.length; i++) {
      bubbles[i].display();
      bubbles[i].bounce();
    }
    for (int i=0; i<mermaids.length; i++) {
      mermaids[i].display();
      mermaids[i].bounce();
      if (dist(xjoey+(joeyimagesize/2), yjoey+(joeyimagesize/2), mermaids[i].x+(mermaids[i].diam/2), mermaids[i].y+(mermaids[i].diam/2))<=(joeyimagesize/2)+(mermaids[i].diam/2)) {
        xjoey = 0;
        ringholding=false;
        ringappearing=true;
      }
    }
  }

  if (nextImage) {

    image(goolagoon, 0, 0, 800, 600);
    image(volcano, 650, 0, 150, 200);

    moveJoey();
    if (xjoey>width) {
      yjoey=365;
      joeyimagesize=75;
      xjoey=width-joeyimagesize;
    }
    if (joeyimagesize==75) {
      yjoey=-.3217*xjoey+580;
    }
    if (joeyimagesize==75&&xjoey<=591) {
      yjoey=386;
    }
    if(joeyimagesize==75&&(xjoey+joeyimagesize>=width)){
      xjoey=width-joeyimagesize;
    }
    if (joeyimagesize==75&&xjoey==505) {
      joeyimagesize=50;
      xjoey=440;
    }
    if (joeyimagesize==50) {
      yjoey=-xjoey+815;
      if (xjoey<440) {
        xjoey=440;
      }
    }
    if (xjoey>=627&&joeyimagesize==50) {
      xjoey=627;
      textSize(50);
      if (ringholding) {
        image(volcanospeechwin,width/2,50,250,200);
      }
      if (ringholding==false) {
       image(volcanospeechlose,width/2,50,250,200);
        if (mousePressed) {
          nextImage=false;
          xjoey=0;
          yjoey=0;
        }
      }
    }
  }
  image(joeychar, xjoey, yjoey, joeyimagesize, joeyimagesize);
  if (ringholding) {
    image(ring, xjoey+joeyimagesize/1.5, yjoey, joeyimagesize/2, joeyimagesize/2);
  }
}

void moveJoey()
{
  if (keyPressed)
  {
    if (keyCode==UP)
    {
      //  yjoeyspeed=-10;

      //add a jump maybe
      //yjoey-=10;
      //THIS IS NOT DONE KTHXBAI
    }
    //   easing=.1;
    //  yjoeyspeed=yjoeyspeed*easing;

    //    yjoey+=yjoeyspeed;
    //     if(keyCode==DOWN)
    //     {
    //       yjoey+=10;
    //      }
    if (keyCode==LEFT)
    {
      xjoey-=5;
    }
    if (keyCode==RIGHT)
    {
      xjoey+=5;
    }
  }
}

