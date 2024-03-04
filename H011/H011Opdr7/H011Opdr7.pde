int[] myArray = {1, 2, 3, 4, 5, 2, 3, 4, 5, 6};

void setup() {

  println("Aantal keer 5 komt voor: " + telHoeVaakGetalVoorkomt(5));
  println("Aantal keer 2 komt voor: " + telHoeVaakGetalVoorkomt(2));
}

int telHoeVaakGetalVoorkomt(int getal) {
  int occurrences = 0;
  for (int i = 0; i < myArray.length; i++) {
    if (myArray[i] == getal) {
      occurrences++;
    }
  }
  return occurrences;
}
