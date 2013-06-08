void moveJoey()
{
  if(keyPressed)
  {
    if(keyCode==UP)
      {
        
            yjoeyspeed=-10;
            q++;
           
        
      yjoeychange+=yjoeyspeed;
        //add a jump maybe
        //yjoey-=10;
        //THIS IS NOT DONE KTHXBAI
        
        
        

      }
        easing=.1;
        yjoeyspeed=yjoeyspeed*easing;
        
        yjoey+=yjoeyspeed;
      if(keyCode==DOWN)
      {
        yjoey+=10;
      }
      if(keyCode==LEFT)
      {
        xjoey-=3;
      }
      if(keyCode==RIGHT)
      {
        xjoey+=3;
      }
  }
          if(i==0)
        {
           yjoey=((-.4732)*xjoey+620)+yjoeychange;//an eqation based off of two points
        }
        if(i==2)
        {
           yjoey=500+yjoeychange;
           
        }
        
  
        if(yjoeychange>=20)
        {
          yjoeyspeed=10;
        }
        else if(yjoeychange==0)
        {
         // q=0;
          yjoeyspeed=0;
        }
}
