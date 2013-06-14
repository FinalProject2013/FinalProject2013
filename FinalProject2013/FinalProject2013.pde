PImage theadventuresof, mgmlogo;
boolean startScreen=true;
//boolean startScreen=false;//FOR DEBUGGING
boolean instructions=false;
int c=-400;
int d=-400;
int e=-600;
//float xjoey, yjoey;
float yjoeyspeed;
float yjoeychange;

float gravity=.5;

int i=0;//level start CHANGE IT BACK 
int n;
int b;
boolean bo=false;
boolean ke=false;
int bmove=0;

int xspeech=0;

//for the video:
import processing.video.*;
Movie explosion;
int newtime=0;

int oldtime=0;
//int p=0;


PImage images[]=new PImage[14];//backgrounds
PImage bomb[]=new PImage[2];//bombs
PImage lockerkey;
PImage joeyChar;


PImage speech []= new PImage [3];//Speech bubbles 1
PImage da[]=new PImage[6];//speech 2
int speech2,speech2x,speech2y;
int q=0;


PImage blackHole;

//lvl 3
ArrayList nyancat = new ArrayList();
PImage meteor;
//victory
PImage dragonlair, ukulele, mermaid, crown, pile, dragonhead;
boolean holdUK;
float xUK = 290;
float yUK = 200;
float xmer = 200;
float ymer = -400;
float xcrown = 490;
float ycrown = -100;
float gravy = 0.1;
float xhead = 510;
float yhead = 180;
//PImage joeychar;

boolean start = true;

boolean check;

//joeys screen changes
ArrayList stars= new ArrayList();

PImage star, ufo;
float xleveltext=0;
color c1, c2;
int ufox=width/2+100;
int ufoy=height;
float angle;

import ddf.minim.*;

Minim minim;
AudioPlayer rugrats, nyancatsong, tinytim, ragtime, funsong, darkmusic;

boolean screenchange=true;
int lvl=1;




//level 2:
PImage joeychar, bikinibottom, goolagoon, volcano, ringbubble, emptybubble, wermermaid;
PImage ring, volcanospeechwin, volcanospeechlose;
BouncingStuff [] mermaids = new BouncingStuff [3];
BouncingStuff [] bubbles=new BouncingStuff[30];
BouncingStuff [] floatingring =new BouncingStuff[1];
//float joeyimagesize=50;
int p=0;
boolean nextImage=false;
boolean bubble=false;
boolean ringholding=false;
boolean ringappearing=true;
float ringx, ringy;
//lvl 3 beach
PImage boat;
float xboat;
//cliff
PImage steph, minidragon;
PImage d1, d2, d3, d4, d5, d6;
float joeyimagesize = 50;
float yboat;
float boatwidth = joeyimagesize;
float boatheight = joeyimagesize/3;
//fight
PImage dragoonthegreat, dvdpic,  frebll;
Bomb[] fireballs = new Bomb[500];
ArrayList dots = new ArrayList();
float dx = 400;
float dy = -100;
float dspeed = 1;
float xjoey = -50;
float yjoey;
int currentTime, oldTime; //affects Doctor Who DVD
int ftimecurrent, ftimeold; //affects fireballs falling from sky class Bomb
int flametimecurrent, flametimeold;
int index = 0;
int health = 100;
boolean spewfire = false;
boolean holdDVD = false;
Doctor dvd;
//fly away dragon
//PImage bg;
PImage flydrag;
//PImage joeychar;
//float xjoey = 400;
//float yjoey;
float wdragon;
float hdragon;
float winitial = 209;
float hinitial = 174;
float stephs_i=1;

//credits
String credits[]= new String[11];
int ycredits=500;
PImage me, lolsteph, lolweronika;

