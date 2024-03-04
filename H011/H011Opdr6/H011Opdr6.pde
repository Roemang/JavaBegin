int[] myArray = {1, 2, 3, 4, 5, 2, 3, 4, 5, 6};
int searchValue = 2;
int occurrences = 0;

void setup() {
  size(500, 500);
  background(255,255,255);
  textSize(16);
  
  for (int i = 0; i < myArray.length; i++) {
    if (myArray[i] == searchValue) {
      occurrences++;
    }
  }
  
  fill(0);
  text("De waarde " + searchValue + " komt " + occurrences + " keer voor in de array.", 20, height/2);
}
