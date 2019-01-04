class Snake {

Snake(){


}

void display(float R, float G, float B){
 // Cycle between 0 and the number of elements
 indexPosition = (indexPosition + 1) % num;
 for (int i = 0; i < num; i++) {
    
 // Set the array position to read
 int pos = (indexPosition + i) % num;
 float radius = (num-i) / 2.0;
 fill(R,G,B);
 ellipse(x[pos], y[pos], radius+(random(10,50)), radius+(random(10,50)));
 

  }
  

}

}
