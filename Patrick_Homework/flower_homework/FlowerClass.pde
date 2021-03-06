class Flower{
 
  //Variables
  
  float r; //radius of flower
  int nPetals; // number of petals
  float x; // x position of middleFlower
  float y; // y position of middleFlower
  int petalColor;
  
  //move intergers
  int velocity; // speed
  int xDir; // direction x
  int yDir; // direction y
  
  
  Flower (float temp_r,int temp_nPetals, float temp_x, float temp_y, int temp_petalColor, int temp_velocity, int temp_xDir, int temp_yDir) {
    r=temp_r;
    nPetals=temp_nPetals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
    
    // temp functions
    velocity=temp_velocity;
    xDir=temp_xDir;
    yDir=temp_yDir;
  }
void display(){
    float ballX;
    float ballY;
   
    fill(petalColor);
    for (float i=0;i<PI*2;i+=2*PI/nPetals) {

  ballX=x+ r*cos(i); 
  ballY=y + r*sin(i); 
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
  move();
  }
// void velocity function  
  void move(){
    x = x + (velocity * xDir); //x velocity
    y = y + (velocity * yDir); //y velocity 
    
        // change direction of x
       if (x > width-r || x < r) {
       xDir *= -1; 
    }
      // change direction of y
      if (y > height-r || y < r) {
      yDir *= -1; 
    }

  }
}
