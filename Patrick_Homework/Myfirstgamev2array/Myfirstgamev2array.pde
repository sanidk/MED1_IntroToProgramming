int ePosX=75;
int ePosY=75;
int xDirSpeed=8;
int yDirSpeed=3;
int xDir=10;
int yDir=yDirSpeed;
int score=0;
boolean ballActivated = false;
boolean EASY = true;
boolean HARD = false;

Bubble[]bubbles=new Bubble[4];

void setup () 
{
  size(600,600);
  background(#0D8E04);
  for(int i=0; i<bubbles.length; i++){
  bubbles[i]=new Bubble();
  }
}

void draw ()
{
  background(#0D8E04);
   // b1.display();
   // b2.display();
  
  //ARRAY OF PLAYERS
  for(int i=0; i<bubbles.length; i++){
  bubbles[i].display();
  bubbles[i].move();
  }
  
  //SCORE BOARD
   fill(0);
   textSize(32);
   text("SCORE:", width/2-110, 50);
   fill(255);
   text(score, width/2+20, 50);
   text("Click to kick the ball", width/2-150, 550);   
   noFill();

 //DIFFICULTY
  fill(255,255,255, 100);
  text("[S] HARD", 200, 150);
  fill(255,255,255, 100);
  text("[D] EASY", 200, 100);
  noFill();
   
   //BALL
  fill(255);
  stroke(0);
  ellipse(ePosX, ePosY, 50, 50);
  noFill();
 
  //GOAL
  stroke(255);
  fill(255, 255, 255, 50);
  rect(500, 200, 75, 200, 10);
  
  line(550, 200, 550, 400);
  line(525, 200, 525, 400);
  
  line(500, 250, 575, 250);
  line(500, 300, 575, 300);
  line(500, 350, 575, 350);
  
  noFill();
  noStroke();
  
  //FIELD LINES
  stroke(255);
  line(500, 0, 500, 600);
  rect( 400, 150, 100, 300);
  noStroke();
  
  //DIFFICULTY

//ePosY = ePosY + yDir;

    if (EASY)
  {
   ePosY = ePosY + yDir;
  fill(255,0,0);
  text("[D] EASY", 200,100);
  noFill();
  
  stroke(255,0,0);
  line(170, 90, 190,90);
  noStroke();
  }
  
    if (HARD)
  {
   ePosY = ePosY + yDir*5;
  fill(255,0,0);
  text("[S] HARD", 200,150);
  noFill();
  stroke(255,0,0);
  line(170, 140, 190,140);
  noStroke();
   
   EASY = false;
   
  }

    //ELLIPSE BOUNCE
  if (ePosY>height-25)
  {
    yDir = -yDirSpeed;
  }
  if (ePosY<25)
  {
    yDir = +yDirSpeed;
  }

    //KICK BALL
  if (ballActivated)
  {
      ePosX = ePosX + xDir;
      yDir = 0;
  }
  
  //RESET BALL
  if (ePosX>550)
  {
  ballActivated=false;
  ePosX=ePosX-480;
  yDir = +3;
  ePosY=ePosY+yDir;
  }

  //SCOREBOARD
  if ((ePosX>525 && ePosX<600) && (ePosY>200 && ePosY<400))
  {
  score += 1;
  fill(0,255,0,255);
  textSize(60);
  text("GOAL", width/2-100, height/2);
  noFill();
  }
  if ((ePosX>525 && ePosX<600) && (ePosY<200 || ePosY>400))
  {
  score = 0;
  fill(255,0,0,255);
  textSize(60);
  text("GAME OVER", width/2-200, height/2);
  noFill();
  }
}

  //VOID EVENTS
void mouseClicked()
   {
ballActivated = true;
    }

void keyReleased()
 { 
  
  if (key == 's' || key == 'S')
    HARD = true;
    EASY = false;

  if (key == 'd' || key == 'D')
    HARD = false;
    EASY = true;
 }
