class Bubble{
  
  float x;
  float y;
  float diameter;
  float yspeed;
  float ydirection=1;
  
  Bubble(){
 x = random(200,400); //positions on axis
 y = random(0,400);
 diameter = 40;
  }
  
  void display(){
  x=x+random(-3,3);
  y=y+random(-3,3);
  stroke(0);
  fill(127);
  ellipse(x,y,diameter,diameter);
  }
  
  void move(){
  y = y+1;
  if (y>height){
  y = -ydirection;}
  
  if (y < 0){
  y = +y; 
  }
  
  //void direction(){
  
  //}
  
  }
  
}
