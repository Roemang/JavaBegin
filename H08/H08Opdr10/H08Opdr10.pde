int yWaarde = 0;
int xWaarde = 0;

size(500,500);
background(255,255,255);

for(int i = 0; i < 5; i++){
  rect(xWaarde, yWaarde, 10, 10);
  xWaarde = yWaarde +10;
  yWaarde = yWaarde +10;
  
  
}
