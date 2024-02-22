void setup() {
  size(500, 500);
  mijnMethode(5,7);
}

void draw() {
}

void mijnMethode(int cijferEen, int cijferTwee) {
  float gemiddeldeCijfer = (cijferEen+cijferTwee)/2;

  println("Het gemiddelde is: "+gemiddeldeCijfer);
}
