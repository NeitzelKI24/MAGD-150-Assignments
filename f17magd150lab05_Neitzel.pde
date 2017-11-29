boolean power=false;
int X=100;
float Y=150;
float c1=128;
float c2=67;
float c3=193;
float c4=100;
int channel=1;
void setup()
{
  background(24,51,81);
 size(500,500);
  drawTV();
}
void draw()
{
powerButton2(); 
powerButton();
channelUp2();
channelUp();
channelDown2();
channelDown();
channelChange();

}

void channelChange()
{
 if(channel==1)
 {
  tvMove1(); 
 }
 if(channel==2)
 {
   tvMove2();
 }
 if(channel==3)
 {
  tvMove3(); 
 }
}
void channelUp()
{
 if(mousePressed)
 {
  if(mouseX>=455 && mouseX<=495 && mouseY>=280 && mouseY<=320)
  {
    strokeWeight(1);
    stroke(0);
    fill(193,191,67);
    rect(475,300,40,40);
    fill(255);
    triangle(460,310,475,290,490,310);
    
  }
 }
}

void channelUp2()
{
   strokeWeight(1);
    stroke(0);
    fill(237,234,83);
    rect(475,300,40,40);
    fill(255);
    triangle(460,310,475,290,490,310);
}

void channelDown()
{
  if(mousePressed)
 {
  if(mouseX>=455 && mouseX<=495 && mouseY>=330 && mouseY<=370)
  {
  strokeWeight(1);
   stroke(0);
   fill(193,191,67);
   rect(475,350,40,40);
   fill(255);
   triangle(460,340,490,340,475,360);
  }
 }
}

void channelDown2()
{
   strokeWeight(1);
   stroke(0);
   fill(237,234,83);
   rect(475,350,40,40);
   fill(255);
   triangle(460,340,490,340,475,360);
}


void powerButton()//changes power button's color when pressed
{
 if (mousePressed)
 {
    if(mouseX>=455 && mouseX<=495 && mouseY>=380 && mouseY<=420)
    {
      stroke(255);
      strokeWeight(1);
      fill(46,79,104);
  ellipse(475,400,40,40); //power button
  strokeWeight(5);
  noFill();
  line(475,387,475,400);
  arc(475,400,20,20,PI+QUARTER_PI+HALF_PI,TWO_PI+PI+QUARTER_PI,OPEN);//power symbol
  }   
  } 
  }
 


void powerButton2()//changes power button's color when released
{
  stroke(255);
  strokeWeight(1);
  fill(80,139,183);
  ellipse(475,400,40,40); //power button
  strokeWeight(5);
  noFill();
  line(475,387,475,400);
  arc(475,400,20,20,PI+QUARTER_PI+HALF_PI,TWO_PI+PI+QUARTER_PI,OPEN);//power symbol
}

void mouseClicked()
{
    if(mouseX>=455 && mouseX<=495 && mouseY>=380 && mouseY<=420)
    {
  if(power==true)
  {
  fill(49,53,58);
  rect(250,250,400,400,30);
  power=false; 
  }
  else//power=false
  {
   
     fill(192,198,209);
  rect(250,250,400,400,30);
  power=true;
  
  }
    }
     if(mouseX>=455 && mouseX<=495 && mouseY>=280 && mouseY<=320)
  {
   if(power==true)
    {
     channel++;
    }
    if(channel>3)
    {
     channel=1; 
    }}
    
     if(mouseX>=455 && mouseX<=495 && mouseY>=330 && mouseY<=370)
  {
   if(power==true)
    {
     channel--;
    }
    if(channel<1)
    {
     channel=3; 
    }}

}

void tvMove1()

{
 if(power==true)
 {
     fill(190,247,165);
  rect(250,250,400,400,30);
   fill(c1,c2,c3,c4);
  ellipse(X,Y,50,50);
  X+=5;
  if(X>=350)
  {
   X=150;
   c1=random(255);
   c2=random(255);
   c3=random(255);
   c4=random(255);
   Y=round(random(150,350));
  }
 }
  
}

void tvMove2()
{
  if(power==true)
  {
   fill(247,165,197);
  rect(250,250,400,400,30);
  fill(c2,c4,c1,c3);
  rect(X,Y,75,75);
  X-=10;
  if(X<=150)
  {
   X=350;
   c1=random(100,255);
   c2=random(100,255);
   c3=random(100,255);
   c4=random(100,255);
   Y=round(random(150,350));
  } 
  }
}

void tvMove3()
{
  if(power==true){
  fill(235,222,249);
  rect(250,250,400,400,30);
fill(c4,c1,c3,c2);
triangle(X,Y,X+10,Y+10,X+20,Y);
fill(c3,c4,c2,c1);
triangle(X-15,Y+25,X+5,Y+45,X+25,Y+25);
Y+=50;
if(Y>=400)
  {
   Y=100;
   c1=random(255);
   c2=random(255);
   c3=random(255);
   c4=random(255);
   X=round(random(150,350));
  } 
  }
  }



void drawTV()
{
  strokeWeight(1);
  fill(49,53,58);
  rectMode(CENTER);
  rect(250,250,400,400,30);//screen

   fill(237,234,83);
  text("Channel",450,275);
  rect(475,300,40,40);
  rect(475,350,40,40);
  fill(255);
  triangle(460,310,475,290,490,310);//up
  triangle(460,340,490,340,475,360);//down//channel buttons
  
  stroke(255);
  text("Power",457,435);
  fill(80,139,183);
  ellipse(475,400,40,40); //power button
  strokeWeight(5);
  noFill();
  line(475,387,475,400);
  arc(475,400,20,20,PI+QUARTER_PI+HALF_PI,TWO_PI+PI+QUARTER_PI,OPEN);//power symbol
  
}