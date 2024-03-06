int xWaarde = 175;
int yWaarde = 175;
int Breedte = 50;
int hoogte = 50;


void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  background(255);
  fill(255, 0, 0);
  rect(xWaarde, yWaarde, Breedte, hoogte);
}

void keyPressed() {
  if (keyCode == 38) {
    //pijltje Omhoog
    yWaarde -= 10;
  } else if (keyCode == 40) {
    //pijltje Omlaag
    yWaarde += 10;
  } else if (keyCode == 39) {
    //pijltje Rechts
    xWaarde += 10;
  } else if (keyCode == 37) {
    //pijltje links
    xWaarde -= 10;
  }
}
