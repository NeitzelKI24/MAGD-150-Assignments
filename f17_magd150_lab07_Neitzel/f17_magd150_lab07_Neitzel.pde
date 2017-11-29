PVector location;
PVector velocity;
PVector acceleration;
Balloon SpawnBalloon;
void setup()
{
 size(500,500);
 background(71,131,229);
 SpawnBalloon = new Balloon();

}

void draw()
{background(71,131,229);
  scale(.5);
  translate(width/2,height/2);
 
  SpawnBalloon.displayYellow();  
  SpawnBalloon.displayPurple();
  SpawnBalloon.displayRed();
  SpawnBalloon.displayBlue();
  SpawnBalloon.displayGreen();
  SpawnBalloon.update();
}