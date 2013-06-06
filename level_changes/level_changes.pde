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

void setup() {
  size(800, 600);
  textAlign(CENTER);
  c1=color(82, 167, 240);
  c2=color(255, 100, 240);
  star=loadImage("star.png");
  ufo=loadImage("ufo.png");
  stars.add(new Star());
   minim = new Minim(this);
   rugrats=minim.loadFile("RugratsBumBum!.mp3");
   rugrats.play();
}

void draw() {

  //background(255);
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
  s="Now to Level 2!";
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
}

class Star {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float size;
  float life;

  Star() {
    x=-size;
    size=random(100, 350);
    life=100;
    y=random(0, height);
    xSpeed=7;
    ySpeed=-4;
  }

  void display() {
    image(star, x, y, size, size);
  }
  void shoot() {
    x+=xSpeed;
    y+=ySpeed;
    life--;
  }
}
