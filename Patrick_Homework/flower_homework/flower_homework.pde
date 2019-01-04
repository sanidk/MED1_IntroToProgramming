Flower myFlower1;
Flower myFlower2;
Flower myFlower3;
Flower [] flowerarray = new Flower [6]; //making flower array - need forloop

 void setup() {
  size(600,400);
  background(#43AF76);
  
  int _r=60;        
  int _nPetals=7;
  float _x=width/2;
  float _y=height/2;
  int _petalColor=#FFA000;
  //temp intergers
  int _velocity=3;
  int _xDir=1;
  int _yDir=1;
   
  myFlower1 = new Flower (_r,_nPetals,_x,_y,_petalColor,_velocity,_xDir,_yDir);
  myFlower2 = new Flower (_r,_nPetals+5,_x+random(-100,100),_y+random(-100,100),_petalColor,_velocity-1,_xDir,_yDir);
  myFlower3 = new Flower (_r,_nPetals+3,_x+random(-200,200),_y+random(-200,200),_petalColor,_velocity+1,_xDir,_yDir);
}
void draw(){
  background(#43AF76);
  
  myFlower1.display();
  myFlower2.display();
  myFlower3.display();
  myFlower1.move();
  myFlower2.move();
  myFlower3.move();
  
}
