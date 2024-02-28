

void setup(){
  size(500,500); 
  
}


void draw(){
  background(0,0,0);
  //rect(100,100,100,100);
  stroke(255,255,255);
  vierkant(80,100,20,100);
  
}

void vierkant(int x, int y, int w, int h){
  //boven lijn
  line(x,y,x+w,y);
  //onderste lijn
  line(x,y+h,x+w,y+h);
  //links lijn
  line(x,y,x,y+h);
  //rechts lijn
  line(x+w,y,x+w,y+h);
}
