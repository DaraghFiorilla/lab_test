Flag flag1, flag2, flag3, flag4, flag5;

void setup()
{
  size(1920, 1080);
  background(240);
  colorMode(RGB);
  flag1 = new Flag();
  flag2 = new Flag();
}

void draw()
{
  flag1.display();
}

class Flag
{
  float w, h;
  Flag()
  {
    w = 400;
    h = 400;
  }
  
  void display()
  {
    square(w, h, random(100, 1800));
  }
}
