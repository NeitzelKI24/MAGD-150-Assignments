import processing.pdf.*;
PFont movieFont;
PFont posterFont;
int textMove=250;
  int x=250;
  int y=200;
 
void setup()
{
 background(0);
 size(500,700); 
  movieFont=createFont("Phosphate",48,true);
  posterFont=createFont("Luminari",48,true);
  String[] posterText=loadStrings("MAGDLab8Text.txt");//This loads the text file to the sketch.
   println(posterText);
   beginRecord(PDF,"testpdf.pdf");//This starts recording the PDF file.
}

void draw()
{
 
background(0);
stroke(249,248,159);
noFill();
rect(0,1,499,60);
  writeTitle();
  textMove+=5;
  poster();
  x+=10;
 endRecord();//This ends the recording of the PDF file.

}

void writeTitle()
{
 fill(249,248,159);

 textFont(movieFont);
 text("Coming Soon",textMove,50);
 
 if(textMove>500)
 {
  textMove=0; 
 }//This makes it so the words come back after they go off screen.
}

void poster()
{ fill(45,27,71);
  rect(0,61,500,500);
  
  fill(56,64,76);
  stroke(0);
  rectMode(CORNERS);
  rect(0,250,70,700);
  fill(158,189,239);
  rect(70,325,100,700);
  fill(56,64,76);
  rect(100,350,200,700);
  fill(158,189,239);
  rect(200,240,270,700);
  fill(56,64,76);
  rect(270,450,320,700);
  fill(158,189,239);
  rect(320,400,420,700);
  fill(56,64,76);
  rect(420,230,500,700);//This makes the buildings
  

  textFont(posterFont);
  textAlign(CENTER);
  fill(23,137,237);
  text("Alien Invasion",250,150);
 
  fill(210,224,247);
 ellipse(x,y,20,20);
 fill(169,172,178);
 ellipse(x,y,50,10);

 
 if (x>500)
 {
  x=0;
  y=round(random(200,500));
 }//This makes the UFO come back after it goes offscreen.
 
}