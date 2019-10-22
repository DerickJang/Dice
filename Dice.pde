Die derick;
void setup()
{
  size(600,600);
  noLoop();
}
void draw()
{
  background(0);
  int total=0;
  total=0;
  for (int x= 0; x <= 500; x+=55)
  {
    for (int y= 0; y <= 550; y+=55)
    {
      Die derick= new Die(y, x);
      derick.show();
      total+=derick.roll;
    }
  }
fill(255);
textAlign(CENTER);
text( "Sum=" + total, 300, 600);
}
  
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, roll, total;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    roll();
  }
  void roll()
  {
    roll=(int)(Math.random()*6+1);
  }
  void show()
  {
    if(roll==1)
    {
      fill(255);
      rect(myX, myY, 60, 60);
      fill(0);
      ellipse(myX+30, myY+30, 8, 8);
    }
    else if (roll==2)
    {
      fill(255);
      rect(myX, myY, 60, 60);
      fill(0);
      ellipse(myX+20, myY+30, 8, 8);
      ellipse(myX+40, myY+30, 8, 8);
    } 
    else if (roll==3)
    {
      fill(255);
      rect(myX, myY, 60, 60);
      fill(0);
      ellipse(myX+15, myY+30, 8, 8);
      ellipse(myX+30, myY+30, 8, 8);
      ellipse(myX+45, myY+30, 8, 8);
    }
    else if (roll==4)
    {
      fill(255);
      rect(myX, myY, 60, 60);
      fill(0);
      ellipse(myX+20, myY+20, 8, 8);
      ellipse(myX+40, myY+20, 8, 8);
      ellipse(myX+20, myY+40, 8, 8);
      ellipse(myX+40, myY+40, 8, 8);
    }
    else if (roll==5)
    {
      fill(255);
      rect(myX, myY, 60, 60);
      fill(0);
      ellipse(myX+20, myY+20, 8, 8);
      ellipse(myX+40, myY+20, 8, 8);
      ellipse(myX+20, myY+40, 8, 8);
      ellipse(myX+40, myY+40, 8, 8);
      ellipse(myX+30,myY+30,8,8);
    }
    else
    {
      fill(255);
      rect(myX, myY, 60, 60);
      fill(0);
      ellipse(myX+15, myY+20, 8, 8);
      ellipse(myX+30, myY+20, 8, 8);
      ellipse(myX+45, myY+20, 8, 8);
      ellipse(myX+15, myY+40, 8, 8);
      ellipse(myX+30, myY+40, 8, 8);
      ellipse(myX+45, myY+40, 8, 8);
    }
  }
}