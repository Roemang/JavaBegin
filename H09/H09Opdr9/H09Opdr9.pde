void setup() {
  size(800, 600);
  background(220);
  

  tekenBos(100, 400, 0.8);
  tekenBos(400, 450, 1.0);
  tekenBos(700, 380, 0.7);
}

void draw() {

}

void tekenBos(float x, float y, float schaal) {

  fill(139, 69, 19); 
  rect(x, y, 20 * schaal, 100 * schaal);
  

  fill(34, 139, 34); 
  ellipse(x + 10 * schaal, y - 50 * schaal, 100 * schaal, 100 * schaal);
}
