
PImage Speech []= new PImage [2];
PImage techClassroom;
void setup(){
  size(800,600);
  Speech[0]=loadImage("Speech1!.png");
  Speech[1]=loadImage("Speech2!.png");
  Speech[2]=loadImage("Speech3!.png");
  techClassroom=loadImage("techClassroom.jpeg");
}

void draw(){
  image(techClassroom,0,0,800,600);
  
   
}
