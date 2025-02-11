int mode; 

final int pat1 = 0;
final int pat2 = 1;
final int pat3 = 2;

void setup(){
  size(800, 800);
 
}


void draw(){

 
  
  
 int x = -200, y = -100;
 

 while (y<= height){
   x=-200;
 while (x<=width){
    rotate(radians(90));
     s(x, y, 0.5);
     x=x+ 50;
   }
   y=y+ 50;
 }
}


void s(int x, int y, float s){
  pushMatrix();
  translate(x, y);
  scale(s);
  
 
  strokeWeight(20);
  square(200, 200, 150);
  square(400, 200, 150);
  square(200, 400, 150);
  square(400, 400, 150);
  
  square(300, 300, 150);
  
  popMatrix();
  
  
}
