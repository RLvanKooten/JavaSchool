class SpelerAuto {

  boolean PijltjeOmhoog = false;
  boolean PijltjeOmlaag = false;
  boolean PijltjeLinks = false;
  boolean PijltjeRechts = false;
  float stap = 3;

  float xWaardePlayerAuto = 315;
  float yWaardePlayerAuto = 480;
  float schaling = 0.45;
  int BreedtePlayerAuto = int(180* schaling);
  int HoogtePlayerAuto = int(360 * schaling);

  float xWaardeHitbox = xWaardePlayerAuto+17;  //329
  float yWaardeHitbox = yWaardePlayerAuto+15;  //495
  int BreedteHitbox = 46;
  int HoogteHitbox = 132;


  // Methode om de auto te tekenen
  void teken() {
    rect(xWaardeHitbox, yWaardeHitbox, BreedteHitbox, HoogteHitbox);
    noFill();
    image(PlayerAuto, xWaardePlayerAuto, yWaardePlayerAuto, BreedtePlayerAuto, HoogtePlayerAuto);
  }

  // Methode om de auto te laten bewegen
  void beweeg(boolean omhoog, boolean omlaag, boolean links, boolean rechts) {
    if (omhoog) {
      yWaardePlayerAuto -= stap;
      yWaardeHitbox -= stap;
    }
    if (omlaag) {
      yWaardePlayerAuto += stap;
      yWaardeHitbox += stap;
    }
    if (links) {
      xWaardePlayerAuto -= stap;
      xWaardeHitbox -= stap;
    }
    if (rechts) {
      xWaardePlayerAuto += stap;
      xWaardeHitbox += stap;
    }
  }

  void ApplicatieLimietDetectie() {
    if (yWaardeHitbox+HoogteHitbox >=height) {
      yWaardePlayerAuto -= stap;
      yWaardeHitbox -= stap;
    } else if (yWaardeHitbox <=0) {
      yWaardePlayerAuto += stap;
      yWaardeHitbox += stap;
    }


    if (xWaardeHitbox+BreedteHitbox >=width) {
      xWaardePlayerAuto -= stap;
      xWaardeHitbox -= stap;
    } else if (xWaardeHitbox <= 0) {
      xWaardePlayerAuto += stap;
      xWaardeHitbox += stap;
    }
  }

  void ResetAuto() {
    xWaardePlayerAuto = 315;
    yWaardePlayerAuto = 480;
    xWaardeHitbox = xWaardePlayerAuto+17;  
    yWaardeHitbox = yWaardePlayerAuto+15;
    
    
  }
}
