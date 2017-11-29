  int triX1 = 200;
  int triY1 = 200;
  int triX2 = 300;
  int triY2 = 250;
  int triX3 = 200;
  int triY3 = 300;
  float circle = random(10,50);
  float circle2 = random(10,50);
  float circle3 = random(10,50);
  float bubble = random(450,500);
  float bubble2 = random(450,500);
  float bubble3 = random(450,500);
  int pX1 = triX2-69;
  int pY1 = triY2-18;
  int pX2 = triX2-66;
  int pY2 = triY2+14;
  int pX3 = triX2-43;
  int pY3 = triY2-3;
  int eyeX = triX2-43;
  int eyeY = triY2-4;
  int cX2 = triX1+14;
  int cY2 = triY1+7;
  int cX3 = triX3+14;
  int cY3 = triY3-7;
  void setup()
{
 size(500,500);
}

void draw()
{ background(66,188,244);


  stroke(191,226,181);
  fill(97,196,70);
  arc(105,300,100,100,HALF_PI,PI+QUARTER_PI,CHORD);//plant left
  arc(75,300,100,100,PI+HALF_PI+QUARTER_PI,TWO_PI+HALF_PI,CHORD);//plant right
  arc(50,360,100,100,PI+QUARTER_PI,TWO_PI,CHORD);//plant left 2
  arc(130,360,100,100,PI,PI+HALF_PI+QUARTER_PI,CHORD);//plant right2


for(int ground=0; ground<600;ground++)//sand
 {
   stroke(224,219,172);
   fill(252,246,196);
  ellipse(ground,450,200,200); 
 }
 stroke(81,63,84);
fill(230,121,247);
beginShape();
  vertex(327,350);
  vertex(328,296);
  vertex(309,263);
  vertex(286,208);
  vertex(248,181);
  vertex(285,163);
  vertex(356,212);
  vertex(374,244);
  vertex(400,217);
  vertex(431,176);
  vertex(455,201);
  vertex(450,235);
  vertex(425,293);
  vertex(410,350);
  endShape();//coral
  
  stroke(204,182,122);
  fill(249,235,129);
  triangle(triX1,triY1,triX2,triY2,triX3,triY3);//pizza base
  fill(168,132,75);
  stroke(142,99,52);
  quad(triX1,triY1,cX2,cY2,cX3,cY3,triX3,triY3);//crust
  fill(224,111,83);
  stroke(178,81,57);
  ellipse(pX1,pY1,20,20);//pepperoni
  ellipse(pX2,pY2,20,20);
  ellipse(pX3,pY3,10,10);
  noStroke();
  fill(0);
  ellipse(eyeX,eyeY,7,7);//eye
  stroke(30,76,122);
  fill(174,222,239);
  ellipse(450,bubble,circle,circle);
  ellipse(250,bubble2+25,circle2,circle2);
  ellipse(100,bubble3+50,circle3,circle3);
bubble=bubble-5;
bubble2=bubble2-10;
bubble3=bubble3-7;
if (bubble<=0)
{
 bubble=500;
 circle=random(10,50);
}
if(bubble2<=0)
{
 bubble2=500; 
  circle2=random(10,50);
}
if(bubble3<=0)
{
bubble3=500;
 circle3=random(10,50);
}
if(triX2>=500)
{
  triX1=triX1-10;
    triX2=triX2-10;
    triX3=triX3-10;
    pX1=pX1-10;
    pX2=pX2-10;
    pX3=pX3-10;
    eyeX=eyeX-10;
    cX2=cX2-10;
    cX3=cX3-10;
}
if(triX2<=0)
{
  triX1=triX1+10;
    triX2=triX2+10;
    triX3=triX3+10;
    pX1=pX1+10;
    pX2=pX2+10;
    pX3=pX3+10;
    eyeX=eyeX+10;
     cX2=cX2+10;
    cX3=cX3+10;
}
if(triY1<=0)
{
   triY1=triY1+10;
    triY2=triY2+10;
    triY3=triY3+10;
    pY1=pY1+10;
    pY2=pY2+10;
    pY3=pY3+10;
    eyeY=eyeY+10;
     cY2=cY2+10;
    cY3=cY3+10;
}
if(triY3>=500)
{
  triY1=triY1-10;
   triY2=triY2-10;
   triY3=triY3-10;
   pY1=pY1-10;
    pY2=pY2-10;
    pY3=pY3-10;
    eyeY=eyeY-10;
    cY2=cY2-10;
    cY3=cY3-10;
}

  
 /* fill(0);
  text(mouseY,mouseX+25,mouseY);
  text(mouseX,mouseX,mouseY);
  println(triX2);
  code to help me plan where stuff should go
  */
}

void mousePressed()
{
  if(triX2>=triX1)
  {
 triX2=triX2-200;
 pX1=pX1-69;
 pX2=pX2-66;
 pX3=pX3-129;
 eyeX=eyeX-129;
 cX2=cX2-28;
 cX3=cX3-28;
   
}
  else
  {
   triX2=triX2+200; 
   pX1=pX1+69;
   pX2=pX2+66;
 pX3=pX3+129;
 eyeX=eyeX+129;
 cX2=cX2+28;
 cX3=cX3+28;
  }
  
}

void keyPressed()
{
 if(key==CODED)
 {

  if(keyCode==UP)
  {
   triY1=triY1-10;
   triY2=triY2-10;
   triY3=triY3-10;
   pY1=pY1-10;
    pY2=pY2-10;
    pY3=pY3-10;
    eyeY=eyeY-10;
    cY2=cY2-10;
    cY3=cY3-10;
}
  if(keyCode==DOWN)
  {
    triY1=triY1+10;
    triY2=triY2+10;
    triY3=triY3+10;
    pY1=pY1+10;
    pY2=pY2+10;
    pY3=pY3+10;
    eyeY=eyeY+10;
     cY2=cY2+10;
    cY3=cY3+10;
  }
  if(keyCode==RIGHT)
  {
    
    triX1=triX1+10;
    triX2=triX2+10;
    triX3=triX3+10;
    pX1=pX1+10;
    pX2=pX2+10;
    pX3=pX3+10;
    eyeX=eyeX+10;
     cX2=cX2+10;
    cX3=cX3+10;
  
  }
  if(keyCode==LEFT)
  { 
    triX1=triX1-10;
    triX2=triX2-10;
    triX3=triX3-10;
    pX1=pX1-10;
    pX2=pX2-10;
    pX3=pX3-10;
    eyeX=eyeX-10;
    cX2=cX2-10;
    cX3=cX3-10;
  }
 }
}