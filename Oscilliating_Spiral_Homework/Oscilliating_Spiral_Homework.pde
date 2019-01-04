float r = 0; //change for distance between each row? increase=bigger spiral
float theta = 0; //angular distance between circles
float noiseScale = noise(r)*10; //deciding on the noise
float rChange = 0.1; //the space that each circle will move away from the previous
float thetaSpeed = 0.5; //the speed of cosinus and sinus circle

void setup(){
size(400,400);
background(255);
}

void draw(){
float x = r * cos(theta);
float y = r * sin(theta);

noStroke();
fill(cos(theta)*100+100,cos(theta)*100+160,255); //constant blue color, red and green changing according to cosinus positions
ellipse(x+width/2,y+height/2,20,20);

r+=rChange;
theta +=thetaSpeed;

}
