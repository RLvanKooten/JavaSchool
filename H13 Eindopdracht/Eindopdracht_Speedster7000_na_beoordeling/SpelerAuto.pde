class SpelerAuto {

  boolean richtingOmhoog = false;//Hier even naar kijken...
  boolean richtingOmlaag = false;//Hier even naar kijken...
  boolean richtingLinks = false;//Hier even naar kijken...
  boolean richtingRechts = false;//Hier even naar kijken...
  
  float stap = 3;

  float xWaardeAuto = 315;
  float yWaardeAuto = 480;
  float schaling = 0.45;
  int breedteAuto = int(180* schaling);
  int hoogteAuto = int(360 * schaling);

  float xWaardeHitbox = xWaardeAuto+17;  
  float yWaardeHitbox = yWaardeAuto+15;  
  int breedteHitbox = 46;
  int hoogteHitbox = 132;


  
  void teken() {
    rect(xWaardeHitbox, yWaardeHitbox, breedteHitbox, hoogteHitbox);
    noFill();
    image(playerAuto, xWaardeAuto, yWaardeAuto, breedteAuto, hoogteAuto);
  }

  
  void beweeg(boolean omhoog, boolean omlaag, boolean links, boolean rechts) {
    if (omhoog) {
      yWaardeAuto -= stap;
      yWaardeHitbox -= stap;
    }
    if (omlaag) {
      yWaardeAuto += stap;
      yWaardeHitbox += stap;
    }
    if (links) {
      xWaardeAuto -= stap;
      xWaardeHitbox -= stap;
    }
    if (rechts) {
      xWaardeAuto += stap;
      xWaardeHitbox += stap;
    }
  }
  
  void autoOmhoog(){
  }
  
  void autoOmlaag(){
  }
  
  void autoRechts(){
  }
  
  void autoLinks(){
  }
  
  

  void applicatieLimietDetectie() {
    if (yWaardeHitbox+hoogteHitbox >=height) {
      yWaardeAuto -= stap;
      yWaardeHitbox -= stap;
    } else if (yWaardeHitbox <=0) {
      yWaardeAuto += stap;
      yWaardeHitbox += stap;
    }


    if (xWaardeHitbox+breedteHitbox >=width) {
      xWaardeAuto -= stap;
      xWaardeHitbox -= stap;
    } else if (xWaardeHitbox <= 0) {
      xWaardeAuto += stap;
      xWaardeHitbox += stap;
    }
  }

  void resetAuto() {
    xWaardeAuto = 315;
    yWaardeAuto = 480;
    xWaardeHitbox = xWaardeAuto+17;  
    yWaardeHitbox = yWaardeAuto+15;
    
    
  }
}