void setup()
{
  size(800, 600);
  theadventuresof=loadImage("theadventuresof.png");
  mgmlogo=loadImage("mgmlogo.png");
  images[0]=loadImage("0.jpg");//background 1
  images[1]=loadImage("1.jpg");//need lockers
  images[2]=loadImage("2.jpg");//gersteins
  images[3]=loadImage("3.jpg");  //escalator
  //lvl 2
  images[4]=loadImage("4.jpg");
  images[5]=loadImage("5.jpg");
  //lvl 3
  images[6]=loadImage("6.jpg");//field//lv 3
   images[7]=loadImage("7.jpg");//beach  
  //8cave
  images[8]=loadImage("Cliff.jpg");
  //9dragon
  images[9]=loadImage("Cave.png");
  //10dragon spaz
  images[10]=loadImage("10.png");
  images[11]=loadImage("11.png");//cave fly away
  //12victory
  images[12]=loadImage("12.jpg");
//13credits?
  images[13]=loadImage("0.jpg");//whatever for now

  bomb[0]=loadImage("bomb1.png");
  bomb[1]=loadImage("bomb2.png");
  joeyChar=loadImage("joey.char.png");
  lockerkey=loadImage("lockerkey.png");

  //video:
  explosion = new Movie(this, "SpongebobExplosion.mov");
  //  explosion.loop();

  speech[0]=loadImage("Speech1!.png");
  speech[1]=loadImage("Speech2!.png");
  speech[2]=loadImage("Speech3!.png");


  blackHole=loadImage("blackHole.png");



  /// lvl 3 STEPH's STUFF
  meteor = loadImage("Nyan Nyan Cat.png");
  joeychar = loadImage("joey.char.png");

  nyancat.add(new Meteor());
  //yjoey = height-80;


textAlign(CENTER);
  c1=color(82, 167, 240);
  c2=color(255, 100, 240);
  star=loadImage("star.png");
  ufo=loadImage("ufo.png");
  stars.add(new Star());
  minim = new Minim(this);
  rugrats=minim.loadFile("RugratsBumBum!.mp3");
  nyancatsong=minim.loadFile("Nyan Cat.mp3");
  tinytim=minim.loadFile("Living In The Sunlight, Loving In The Moonlight.mp3");
  ragtime=minim.loadFile("Don't Jazz Me - James Scott.mp3");
  funsong=minim.loadFile("funsong.mp3");
  darkmusic=minim.loadFile("TheNightmare.mp3");
  // darkmusic=minim.loadFile("The Nightmare.mp3");
  //rugrats.play();


  //lvl 2:
  //joeychar=loadImage("joey.char.png");
  ring=loadImage("ring.png");
  //bikinibottom=loadImage("bikini bottom.jpg");
  //goolagoon=loadImage("goo lagoon.jpg");
  volcano=loadImage("funny volcano gif.gif");
  ringbubble=loadImage("bubble with ring.png");
  emptybubble=loadImage("bubble.png");
  volcanospeechwin=loadImage("volcanospeechwin.png");
  volcanospeechlose=loadImage("volcanospeechlose.png");
  wermermaid=loadImage("Mermaid Weronika Final.png");

  for (int i=0;i<mermaids.length;i++)
  {
    mermaids[i]=new BouncingStuff(wermermaid);
  }
  for (int i=0;i<bubbles.length;i++)
  {
    bubbles[i]=new BouncingStuff(emptybubble, random(30, 60));
  }
  for (int i=0;i<floatingring.length;i++) {
    floatingring[i]=new BouncingStuff(ringbubble, 40);
  }
   boat = loadImage("Boat Color.png");
   xboat = width/2;
   //cliff
     steph = loadImage("Stephanie Head.png");
  minidragon = loadImage("Final Freaking Dragon.png");
  da[0] = loadImage("Dialogue 1.png");
  da[1] = loadImage("Dialogue 2.png");
  da[2] = loadImage("Dialogue 3.png");
  da[3] = loadImage("Dialogue 4.png");
  da[4] = loadImage("Dialogue 5.png");
  da[5] = loadImage("Dialogue 6.png");
  //fight
    //bg = loadImage("Cave.png");
  dragoonthegreat = loadImage("Final Freaking Dragon.png");
 // joeychar = loadImage("joey.char.png");
  dvdpic = loadImage("Doctor Who DVD Small.jpg");
  frebll = loadImage("Falling Fireball.png");
 // yjoey = height-130;
  dvd = new Doctor();
  for(int i=0; i<=index;i++)
  {
    fireballs[i] = new Bomb();
  }
   //fly away dragon
    flydrag = loadImage("Flying Dragon Color.png");
    
    //victory
     // dragonlair = loadImage("Gold Pile.jpg");
  ukulele = loadImage("Ukulele.png");
 // joeychar = loadImage("joey.char.png");
  mermaid = loadImage("Landed Mermaid.png");
  crown = loadImage("Crown Color.png");
  dragonhead = loadImage("Happy Dragon Done.png");
  pile = loadImage("Gold Bit.png");
 // yjoey = height-150;
    
    //credits
  credits[0]="THE ADVENTURES OF JOEY © 2013";
  credits[1]="Head Programmer          Weronika Zamlynny";
  credits[2]="Project Manager          Stephanie Wong";
  credits[3]="Graphics/UI Designer     Joey Alamo";
  credits[4]="Evil Mermaid             Weronika Zamlynny";
  credits[5]="Doctor Who-Obsessed Dragon    Stephanie Wong";
  credits[6]="Joey Alamo               Joey Alamo";
  credits[7]="Guest Apperance:         Ms.Gerstein";
  credits[8]="           ...";
  credits[9]="Sorry for wasting your life";
  credits[10]="No refunds";

  me=loadImage("me.png");
  lolsteph=loadImage("lolstephanie.png");
  lolweronika=loadImage("lolweronika.png");
}
void draw()
{
 music();
// darkmusic.play();
  
  if (startScreen) {
    
    if(!instructions){
   
    background(34, 188, 242);
    c+=8;
    if (c>=0) {
      c=0;
      d+=8;
      if (d>=0) {
        d=0;
        e+=8;
        if (e>=0) {
          e=0;
          fill(186, 85, 211);
          rect(570, 45, 180, 75);
          fill(255);
          textSize(50);
          text("PLAY", 660, 100);
        }
      }
    }
    image(theadventuresof, 80+c, 100, 430, 150);
    image(mgmlogo, 80, 225, 430+d, 200);
    textSize(75);
    fill(255, 255, 0);
    stroke(15);
    text("JOEY ALAMO", 295+e, 500);

if(mousePressed&&mouseX>=570&&mouseX<=750&&mouseY>=45&&mouseY<=120){
// startScreen=false;

 fill(255);
 instructions=true;
    }
  }
  if(instructions){
    background(0,150,150);
    String instructionstext= "Joey lost his ukulele! Oh No! In this game, guide him with the arrow keys to help him get it back!  ... Warning: This game may cause severe irration and includes exploding lockers, invisible obstacles, evil mermaids, demanding volcanoes, and a mega dragon.  Joey, Stephanie, and Weronika are not responsible for any brain damage caused while playing this game.... ";
    textSize(30);
   text(instructionstext,10,10,790,590);
   if(p==0){
     oldtime=millis();
   }
   p++;
   newtime=millis();
   if((newtime-oldtime>5000)){
     String clicktostartgame= "Click to Start!";
     text(clicktostartgame,100,500);
     if(mousePressed){
 instructions=!instructions;
 startScreen=!startScreen; 
 tinytim.pause();
 tinytim.cue(0);
 p=0;
     }
  }
  }
  }
  if (!startScreen) {  
    //joeys screen
    


    background(0);
    //  print(bo);
    image(images[i], 0, 0, 800, 600);
    point(xjoey, 0);
    if (i==0)//anything that happens on the first image
    {

      Screen();

      if (screenchange==false)
      {
        moveJoey();
        explosion.stop();
        //ellipse(xjoey,yjoey,50,50);
        image(joeyChar, xjoey-50, yjoey-50, 100, 100);
        yjoey=(-.4732)*xjoey+620;//an eqation based off of two points

        if (xjoey>=626)
        {
          i++;
          n=int(random(3, 6));
          //FOR DEBUGGING PURPOSES ALWAYS WIN
          //  n=5;//win
          //n=4;//lose
        }
      }
    }
if((i==0||i==1||i==2||i==3)&&!screenchange){
  ragtime.play();
  if(ragtime.position()>=ragtime.length()){
    ragtime.cue(0);
  }
}
if((i==4||i==5)&&!screenchange){
  funsong.play();
  if(funsong.position()>=funsong.length()){
    funsong.cue(0);
  }
}
    if (i==1)
    {
      if (mouseX>=50&&mouseX<=width-50&&mouseY>=50&&mouseY<=height-50)
      {
        cursor(HAND);
      } 
      else
        cursor(ARROW);
      if (mousePressed)
      {
        if (n==5)
        {
          //key
          println("WINNER");
          ke=true;
        }
        else
        {
          bo=true;
          //bomb
        }
      }
      if (bo==true)
      {

        bmove+=3;//bomb walking 
        if (bmove%16==0)
        {
          //b=!b;
          if (b==0)
            b=1;
          else if (b==1)
            b=0;
        }

        image(bomb[b], bmove, 500, 100, 100);
        //image(bomb[b],0,height-bomb[b].height,50,50);
        if (bmove>=width)//resets all values when the bomb reaches the end
        {
          if (p==0)
          {
            oldtime=millis();
          }
          newtime=millis();
          p++;
          //movie:
          rect(0, 0, width, height);
          //tint(255, 20);
          cursor(WAIT);
          explosion.play();
          //explosion.loop();

          image(explosion, 0, 0, 800, 600);

          if (newtime-oldtime>=5000)
          {
            i=0;
            bo=false;
            bmove=0;
            xjoey=0;
            cursor(ARROW);
            p=0;
            explosion.stop();
          }
        }
      }
    }
    if (ke==true)
    {
      image(lockerkey, width/2-250, height/2-50, 500, 100);
      if (p==0)
      {
        oldtime=millis();
      }
      p++;
      newtime=millis();
      if (newtime-oldtime>=1000)
      {
        cursor(HAND);
        String lockerkeywin= "You got the key! Click to continue to Ms.Gerstein's room!";
        text(lockerkeywin, 50, 50, 550, 250);

        if (mousePressed)
        {
          i=2; //this is the next background
          //Gerstein's room
          ke=false;
          p=0;
        }
      }
    }
    if (i==2)
    {
      image(joeyChar, xjoey-50, yjoey-50, 100, 100);
      cursor(ARROW);

      if (p==0)
      {
        oldtime=millis();
      }
      p++;
      newtime=millis();
      if (newtime-oldtime>=3000)
      {
        q++;
        p=0;
      }
      if (q<=2)
      {
        xjoey=100;
        yjoey=500;
        if (q==1)
        {
          xspeech=300;
        }
        else
        {
          xspeech=0;
        }
        image(speech[q], xspeech, 0);
      }
      else
      {
        // yjoey=500;
        moveJoey();
      }
      if (xjoey>=width-50)
      {
        i=3;
        q=0;
        xjoey=100;
      }  


      if (xjoey>=340&&xjoey<=600)
      {
        if (yjoey>=330&&yjoeyspeed<=0) {
          yjoey+=200;
        }
        if (yjoey>=330&&yjoeyspeed>0) {
          yjoeyspeed=0;
        }
      }
      //    if(yjoey>=400&&yjoeyspeed>0&&xjoey>=380&&xjoey<=455){
      //      
      //    }
      if (yjoey>=height+50)
      {
        xjoey=0;
      }
    }

    if (i==3)
    {
      if (q==0)
      {
        xjoey=0;
        q++;
      }
      yjoey=(2.318)*xjoey+50;
      xjoey++;
      image(blackHole, 330, 500, 300, 200);
      image(joeyChar, xjoey-50+175, yjoey-50, 100, 100);
      if (yjoey>=500)
      {
        i++;
        screenchange=true;
        ragtime.pause();
        ragtime.cue(0);
        q=0;
        p=0;
      }
    }

    //lvl 2
    if (i==4)
    {
      Screen();
      if (screenchange==false)
      {
        image(joeychar, xjoey, yjoey, joeyimagesize, joeyimagesize);
        if (ringholding) {
          image(ring, xjoey+joeyimagesize/1.5, yjoey, joeyimagesize/2, joeyimagesize/2);
        }
        //image(bikinibottom, 0, 0, 800, 600);
        if (p==0)
        {
          xjoey=2;
          yjoey=0;
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
          i++;
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
    }

    if (i==5)
    {
      image(joeychar, xjoey, yjoey, joeyimagesize, joeyimagesize);
      if (ringholding) {
        image(ring, xjoey+joeyimagesize/1.5, yjoey, joeyimagesize/2, joeyimagesize/2);
      }
      //image(goolagoon, 0, 0, 800, 600);
      image(volcano, 650, 0, 150, 200);

      moveJoey();

      if (xjoey>width) {
        yjoey=365;//i think this does nothing.
        joeyimagesize=75;
        xjoey=width-joeyimagesize;
      }
      if (joeyimagesize==75) {
        yjoey=-.3217*xjoey+580;
      }
      if (joeyimagesize==75&&xjoey<=591) {
        yjoey=386;
      }
      if (joeyimagesize==75&&(xjoey+joeyimagesize>=width)) {
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
          image(volcanospeechwin, width/2, 50, 250, 200);
          if (mousePressed)
          {
            i++;
            screenchange=true;
            funsong.pause();
            funsong.cue(0);
          }
        }
        if (ringholding==false) {
          image(volcanospeechlose, width/2, 50, 250, 200);
          if (mousePressed) {
            i--;
            xjoey=0;
            yjoey=0;
          }
        }
      }
    }

    //vl 3
    if (i==6)//NEXT LEVEL //or level 3 cuz were totes going out of order
    {

      Screen();
      if (screenchange==false)
      {
        nyancatsong.play();
        if(nyancatsong.position()>=nyancatsong.length()){
          nyancatsong.cue(0);
        }
       // nyancatsong.loop();
        ///MAKE SURE TO EDIT IT FOR IMAGE MODE CENTER CUZ YYEEAAA
        if (q==0)
        {
          yjoey=height-80;
          xjoey=50;
          q++;
        }

        if (frameCount%25==0) {
          nyancat.add(new Meteor());
        }
        for (int i=nyancat.size()-1; i>0; i--) {
          Meteor cat = (Meteor)nyancat.get(i);
          cat.display();
          cat.move();
          if (dist(xjoey, yjoey, cat.x+(cat.diam/2), cat.y+(cat.diam/2))<50+cat.diam/2) {
            xjoey = 50;
            nyancat.remove(i);
            for (int j=nyancat.size()-1; i>0; i--) {
              Meteor c = (Meteor)nyancat.get(j);
              c.y = 0;
            }
          }
          if (cat.life==0) {
            nyancat.remove(i);
          }
        }
        image(joeychar, xjoey-50, yjoey-50, 100, 100);
        if (keyPressed) {
          if (key==CODED) {
            if (keyCode==LEFT) {
              xjoey+=-2;
            }
            if (keyCode==RIGHT) {
              xjoey+=2;
            }
          }
        }

        if (xjoey>=width)
        {
          q=0;
          i++;
          nyancatsong.pause();
        }
      }
    }
     if(i==7)
  {
    if(q==0)
    {
      xjoey = -100;
      xboat = width/2;
      yjoey = height-200;
      q++;
    }
    image(joeychar,xjoey,yjoey,100,100);
     moveJoey();
    image(boat,xboat,460,150,50);
    if(xjoey>width/2+25)
    {
      xboat = xjoey-25;
    }
    if(xjoey>=width)
    {
      q=0;
      //i=11;
      i++;//UNCOMMENT LATER!!!
    }
  }
  if(i==8)
  {
    if(q==0)
    {
      q++;
      xjoey = 25/2;
       yjoey = 200;
       
    }
    //cliff
  image(joeychar,xjoey,yjoey,joeyimagesize,joeyimagesize);
  image(boat,xboat,yboat,boatwidth,boatheight);
  if(speech2<5){
  image(steph,440,500,60,60);
  }
  else if(speech2>=5){
   image(minidragon,400,350,254,231); 
  }
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
//  moveJoey();
//  if(xjoey>=472 || yjoey>=436)
//  {
//    //GO TO NEXT SCENE BECAUSE JOEY IS AT THE CAVE MOUTH
//    if(speech2>=6&&mousePressed)
//    {
//        q=0;
//    i++;
//    }
//  
//  }
  
  if(xjoey>=388 && yjoey>=394)
  {
    if(q==1)
    {
      speech2=0;
      oldtime=millis();
      q++;
    }
    newtime=millis();
    println("YAY!   " + newtime + "  !!!!  " + oldtime);
    //DIALOGUE WITH STEPHANIE
    //idk how this works but when joey reaches this location
    //we should talk then I should morph into a dragon for like,
    //three seconds and then vanish and then joey can move
    if(newtime-oldtime>=3000)
    {
       speech2++;
      oldtime=newtime;
    }
    if(speech2<=5)
    {
      
    image(da[speech2],speech2x,speech2y);
    }

    if(speech2==0)
    {
      speech2x= 200;
      speech2y=200;
    }
     else if(speech2==1)
    {
      speech2x= 450;
      speech2y=300;
    }
    else if(speech2==2)
    {
      speech2x= 200;
      speech2y=200;
    }
     else if(speech2==3)
    {
      speech2x= 450;
      speech2y=300;
    }
    else if(speech2==4)
    {
      speech2x= 200;
      speech2y=200;
    }
    else if(speech2==5)
    {
      speech2x= 450;
      speech2y=300;
    }
    else if (speech2>5)
    {
      q=0;
      i++;
    }
  }
  else 
    moveJoey();
  //here is stuff that will happen with the timer, to help with placement
  /*image(minidragon,400,350);
  image(d1,200,200);
  image(d2,450,300);
  image(d3,200,200);
  image(d4,450,300);
  image(d5,200,200);
  image(d6,450,300);*/
  
  }
  if(i==9)
  {
    if(q==0)
    {
      dx = 400;
 dy = -100;
 dspeed = 1;
xjoey = -50;
yjoey=height-130;
q++;
    }
     currentTime = millis();
  ftimecurrent = millis();
  flametimecurrent = millis();
  
  image(dragoonthegreat,dx,dy);
  dx+=dspeed;
  if(dx>450 || dx<350)
  {
    dspeed = -dspeed;
  }
  image(joeychar,xjoey,yjoey,100,100);
  if(keyPressed)
  {
    if(key==CODED)
    {
      if(keyCode==LEFT)
      {
        xjoey-=2;
      }
      if(keyCode==RIGHT)
      {
        xjoey+=2;
      }
    }
  }

  if(currentTime-oldTime>15000)
  {
    oldTime=currentTime;
    dvd = new Doctor();
  }
  dvd.fall();
  if(dist(xjoey,yjoey,dvd.x,dvd.y)<=50+dvd.h)
  {
    dvd.x = xjoey;
    dvd.y = yjoey-25;
    holdDVD = true;
  }
  if(xjoey>dx)
  {
    if(holdDVD)
    {
      //GO TO NEXT SCENE
      i++;
      q=0;
    }
    else if(holdDVD==false)
    {
      xjoey = -50;
    }
  }
  
  for(int i=0; i<=index; i++)
  {
    fireballs[i].show();
    fireballs[i].move();
    fireballs[i].burn();
  }
  if(ftimecurrent-ftimeold>2000)
  {
    ftimeold=ftimecurrent;
    fireballs[index+1] = new Bomb();
    index++;
  }
  
  if(flametimecurrent-flametimeold>3000)
  {
    flametimeold=flametimecurrent;
    spewfire=!spewfire;
  }
    
  if(spewfire)
  {
    if(frameCount%3==0)
    {
      dots.add(new Fire());
    }
  }
  for(int i=dots.size()-1; i>0; i--)
  {
    Fire d = (Fire)dots.get(i);
    d.display();
    d.move();
    if(dist(xjoey,yjoey,d.x,d.y)<d.radius+50)
    {
      health-=0.00001;
      if(health==0)
      {
        xjoey=-50;
        health=100;
        holdDVD=false;
      }
    }
    if(d.life==0)
    {
      dots.remove(i);
    }
  }
  stroke(255,0,0);
  textSize(20);
  text("Health: " + health + "%",150,50);
    //cave
  }
  if(i==10)
  {
    //derpy dragon
    if(mousePressed)
    {
      i++;
    }
  }
  if(i==11)
  {
    //fly away dragon
    if(q==0)
    {
      xjoey = 400;
       yjoey = height-130;
      q++;
    }
    image(flydrag,50,150,wdragon,hdragon);
  wdragon = winitial/stephs_i;
  hdragon = hinitial/stephs_i;
  stephs_i+=0.01;
  image(joeychar,xjoey,yjoey,100,100);
 /*if(keyPressed)
  {
    if(key==CODED)
    {
      if(keyCode==LEFT)
      {
        xjoey-=2;
      }
      if(keyCode==RIGHT)
      {
        xjoey+=2;
      }
    }
    moveJoey();
  }*/
moveJoey();
if(xjoey>=width)
{
  i++;
  q=0;
  darkmusic.pause();
  darkmusic.cue(0);
}
  }

  }
  if(i==12)
{
  //victory
   // background(dragonlair);
   if(q==0)
   {
     xjoey = -50;
       yjoey = height-150;
     q++;
     //oldtime=millis();
   }
  image(joeychar,xjoey,yjoey,100,100);
  image(ukulele,xUK,yUK,150,150);
  image(mermaid,xmer,ymer,400,400);
  image(crown,xcrown,ycrown);
  image(dragonhead,xhead,yhead);
  image(pile,0,0,width,height);
  //boolean for holding ukulele and ukulele moving with Joey
  if(xjoey == xUK)
  {
    holdUK = true; 
  }
  if(holdUK)
  {
    xUK = xjoey;
    yUK = yjoey;
  }
  
  //when Joey reaches top of hill
  if(xjoey>=476 || yjoey<=69.19998)
  {
   
    //movement: first crown falls, then mermaid falls
    //then mermaid slides, then dragon pops out
    if(ycrown<59)
    {
      ycrown+=3;
    }
    else if(ycrown>=59)
    {
      if(ymer<100)
      {
        ymer+=8;
      }
      else if(ymer>=100)
      {
        if(xmer>16 || ymer<316)
        {
          ymer = xmer*-1+300;
          xmer-=2;
        }
        else if(xmer<=16 && xhead<610)
        {
          yhead--;
          xhead++;
          
        }
        else
        {
           if(q==1)
    {
      oldtime=millis();
      q++;
    }
    newtime=millis();
    if(newtime-oldtime>=5000)
    {
      
      q=0;
      i++;
    }
        }
      }
    }
  }
  else
  {
    yjoey = xjoey*-.8+height-150;
    moveJoey();
  }
}
if(i==13)
{
  fill(255);
  if (ycredits>=-800)
  {
    ycredits--;
  }
  background(0);
 background(34, 188, 242);
  textSize(30);
  for (int j=0;j<credits.length;j++) {
    text(credits[j], 50, ycredits+(100*j), 750, 100);
  }
  if (ycredits<=-800) {
   
  image(me, 400, -80, 350, 400);
  image(lolsteph, 310,200, 200,350);
  image(lolweronika,0,200,300,250);
  text("Click to return to start screen",width/2-100,550);
  if(mousePressed){
    startScreen=true;
    instructions=false;
    i=0;
  }
}
      println("X"+mouseX);
    println("Y"+mouseY);
}
}


//movie:
void movieEvent(Movie m)
{
  m.read();
}

