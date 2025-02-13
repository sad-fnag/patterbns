
int x, y;
int d;



void pat2 (){
  background(255);
noStroke();
  size(800, 800);
  x = y = d = 0;
  
  
    while (d < 50) {
    star(x, y);
    x = x+ 160;
    d++;
    if (x > 800){
      y = y + 160;
      x = 0;
    }
  }
}


  
 void star(int x, int y) {
  pushMatrix();
  translate(x, y);
  Cell(.2);
  popMatrix();
}
 


void Cell(float scale) {
  float centerX = 400 * scale, centerY = 400 * scale; // Center point
  
  for (int i = 0; i < 4; i++) { // 4 rotations
    pushMatrix();
    translate(centerX, centerY); // Move to center
    rotate(radians(90 * i)); // Rotate 90 degrees each iteration
    
    // sides
    drawSide(scale);
    
    // angles
    drawAngle(scale);
    
    popMatrix();
  }
}

void drawSide(float scale) {
  fill(150);
  triangle(0, 0, -100 * scale, -100 * scale, 0, -400 * scale);
  
  fill(0);
  triangle(0, 0, 100 * scale, -100 * scale, 0, -400 * scale);
}

void drawAngle(float scale) {
  fill(150);
  triangle(-400 * scale, 0, -400 * scale, -400 * scale, -300 * scale, -300 * scale);
  
  fill(0);
  triangle(0, -400 * scale, -400 * scale, -400 * scale, -300 * scale, -300 * scale);
}
