

void setup() {
  String zin = CompleteTekst("Hoi", "dit", "is", "samengevoegd");
  println(zin);
}

void draw() {
}

String CompleteTekst(String tekst1, String tekst2, String tekst3, String tekst4) {
  String SamengevoegdeTekst;
  SamengevoegdeTekst = tekst1 + " " + tekst2 + " " + tekst3 + " " + tekst4;
  return SamengevoegdeTekst;
}
