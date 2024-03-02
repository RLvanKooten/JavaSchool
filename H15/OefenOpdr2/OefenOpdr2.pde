class Person {
  String naam;
  int leeftijd;
  String geslacht;

  Person(String naam, int leeftijd, String geslacht) {
    this.naam = naam;
    this.leeftijd = leeftijd;
    this.geslacht = geslacht;
  }

  void Weergeven() {
    println(naam, leeftijd, geslacht);
  }
}

void setup() {
    Person persoon1 = new Person("Johnny", 30, "M");
    persoon1.Weergeven();
}
