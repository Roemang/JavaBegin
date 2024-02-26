int yWaarde = 0;
int xWaarde = 0;

size(500, 500);
background(255, 255, 255);

//for(int i = 0; i < 5; i++){
//rect(xWaarde, yWaarde, 10, 10);
//xWaarde = xWaarde +10;
//yWaarde = yWaarde +10;




for (int x = 0; x < 10; x++) {
  //rect(i*0, i*10, 10, 10);
  for (int y = 0; y < 10; y++) {

    if ((x+y) % 2 == 0) {
      fill(0, 0, 0);
    } else {
      fill(255, 255, 255);
    }
    rect(x*10, y*10, 10, 10);
  }
}
