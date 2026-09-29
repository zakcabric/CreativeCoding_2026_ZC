/*
// this is my first programming project

//this is a basic comment used for debugging
print("Hello World!");

String myString = "Hello World!";

println(myString);

float myFloat = 3.14;
int myInt = 23;
boolean myBool = true;
*/

void setup()
{
  rectMode(CENTER);
  size(500, 500); //sets the size of the canvas
  //frameRate(1);
  // fullScreen();
}

//int size = 500;
//int bulb1X = 25, bulb1Y = 25;
//float scaleX = size * 0.25, scaleY = size * 1.25;

boolean something = false;

int bulb1Size = 80;
int bulb1X = 250, bulb1Y = 250;

void draw()
{
  background(200);
  fill(255);
  strokeWeight(1);
  line(250,0,250,250);
  ellipse(250, 190, 25, 20);
  rect(250, 205, 30, 30);
  
  if(mouseX >= (bulb1X - (bulb1Size / 2)) && mouseX <= (bulb1X + (bulb1Size / 2))
    && mouseY >= (bulb1Y - (bulb1Size / 2)) && mouseY <= (bulb1Y + (bulb1Size / 2)))
  {
    fill(250,250,0);
    bulb1Size --;
  }
  else if (bulb1Size < 80)
  {
    bulb1Size ++;
  }
  ellipse(bulb1X, bulb1Y, bulb1Size, bulb1Size);
  
  //rect(rand, rand, 0, 100);
  //line(rand, rand, 100, 150);
  
  Bulb b1 = new Bulb(100, 350, 80); 
  Bulb b2 = new Bulb(200, 350, 80);
  Bulb b3 = new Bulb(300, 350, 80);
  
  b1.drawBulb();
  b2.drawBulb();
  b3.drawBulb();
}

class Bulb
{
  int bulbSize, bulbX, bulbY;
  
  Bulb(int x, int y, int size)
  {
    bulbX = x;
    bulbY = y;
    bulbSize = size;
  }
  
  void drawBulb()
  {
    ellipse(bulbX, bulbY, bulbSize, bulbSize);
  }
}
