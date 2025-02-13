int mode; 

final int pat1 = 1;
final int pat2 = 2;


void setup(){
  size(800, 800);
 background(0);
}


void draw(){
  //--------------
  
    
  if (mouseX>650 && mouseX<750 && mouseY >350 && mouseY <400){
   fill(#07D9F2); 
  } else{
    fill(0);
  }

   rect(650, 350, 100, 50);
  
  
  
  //---------------------------------------------------------------------
  
  
 int x = -200, y = -500;
 

 while (y<= height){
   x=-200;
 while (x<=width){
   
     s(x, y, 0.1);
     x=x+ 50;
   }
   y=y+ 50;
 }
 
}


void s(int x, int y, float s){
  pushMatrix();
  translate(x, y);
  rotate(radians(45));
  scale(s);
 
 
 
  fill(0, 0);
  stroke(255);
  strokeWeight(3);
  square(200, 200, 150);
  square(400, 200, 150);
  square(200, 400, 150);
  square(400, 400, 150);
  
    //fill(#58FFA4, 50);
  square(300, 300, 150);
  
  popMatrix();
  
  
}


 


void nextpage(){
  if (mouseX>650 && mouseX<750 && mouseY >350 && mouseY <400){
    mode = pat2;
    
 }
}
