Flag flag1, flag2, flag3, flag4, flag5;

color red = color(255, 0, 0);
color yellow = color(255, 247, 0);
color green = color(0, 255, 0);
color lightblue = color(0, 251, 255);
color blue = color(0, 0, 255);
color purple = color(200, 0, 255);
color black = color(0, 0, 0);
color brown = color(110, 64, 1);
color pink = color(254, 191, 255);
color violet = color(115, 0, 117);

float xdir, ydir, wchange, hchange;

void setup()
{
  //size(1920, 1080);
  fullScreen();
  background(240);
  colorMode(RGB);
  noStroke();
  //Rects format = (xpos, ypos, width, height) Use 16:9 width-height ratio
  flag1 = new Flag(0, 0, 200, 100);
  flag2 = new Flag(100, 600, 250, 75);
  flag3 = new Flag(300, 300, 900, 600);
  
  xdir = random(-2, 2);
  ydir = random(-2, 2);
  wchange = 16;
  hchange = 9;
}

void draw()
{
  background(240);
  
  flag1.display();
  flag2.display();
  flag3.display();
  
  //flag1.movement();
  //flag2.movement();
  //flag3.movement();
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
    //Making the stripes
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
    
    float triangleCount = 4;
    float segmentHeight = h / triangleCount / 4;
    float segmentWidth = w / triangleCount;
    //Making the triangles
    //Triangles format = x1, y1, x2, y2, x3, y3

    for (int i = 0; i < triangleCount; i++)
    {
      switch(i)
      {
        case 0:
        {
          fill(black);
          break;
        }
        case 1:
        {
          fill(brown);
          break;
        }
        case 2:
        {
          fill(pink);
          break;
        }
        case 3:
        {
          fill(yellow);
          break;
        }
        default:
        {
          break;
        }
      }
      triangle(x, y + (i * segmentHeight), x, y + h - (i * segmentHeight), x + w/2 - (i * segmentWidth / 4), y + h/2);
    }
  }
  
  /*void movement()
  {
    x += xdir;
    y += ydir;
    //w += wchange;
    //h += hchange;
    
    if (x > width - w || x < 0)
    {
      xdir = -xdir;
    }
    
    if (y > height - h || y < 0)
    {
      ydir = -ydir;
    }
  }*/
}
