class Person {
  String naam;
  int leeftijd;
  String geslacht;

  Person(String naam, int leeftijd, String geslacht) {
    this.naam = naam;
    this.leeftijd = leeftijd;
    this.geslacht = geslacht;
  }

  void showName() {
    println("Naam: " + naam);
  }

  void showAge() {
    println("Leeftijd: " + leeftijd);
  }
}

void setup() {

  Person person1 = new Person("Linde", 19, "Vrouw");
  Person person2 = new Person("Ronan", 23, "Man");

  person1.showName();
  person1.showAge();

  person2.showName();
  person2.showAge();
}
