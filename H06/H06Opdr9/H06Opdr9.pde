float cijfer = 5.7;
float cijferTwee = 5.7;
boolean diplomacijferEen = false;
boolean diplomacijferTwee = false;

if (cijfer >= 5.5) {
  diplomacijferEen = true;
}

if (cijferTwee >= 5.5) {
  diplomacijferTwee = true;
}


if (diplomacijferEen == true && diplomacijferTwee == true) {
  println("Je bent geslaagd!");
} else if (diplomacijferEen == false || diplomacijferTwee == false){
  println("je bent gezakt");
}
