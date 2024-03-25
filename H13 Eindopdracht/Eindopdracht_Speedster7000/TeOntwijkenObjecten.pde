class TeOntwijkenObjecten {

  float xWaardeObject = random(width);
  float yWaardeObject = 0;
  int BreedteObject = 80;
  int HoogteObject = 140;

  float xWaardeHitbox = xWaardeObject+10; //325
  float yWaardeHitbox = yWaardeObject+10; //310
  int BreedteHitbox = 58;
  int HoogteHitbox = 124;

  float snelheid = random(2.5, 5);

  PImage[] images = new PImage[4];
  int RandomIndex = int(random(images.length));
  PImage HuidigeAfbeelding;

  TeOntwijkenObjecten() {
    images[0] = loadImage("AutoObstakel1.png");
    images[1] = loadImage("AutoObstakel2.png");
    images[2] = loadImage("AutoObstakel3.png");
    images[3] = loadImage("AutoObstakel4.png");
    HuidigeAfbeelding = images[RandomIndex];
  }

  void ObjectTekenen() {
    rect(xWaardeHitbox, yWaardeHitbox, BreedteHitbox, HoogteHitbox);
    image(HuidigeAfbeelding, xWaardeObject, yWaardeObject, BreedteObject, HoogteObject);
  }

  void ObjectenBewegen() {
    yWaardeObject += snelheid;
    yWaardeHitbox += snelheid;
    if (yWaardeObject >=height) {
      yWaardeObject = 0;
      xWaardeObject = random(width);
      yWaardeHitbox = yWaardeObject+10;
      xWaardeHitbox = xWaardeObject +10;
    }
  }
  void ResetObject() {
    yWaardeObject = 0;
    xWaardeObject = random(width);
    xWaardeHitbox = xWaardeObject+10;
    yWaardeHitbox = yWaardeObject+10;
    }
}
