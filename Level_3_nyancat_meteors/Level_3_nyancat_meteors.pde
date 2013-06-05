ArrayList nyancat = new ArrayList();
PImage meteor;
PImage joeychar;
PImage field;
boolean start = true;
float xjoey = -50;
float yjoey;
boolean check;

void setup() {
  size(800,600);
  imageMode(CENTER);
  meteor = loadImage("Nyan Nyan Cat.png");
  joeychar = loadImage("joey.char.png");
  field = loadImage("Night Field.jpg");
  nyancat.add(new Meteor());
  yjoey = height-80;
}

void draw() {
  background(field);
  if(frameCount%25==0) {
    nyancat.add(new Meteor());
  }
  for(int i=nyancat.size()-1; i>0; i--) {
    Meteor cat = (Meteor)nyancat.get(i);
    cat.display();
    cat.move();
    if(dist(xjoey,yjoey,cat.x,cat.y)<50+cat.diam/2) {
      xjoey = -50;
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
  image(joeychar,xjoey,yjoey,100,100);
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
} 
  

class Meteor {
  float x;
  float y;
  float diam = random(50,60);
  float ySpeed = 1;
  float xSpeed;
  float grav = 0.1;
  float life;
  
  Meteor() {
    x = random(width);
    xSpeed = random(-3,3);
    life = 200;
    y = -diam;
  }
  
  void display() {
    image(meteor,x,y,diam,diam);
  }
  
  void move() {
    x+=xSpeed;
    y+=ySpeed;
    ySpeed+=grav;
    life--;
  }
}
