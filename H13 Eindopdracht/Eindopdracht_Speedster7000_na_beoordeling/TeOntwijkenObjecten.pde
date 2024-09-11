class TeOntwijkenObjecten {

  float xWaardeObject = random(width);
  float yWaardeObject = 0;
  int breedteObject = 80;
  int hoogteObject = 140;

  float xWaardeHitbox = xWaardeObject+10; //325
  float yWaardeHitbox = yWaardeObject+10; //310
  int breedteHitbox = 58;
  int hoogteHitbox = 124;

  float snelheid = random(2.5, 5);

  int randomIndex = int(random(4));
  PImage huidigeAfbeelding;

  TeOntwijkenObjecten() {
    huidigeAfbeelding = loadImage("AutoObstakel"+(randomIndex+1)+".png");
  }

  void objectTekenen() {
    rect(xWaardeHitbox, yWaardeHitbox, breedteHitbox, hoogteHitbox);
    image(huidigeAfbeelding, xWaardeObject, yWaardeObject, breedteObject, hoogteObject);
  }

  void objectenBewegen() {
    yWaardeObject += snelheid;
    yWaardeHitbox += snelheid;
    if (yWaardeObject >=height) {
      yWaardeObject = 0;
      xWaardeObject = random(width);
      yWaardeHitbox = yWaardeObject+10;
      xWaardeHitbox = xWaardeObject +10;
    }
  }
  void resetObject() {
    yWaardeObject = 0;
    xWaardeObject = random(width);
    xWaardeHitbox = xWaardeObject+10;
    yWaardeHitbox = yWaardeObject+10;
  }
}
