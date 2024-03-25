//Speedster7000
import controlP5.*;
ControlP5 cp;

PImage BackgroundImg;
PImage PlayerAuto;
PImage obstakel1;
PImage obstakel2;
PImage obstakel3;
PImage obstakel4;

int lives = 3;
boolean Doorgaan = true;

//variabelen score en tijd
int Score;
int VorigUpdateTijd = 0;
int IntervalUpdateScore = 250; 


//initialisering van knop en objecen
Button ResetKnop;
SpelerAuto Auto1;
TeOntwijkenObjecten Object1;
TeOntwijkenObjecten Object2;
TeOntwijkenObjecten Object3;
TeOntwijkenObjecten Object4;
TeOntwijkenObjecten Object5;


void setup() {
  size(700, 700);
  cp = new ControlP5(this);
  Auto1 = new SpelerAuto();
  Object1 = new TeOntwijkenObjecten();
  Object2 = new TeOntwijkenObjecten();
  Object3 = new TeOntwijkenObjecten();
  Object4 = new TeOntwijkenObjecten();
  Object5 = new TeOntwijkenObjecten();

  BackgroundImg = loadImage("BackgroundSpeedster.png");
  PlayerAuto = loadImage("AutoSpeler.png");

  ResetKnop = cp.addButton("ResetKnop")
    .setPosition(265, 470)
    .setSize(175, 50)
    .setColorLabel(color(255))
    .setCaptionLabel("Start de game opnieuw")
    .setColorBackground(color(0))
    .setColorBackground(color(0))
    .setColorForeground(color(172, 175, 173))
    .setColorActive(color(105, 242, 165));

  ResetKnop.hide();
}


void draw() {
  background(BackgroundImg);
  if (Doorgaan == true) {
    StartGame();
    if (lives == 0) {
      Doorgaan = false;
    }
  } else if (Doorgaan == false) {
    GameOverScherm();
  }
}


/*Methodes*/
void keyPressed() {
  if (keyCode == UP) {
    Auto1.PijltjeOmhoog = true;
  } else if (keyCode == DOWN) {
    Auto1.PijltjeOmlaag = true;
  } else if (keyCode == LEFT) {
    Auto1.PijltjeLinks = true;
  } else if (keyCode == RIGHT) {
    Auto1.PijltjeRechts = true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    Auto1.PijltjeOmhoog = false;
  } else if (keyCode == DOWN) {
    Auto1.PijltjeOmlaag = false;
  } else if (keyCode == LEFT) {
    Auto1.PijltjeLinks = false;
  } else if (keyCode == RIGHT) {
    Auto1.PijltjeRechts = false;
  }
}




void StartGame() {
  
  Auto1.teken();
  Auto1.beweeg(Auto1.PijltjeOmhoog, Auto1.PijltjeOmlaag, Auto1.PijltjeLinks, Auto1.PijltjeRechts);// besturen aut
  Auto1.ApplicatieLimietDetectie();
  
  Object1.ObjectTekenen();
  Object1.ObjectenBewegen();
  
  Object2.ObjectTekenen();
  Object2.ObjectenBewegen();
  
  Object3.ObjectTekenen();
  Object3.ObjectenBewegen();
  
  Object4.ObjectTekenen();
  Object4.ObjectenBewegen();
  
  Object5.ObjectTekenen();
  Object5.ObjectenBewegen();
  infoScherm();

  
  //collision checken
  if (CheckCollision(Auto1, Object1) || CheckCollision(Auto1, Object2) || CheckCollision(Auto1, Object3) || CheckCollision(Auto1, Object4)) {
    lives -= 1;
    Object1.ResetObject();
    Object2.ResetObject();
    Object3.ResetObject();
    Object4.ResetObject();
    Object5.ResetObject();
    Auto1.ResetAuto();
  }

  //Score updaten zolang de lives boven nul zijn.
  for (int i = 0; i<=lives; i++) {
    if (millis() - VorigUpdateTijd >= IntervalUpdateScore) {
      VorigUpdateTijd = millis(); // Update de laatste tijd waarop de score is bijgewerkt
      Score += 50; // Voeg score toe
    }
  }
}

//methode om te checken of er een collision is tussen de spelerobject en de obstakels
boolean CheckCollision(SpelerAuto auto, TeOntwijkenObjecten object) {
  if (auto.xWaardeHitbox + auto.BreedteHitbox >= object.xWaardeHitbox && object.xWaardeHitbox + object.BreedteHitbox >= auto.xWaardeHitbox
    && auto.yWaardeHitbox + auto.HoogteHitbox >= object.yWaardeHitbox && object.yWaardeHitbox + object.HoogteHitbox >= auto.yWaardeHitbox) {
    return true;
  } else {
    return false;
  }
}


//info scherm waar je lives en score worden weergegeven.
void infoScherm() {
  fill(255);
  rect(550, 0, 150, 100);
  fill(0);
  textAlign(LEFT);
  textSize(15);
  text("Score: "+Score, 570, 40);
  text("Lives left: "+ lives, 570, 70);
}


// Popup die wordt weergegeven als je levens op zijn.
void GameOverScherm() {
  fill(255);
  rect(200, 350, 300, 200);
  fill(0);
  textSize(35);
  textAlign(CENTER);
  text("Game Over", 350, 410);
  textSize(15);
  textAlign(CENTER);
  text("Jouw score is: "+Score, 350, 445);

  ResetKnop.show();
}

//Knop om spel te herstarten
void ResetKnop() {
  Doorgaan = true;
  Auto1.ResetAuto();
  ResetKnop.hide();
  lives = 3;
  Score = 0;
}
