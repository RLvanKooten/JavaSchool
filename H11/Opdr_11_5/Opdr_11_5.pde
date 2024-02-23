String ZoekNaam = "Jan";
String naam[] = {"Peter","Kevin","Julie", "Bobbi","Jamy","Rob","Jan","Robin"};
boolean gevonden = false;

void setup() {
  for (int i = 0; i < naam.length; i++) {
    if (naam[i] == ZoekNaam) {
      gevonden = true;
      println("De volgende naam staat in de Array: "+ZoekNaam);
    }
  }
}
