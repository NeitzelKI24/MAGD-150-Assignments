class Balloon
{
 float [] colors = new float [15];
  Balloon()
  {
 acceleration=new PVector(.00002,.00005);
 velocity=new PVector(3,5);
 location=new PVector(250,0);
 colors[0]=137;
 colors[1]=71;
 colors[2]=229;//This is the three numbers to make the balloon purple.
 colors[3]=229;
 colors[4]=71;
 colors[5]=84;//This is the three numbers to make the balloon red.
 colors[6]=237;
 colors[7]=240;
 colors[8]=42;//This is the three numbers to make the balloon yellow.
 colors[9]=42;
 colors[10]=127;
 colors[11]=239;
 colors[12]=42;
 colors[13]=239;
 colors[14]=55;
  }
 
  void displayPurple()
  {

   for(int i=1;i<10;i++)
   {
        strokeWeight(10);
   stroke(colors[0]-30,colors[1]-30,colors[2]-30);
   fill(colors[0],colors[1],colors[2]);
   ellipse(location.x+random(-250,250),location.y+random(-250,150),50,60); 
   strokeWeight(1);
   stroke(0);
   line(location.x+random(-250,250),location.y+random(-250,150),mouseX,mouseY);
   }
  }
  
   void displayRed()
  {
   for(int i=1;i<10;i++)
   {
        strokeWeight(10);
   stroke(colors[3]-30,colors[4]-30,colors[5]-30);
   fill(colors[3],colors[4],colors[5]);
   ellipse(location.x+random(-150,150),location.y+random(-250,250),50,60); 
   strokeWeight(1);
   stroke(0);
    line(location.x+random(-150,150),location.y+random(-250,250),mouseX,mouseY);
   }
  }
  
   void displayYellow()
  {
  
   for(int i=1;i<10;i++)
   {
      strokeWeight(10);
   stroke(colors[6]-30,colors[7]-30,colors[8]-30);
   fill(colors[6],colors[7],colors[8]);
   ellipse(location.x+random(-150,150),location.y+random(-150,150),50,60); 
      strokeWeight(1);
   stroke(0);
    line(location.x+random(-150,150),location.y+random(-150,150),mouseX,mouseY);
   }
  }
  
     void displayBlue()
  {
   
   for(int i=1;i<10;i++)
   {
     strokeWeight(10);
   stroke(colors[9]-30,colors[10]-30,colors[11]-30);
   fill(colors[9],colors[10],colors[11]);
   ellipse(location.x+random(-150,150),location.y+random(-150,150),50,60); 
      strokeWeight(1);
   stroke(0);
    line(location.x+random(-150,150),location.y+random(-150,150),mouseX,mouseY);
   }
   
  }
   void displayGreen()
  {

   for(int i=1;i<10;i++)
   {
        strokeWeight(10);
   stroke(colors[12]-30,colors[13]-30,colors[14]-30);
   fill(colors[12],colors[13],colors[14]);
   ellipse(location.x+random(-100,150),location.y+random(-150,100),50,60);
      strokeWeight(1);
   stroke(0);
   line(location.x+random(-100,150),location.y+random(-150,100),mouseX,mouseY);
   }
  }
  void update()
  {
    velocity.add(acceleration);
   location.add(velocity); 
    rotate(PI/2);
   if(location.x>900 || location.x<-500)
   {
   velocity.x*=-1; 
   }
    if(location.y>900 || location.y<-500)//The two if statements make it so the balloons don't go too offscreen.
   {
    velocity.y*=-1; 
   }
  }
}