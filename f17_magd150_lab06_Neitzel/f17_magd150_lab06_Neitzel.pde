Rain rain1;
Rain rain2;
Rain rain3;
Rain rain4;
Rain rain5;
Rain rain6;

void setup()
{
 size(500,500);
 background(15,29,51);
 rain1=new Rain();
 rain2=new Rain(round(random(500)),round(random(500)));
 rain3=new Rain(round(random(500)),round(random(500)));
 rain4=new Rain(round(random(500)),round(random(500))); 
 rain5=new Rain(round(random(500)),round(random(500)));
 rain6=new Rain(round(random(500)),round(random(500))); 
}

void draw()
{
   background(88,107,137);
    drawGround();
    drawRain();
    drawCloud();
 
}
 
//This function draws the clouds.
void drawCloud()
{
 noStroke();
 fill(150);
 ellipse(250,0,500,150);
 
 fill(190);
 ellipse(50,50,100,75);
 ellipse(150,50,125,75);
 ellipse(75,100,100,75);
 ellipse(150,100,100,75);
 ellipse(100,25,100,75);
 
 fill(99);
 ellipse(250,100,200,100);
 ellipse(225,50,75,50);
 ellipse(300,50,75,50);
 ellipse(190,60,75,50);
 ellipse(150,50,75,50);
 ellipse(150,100,100,75);
 ellipse(175,150,100,75);
 ellipse(250,150,100,75);
 
 fill(190);
 ellipse(450,50,100,75);
 ellipse(350,50,125,75);
 ellipse(425,100,100,75);
 ellipse(350,100,100,75);
 ellipse(400,25,100,75);

}
void drawGround()
{
  rectMode(CENTER);
  int x=0;
  int y=400;
  stroke(102,135,108);
  fill(40,56,43);
  while(x<500){
rect(x,y,200,200);
  x+=3;
  y+=1;
  }
 y=400;
  while(x>0){
rect(x,y,200,200);
  x-=4;
  y+=2;
  }
 
}
void drawRain()
{
  rain1.display();
  rain1.move();
  rain2.display();
  rain2.move();
  rain3.display();
  rain3.move();
  rain4.display();
  rain4.move();
  rain5.display();
  rain5.move();
  rain6.display();
  rain6.move();
}