float balX, balY;
float balSnelheidX, balSnelheidY;
float balDiameter = 20;
float paddleHoogte = 100;
float paddleBreedte = 10;
float paddleY1, paddleY2;
int scoreSpeler1 = 0;
int scoreSpeler2 = 0;

void setup() {
  size(800, 600);
  resetBal(); // Bal initialiseren
  paddleY1 = height / 2 - paddleHoogte / 2; // Plaats het linkerbatje in het midden
  paddleY2 = height / 2 - paddleHoogte / 2; // Plaats het rechterbatje in het midden
}

void draw() {
  background(0);

  // Beweeg de bal
  balX += balSnelheidX;
  balY += balSnelheidY;

  // Controleer botsingen met de randen
  if (balY <= 0 || balY >= height) {
    balSnelheidY *= -1; // Omkeren van de verticale snelheid
  }

  // Controleer botsing met de batjes
  if (balX <= paddleBreedte && balY >= paddleY1 && balY <= paddleY1 + paddleHoogte) {
    balSnelheidX *= -1; // Omkeren van de horizontale snelheid
  }
  if (balX >= width - paddleBreedte && balY >= paddleY2 && balY <= paddleY2 + paddleHoogte) {
    balSnelheidX *= -1; // Omkeren van de horizontale snelheid
  }

  // Teken de bal
  ellipse(balX, balY, balDiameter, balDiameter);

  // Teken de batjes
  rect(0, paddleY1, paddleBreedte, paddleHoogte); // Linkerbatje
  rect(width - paddleBreedte, paddleY2, paddleBreedte, paddleHoogte); // Rechterbatje

  // Teken het scorebord
  fill(255);
  textSize(32);
  text("Speler 1: " + scoreSpeler1, 50, 50);
  text("Speler 2: " + scoreSpeler2, width - 200, 50);

  checkScore();
}

void resetBal() {
  balX = width / 2;
  balY = height / 2;
  balSnelheidX = random(3, 5);
  balSnelheidY = random(3, 5);
}

// Input voor spelers
void keyPressed() {
  if (key == 'w') {
    paddleY1 -= 10; // Verplaats het linkerbatje omhoog
  } else if (key == 's') {
    paddleY1 += 10; // Verplaats het linkerbatje omlaag
  }
  if (keyCode == UP) {
    paddleY2 -= 10; // Verplaats het rechterbatje omhoog
  } else if (keyCode == DOWN) {
    paddleY2 += 10; // Verplaats het rechterbatje omlaag
  }
}

// Controleer op score
void checkScore() {
  if (balX <= 0) {
    scoreSpeler2++;
    resetBal();
  }
  if (balX >= width) {
    scoreSpeler1++;
    resetBal();
  }
}
