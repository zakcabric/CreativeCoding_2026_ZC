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
  //rectMode(CENTER);
  size(500, 500); //sets the size of the canvas
  frameRate(1);
  // fullScreen();
}

//int size = 500;
//int posX = 25, posY = 25;
//float scaleX = size * 0.25, scaleY = size * 1.25;

void draw()
{
  int rand = (int)random(20, 250);
  int randColor = (int)random(0, 255);
  
  background(255);
  fill(randColor, 0, 0);
  //ellipse (posX,posY,scaleX * 1.25, scaleY);
  //posX = posX + 1;
  //posY += 1;
  //scaleX -= 1;
  //scaleY -= 1;
  
  rect(rand, rand, 0, 100);
  line(rand, rand, 100, 100);
}
