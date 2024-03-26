class Bal {
  float x, y;
  float snelheidX, snelheidY;
  float diameter;

  Bal(float x, float y, float snelheidX, float snelheidY, float diameter) {
    this.x = x;
    this.y = y;
    this.snelheidX = snelheidX;
    this.snelheidY = snelheidY;
    this.diameter = diameter;
  }

  void beweeg() {
    x += snelheidX;
    y += snelheidY;
  }

  void controleerBotsingMetWanden() {
    if (y <= 0 || y >= height) {
      snelheidY *= -1; // Omkeren van de verticale snelheid
    }
  }

  void teken() {
    ellipse(x, y, diameter, diameter);
  }

  void reset(float startX, float startY, float speedX, float speedY) {
    x = startX;
    y = startY;
    snelheidX = speedX;
    snelheidY = speedY;
  }
}

class Batje {
  float x, y;
  float hoogte, breedte;
  float snelheid;

  Batje(float x, float y, float hoogte, float breedte, float snelheid) {
    this.x = x;
    this.y = y;
    this.hoogte = hoogte;
    this.breedte = breedte;
    this.snelheid = snelheid;
  }

  void beweeg(int richting) {
    y += richting * snelheid;
    y = constrain(y, 0, height - hoogte); // Houd batje binnen grenzen
  }

  void teken() {
    rect(x, y, breedte, hoogte);
  }
}

Bal[] ballen;
Batje linkerBatje, rechterBatje;
int scoreSpeler1 = 0;
int scoreSpeler2 = 0;
float batjeHoogte = 100;
float batjeBreedte = 10;

void setup() {
  size(800, 600);
  ballen = new Bal[1]; // Array voor 3 ballen
  for (int i = 0; i < ballen.length; i++) {
    ballen[i] = new Bal(random(width), random(height), random(-5, 5), random(-5, 5), 20);
  }
  
  linkerBatje = new Batje(0, height / 2 - batjeHoogte / 2, batjeHoogte, batjeBreedte, 10);
  rechterBatje = new Batje(width - batjeBreedte, height / 2 - batjeHoogte / 2, batjeHoogte, batjeBreedte, 10);
}

void draw() {
  background(0);

  for (int i = 0; i < ballen.length; i++) {
    ballen[i].beweeg();
    ballen[i].controleerBotsingMetWanden();
    ballen[i].teken();
    controleerBotsingMetBatjes(ballen[i]);
  }

  linkerBatje.teken();
  rechterBatje.teken();

  tekenScore();

  controleerScore();
}

void tekenScore() {
  fill(255);
  textSize(32);
  text("Speler 1: " + scoreSpeler1, 50, 50);
  text("Speler 2: " + scoreSpeler2, width - 200, 50);
}

void controleerScore() {
  for (int i = 0; i < ballen.length; i++) {
    if (ballen[i].x <= 0) {
      scoreSpeler2++;
      ballen[i].reset(width / 2, height / 2, random(3, 5), random(3, 5));
    }
    if (ballen[i].x >= width) {
      scoreSpeler1++;
      ballen[i].reset(width / 2, height / 2, random(-5, -3), random(-5, 5));
    }
  }
}

void controleerBotsingMetBatjes(Bal bal) {
  if ((bal.x <= linkerBatje.x + linkerBatje.breedte && bal.x >= linkerBatje.x) &&
      (bal.y >= linkerBatje.y && bal.y <= linkerBatje.y + linkerBatje.hoogte)) {
    bal.snelheidX *= -1; // Omkeren van de horizontale snelheid
  }
  
  if ((bal.x + bal.diameter >= rechterBatje.x && bal.x + bal.diameter <= rechterBatje.x + rechterBatje.breedte) &&
      (bal.y >= rechterBatje.y && bal.y <= rechterBatje.y + rechterBatje.hoogte)) {
    bal.snelheidX *= -1; // Omkeren van de horizontale snelheid
  }
}

void keyPressed() {
  if (key == 'w') {
    linkerBatje.beweeg(-1); // Verplaats linker batje omhoog
  } else if (key == 's') {
    linkerBatje.beweeg(1); // Verplaats linker batje omlaag
  }
  if (keyCode == UP) {
    rechterBatje.beweeg(-1); // Verplaats rechter batje omhoog
  } else if (keyCode == DOWN) {
    rechterBatje.beweeg(1); // Verplaats rechter batje omlaag
  }
}
