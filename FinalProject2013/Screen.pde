void Screen ()
{
        if(screenchange)
  {
 
   // rugrats.play();
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
   
    s="Now to Level "+lvl+"!";
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
  if (rugrats.position()<5600) {
      rugrats.play();
    }
    if (rugrats.position()>=5600) {
      rugrats.pause();
       String nextleveltext = "Click to go to the next level!";
      text(nextleveltext,30,400,width-30,600);
    }
    
    if(mousePressed&&rugrats.position()>=5600)
    {
      screenchange=!screenchange;
     
      rugrats.cue(0);
      q=0;
      lvl++;
     //rugrats.close();
    }
  }
    //end joey's screen change
}
