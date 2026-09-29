Bulb b1;
Bulb b2;
Bulb b3;

void setup()
{
  rectMode(CENTER);
  size(500, 500);
  
  b1 = new Bulb(150, 350, 50); 
  b2 = new Bulb(250, 350, 80);
  b3 = new Bulb(350, 350, 80);
}

void draw()
{
  background(200);
  fill(255);
  strokeWeight(1);

  b1.drawBulb();
  b2.drawBulb();
  b3.drawBulb();
  
  b1.moveBulb();
  b2.moveBulb();
  b3.moveBulb();
}

class Bulb
{
  int bulbSize, bulbX, bulbY, hgt;
  boolean hgtReached;
  
  Bulb(int x, int y, int size)
  {
    bulbX = x;
    bulbY = y;
    bulbSize = size;
  }
  
  void drawBulb()
  {
    line(bulbX,bulbY,bulbX,0);
    ellipse(bulbX, (bulbY - 60), 25, 20);
    rect(bulbX, (bulbY - 45), 30, 30);
    ellipse(bulbX, bulbY, bulbSize, bulbSize);
  }
  
  void moveBulb()
  {
    if(mouseX >= (bulbX - (bulbSize / 2)) && mouseX <= (bulbX + (bulbSize / 2))
    && mouseY >= (bulbY - (bulbSize / 2)) && mouseY <= (bulbY + (bulbSize / 2)))
    {
      bulbY --;
    }  
  }
}
