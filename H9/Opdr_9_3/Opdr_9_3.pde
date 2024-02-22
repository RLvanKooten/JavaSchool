int mijnGetal;

void setup() {
  size(500, 500);
  println(mijnMethode(10,20));
  mijnGetal = mijnMethode(15,45);
  println(mijnGetal);
}

void draw() {
}

int mijnMethode(int cijferEen, int cijferTwee) {
  int antwoord;
  
  antwoord = (cijferEen+cijferTwee)/2;

  return antwoord;
}
