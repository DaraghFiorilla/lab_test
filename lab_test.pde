Flag flag1, flag2, flag3, flag4, flag5;
color red = color(255, 0, 0);
color yellow = color(255, 247, 0);
color green = color(0, 255, 0);
color lightblue = color(0, 251, 255);
color blue = color (0, 0, 255);
color purple = color (200, 0, 255);

void setup()
{
  //size(1920, 1080);
  fullScreen();
  background(240);
  colorMode(RGB);
  noStroke();
  //Rects format = (xpos, ypos, width, height)
  flag1 = new Flag(0, 0, 200, 100);
  flag2 = new Flag(100, 600, 250, 75);
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
  
  int stripeCount = 6;
  void display()
  {
    fill(255, 255, 255);
    rect(x, y, w, h); // Main flag rect
    /*fill(red);
    rect(x, y, w, h/6);
    fill(yellow);
    rect(x, y + h / 6, w, h/6);*/
    for (int i = 0; i < stripeCount; i++)
    {
      switch(i)
      {
        case 0:
        {
          fill(red);
          break;
        }
        case 1:
        {
          fill(yellow);
          break;
        }
        case 2:
        {
          fill(green);
          break;
        }
        case 3:
        {
          fill(lightblue);
          break;
        }
        case 4:
        {
          fill(blue);
          break;
        }
        case 5:
        {
          fill(purple);
          break;
        }
        default:
        {
          break;
        }
      }
      rect(x, y + (i * h/stripeCount), w, h/stripeCount);
    }
    
    
  }
}
