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
    if(q==0)
    {
      oldtime=millis();
      q++;
    }
    newtime =millis();
    /*if(newtime-oldtime>=5200)
    {
      //rugrats.close();
     // rugrats.pause();
     // rugrats.rewind();//THIS TIME: didnt play the screen at all the second time;
      q=0;
      screenchange=!screenchange;
      lvl++;
    }*/
    
    if(mousePressed)
    {
      screenchange=!screenchange;
      q=0;
      lvl++;
     //rugrats.close();
    }
  }
    //end joey's screen change
}
