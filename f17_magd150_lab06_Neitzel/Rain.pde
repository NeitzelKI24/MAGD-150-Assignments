class Rain//This is a class that makes the rain drops.
{
  int X, Y;
 Rain()
 {
   X=round(random(500));
   Y=0;
 }
Rain(int X2,int Y2)
{
 X=X2;
 Y=Y2; 
}
  void display()//This function makes the raindrops appear.
  {
    fill(185,231,247);
    stroke(46,150,242);
   ellipse(X,Y,5,5); 
  }
  
  void move()//This function makes the rain drops move.
  {
   Y+=5;
   if(Y>=500)
   {
    Y=0;
    X=round(random(500));
   }
  }
  
}