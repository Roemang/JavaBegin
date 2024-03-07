class Rectangle {
  float x, y;
  float width, height;

  Rectangle(float x, float y, float width, float height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  void draw() {
    rect(x, y, width, height);
  }
}

void setup() {
  size(400, 400);
  background(255);

  Rectangle rect1 = new Rectangle(100, 100, 50, 80);
  rect1.draw();
}
