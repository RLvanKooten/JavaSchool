//Speedster7000
import controlP5.*;
ControlP5 cp;

PImage backgroundImg;
PImage playerAuto;
int lives = 3;
boolean doorgaan = true;

int score;
int vorigUpdateTijd = 0;
int intervalUpdateScore = 250;

Button resetKnop;
SpelerAuto auto1;
TeOntwijkenObjecten[] object = new TeOntwijkenObjecten[5];


void setup() {
  size(700, 700);
  cp = new ControlP5(this);
  auto1 = new SpelerAuto();
  for (int i = 0; i<object.length; i++) {
    object[i] =  new TeOntwijkenObjecten();
  }


  backgroundImg = loadImage("BackgroundSpeedster.png");
  playerAuto = loadImage("AutoSpeler.png");

  resetKnop = cp.addButton("resetKnop")
    .setPosition(265, 470)
    .setSize(175, 50)
    .setColorLabel(color(255))
    .setCaptionLabel("Start de game opnieuw")
    .setColorBackground(color(0))
    .setColorBackground(color(0))
    .setColorForeground(color(172, 175, 173))
    .setColorActive(color(105, 242, 165));

  resetKnop.hide();
}


void draw() {
  background(backgroundImg);
  if (doorgaan == true) {
    uitvoerenGame();
    if (lives == 0) {
      doorgaan = false;
    }
  } else if (doorgaan == false) {
    GameOverScherm();
  }
}


/*Methodes*/
void keyPressed() {
  //Hier even naar kijken...
  if (keyCode == UP) {
    auto1.richtingOmhoog = true;
  } else if (keyCode == DOWN) {
    auto1.richtingOmlaag = true;
  } else if (keyCode == LEFT) {
    auto1.richtingLinks = true;
  } else if (keyCode == RIGHT) {
    auto1.richtingRechts = true;
  }
}

void keyReleased() {
  //Hier even naar kijken...
  if (keyCode == UP) {
    auto1.richtingOmhoog = false;
  } else if (keyCode == DOWN) {
    auto1.richtingOmlaag = false;
  } else if (keyCode == LEFT) {
    auto1.richtingLinks = false;
  } else if (keyCode == RIGHT) {
    auto1.richtingRechts = false;
  }
}




void uitvoerenGame() {
  auto1.teken();
  auto1.beweeg(auto1.richtingOmhoog, auto1.richtingOmlaag, auto1.richtingLinks, auto1.richtingRechts); //Hier even naar kijken...
  auto1.applicatieLimietDetectie();

  for (int i = 0; i<object.length; i++) {
    object[i].objectTekenen();
    object[i].objectenBewegen();
  }
  infoScherm();

  for (int i =  0; i<object.length; i++) {
    if (CheckCollision(auto1, object[i])) {
      lives -= 1;
      object[0].resetObject();
      object[1].resetObject();
      object[2].resetObject();
      object[3].resetObject();
      object[4].resetObject();
      auto1.resetAuto();
    }
  }

  for (int i = 0; i<=lives; i++) {
    if (millis() - vorigUpdateTijd >= intervalUpdateScore) {
      vorigUpdateTijd = millis();
      score += 50;
    }
  }
}


boolean CheckCollision(SpelerAuto auto, TeOntwijkenObjecten object) {
  if (auto.xWaardeHitbox + auto.breedteHitbox >= object.xWaardeHitbox && object.xWaardeHitbox + object.breedteHitbox >= auto.xWaardeHitbox
    && auto.yWaardeHitbox + auto.hoogteHitbox >= object.yWaardeHitbox && object.yWaardeHitbox + object.hoogteHitbox >= auto.yWaardeHitbox) {
    return true;
  } else {
    return false;
  }
}

void infoScherm() {
  fill(255);
  rect(550, 0, 150, 100);
  fill(0);
  textAlign(LEFT);
  textSize(15);
  text("Score: "+score, 570, 40);
  text("Lives left: "+ lives, 570, 70);
}

void GameOverScherm() {
  fill(255);
  rect(200, 350, 300, 200);
  fill(0);
  textSize(35);
  textAlign(CENTER);
  text("Game Over", 350, 410);
  textSize(15);
  textAlign(CENTER);
  text("Jouw score is: "+score, 350, 445);
  resetKnop.show();
}


void resetKnop() {
  doorgaan = true;
  auto1.resetAuto();
  resetKnop.hide();
  lives = 3;
  score = 0;
}
