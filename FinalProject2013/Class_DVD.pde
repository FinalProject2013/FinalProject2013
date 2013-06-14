class Doctor
{
  float x;
  float y;
  float w = 50/1.25;
  float h = 67/1.25;

  Doctor()
  {
    x = random(0, width/2);
    y = -w;
  }

  void fall()
  {
    image(dvdpic, x, y, w, h);
    y+=5;
  }
}

