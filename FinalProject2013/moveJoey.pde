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
        yjoey+=10;
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
        }
        if(i==5)
        {
        }
        if(i==6)
        {
        }

}
