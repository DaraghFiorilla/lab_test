Flag flag1, flag2, flag3, flag4, flag5;

void setup()
{
  //size(1920, 1080);
  fullScreen();
  background(240);
  colorMode(RGB);
  color(255, 0, 0);
  flag1 = new Flag(200, 500, 500, 400);
  flag2 = new Flag(500, 800, 650, 300);
}

void draw()
{
  flag1.display();
  flag2.display();
}

//Flag class which uses four parameters for rect
class Flag
{
  float x, y, w, h;
  Flag(float xpos, float ypos, float flagWidth, float flagHeight)
  {
    x = xpos;
    y = ypos;
    w = flagWidth;
    h = flagHeight;
  }
  
  void display()
  {
    rect(x, y, w, h);
  }
}
