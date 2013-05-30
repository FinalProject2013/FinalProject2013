
//PImage Speech []= new PImage [2];
//PImage techClassroom;
//void setup(){
//  size(800,600);
//  Speech[0]=loadImage("Speech1!.png");
//  Speech[1]=loadImage("Speech2!.png");
//  Speech[2]=loadImage("Speech3!.png");
//  techClassroom=loadImage("techClassroom.jpeg");
//}
//
//void draw(){
//  image(techClassroom,0,0,800,600);
//  
//   
//}

PImage escalator;
PImage joeyChar;
PImage blackHole;
float xjoey, yjoey;
void setup(){
  size(800,600);
  escalator=loadImage("escalator.jpg");
  joeyChar=loadImage("joey.char.png");
  blackHole=loadImage("blackHole.png");
}
void draw(){
  image(escalator,0,0,800,600);
//  println(mouseX);
//  println(mouseY);
  
  yjoey=(2.318)*xjoey+50;
  xjoey++;
  image(blackHole,330,500,300,200);
  image(joeyChar,xjoey-50+175,yjoey-50,100,100);
  
}
//105 42
//344 596
//
//554 239
