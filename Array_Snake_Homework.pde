int num = 50;
int[] x = new int[num];
int[] y = new int[num];
int indexPosition = 0;
Snake [] SnakeArray = new Snake[3];

void setup() {
  size(1000, 1000);
  noStroke();
  fill(255, 102);
}

void draw() {
  background(0);
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  
    for (int i = 0; i<SnakeArray.length; i++) {
  SnakeArray[i] = new Snake();
  SnakeArray[i].display(random(0,255),random(0,255),random(0,255));
  }
}
