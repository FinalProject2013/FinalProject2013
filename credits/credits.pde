String credits[]= new String[10];
int ycredits=900;
PImage me;
void setup(){
  size(800,600);
  credits[0]="THE ADVENTURES OF JOEY © 2013";
  credits[1]="Head Programmer          Weronika Zamlynny";
  credits[2]="Project Manager          Stephanie Wong";
  credits[3]="Graphics/UI Designer     Joey Alamo";
  credits[4]="Evil Mermaid             Weronika Zamlynny";
  credits[5]="Doctor Who-Obsessed Dragon    Stephanie Wong";
  credits[6]="Joey Alamo               Joey Alamo";
  credits[7]="Guest Apperance:         Ms.Gerstein";
  credits[8]="Sorry for wasting your life";
  credits[9]="No refunds";
  
  me=loadImage("me.png");
}
void draw(){

  if(ycredits>=-800)
  {
    ycredits--;
  }
  background(34, 188, 242);
  textSize(30);
  for(int j=0;j<credits.length;j++){
    text(credits[j],50,ycredits+(100*j),750,100);
  }
  if(ycredits<=-800){
   image(me,0,400); 
  }
}
