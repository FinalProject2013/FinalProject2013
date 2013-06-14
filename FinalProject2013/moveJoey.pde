void moveJoey()
{
  if(keyPressed)
  {
    if(keyCode==UP)
      { 
        yjoeyspeed=-10;
      }

      if(keyCode==DOWN)
      {
       // yjoey+=10;
      }
      if(keyCode==LEFT)
      {
        xjoey-=5;
      }
      if(keyCode==RIGHT)
      {
        xjoey+=5;
      }
  }
        yjoeychange+=yjoeyspeed;
      
      yjoeyspeed+=gravity;
      
      if(yjoeychange>=0)
      {
        yjoeyspeed=0;
      }
          if(i==0)
        {
           yjoey=((-.4732)*xjoey+620)+yjoeychange;//an eqation based off of two points
        }
        if(i==2)
        {
           yjoey=500+yjoeychange;
        }
        if(i==4)
        {
          //yjoey=(xjoey*.29586+340)+yjoeychange;
          //OK JUMPING GLITCHED EVERYTHING UP NOT GONNA WORK KAY
        }
        if(i==5)//sorry no jumping in this screen too many paths
        {
          if(joeyimagesize>75){
            yjoey=440+yjoeychange;
         //yjoey=440+yjoeychange;
          }
        }
        if(i==6)
        {
          yjoey=520+yjoeychange;
        }
                  //no jumping on i==7 boat lvl
          if(i==11)
        {
          yjoey =( height-130)+yjoeychange;
        }

}
