//Speedster7000
import controlP5.*;
ControlP5 cp;

PImage BackgroundImg;
PImage PlayerAuto;
int lives = 3;
boolean Doorgaan = true;

int Score;
int VorigUpdateTijd = 0;
int IntervalUpdateScore = 250;

Button ResetKnop;
SpelerAuto Auto1;
TeOntwijkenObjecten[] object = new TeOntwijkenObjecten[5];


void setup() {
  size(700, 700);
  cp = new ControlP5(this);
  Auto1 = new SpelerAuto();
  for (int i = 0; i<object.length; i++) {
    object[i] =  new TeOntwijkenObjecten();
  }


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

  for (int i = 0; i<object.length; i++) {
    object[i].ObjectTekenen();
    object[i].ObjectenBewegen();
  }
  infoScherm();

  for (int i =  0; i<object.length; i++) {
    if (CheckCollision(Auto1, object[i])) {
      lives -= 1;
      object[0].ResetObject();
      object[1].ResetObject();
      object[2].ResetObject();
      object[3].ResetObject();
      object[4].ResetObject();
      Auto1.ResetAuto();
    }
  }

  for (int i = 0; i<=lives; i++) {
    if (millis() - VorigUpdateTijd >= IntervalUpdateScore) {
      VorigUpdateTijd = millis();
      Score += 50;
    }
  }
}


boolean CheckCollision(SpelerAuto auto, TeOntwijkenObjecten object) {
  if (auto.xWaardeHitbox + auto.BreedteHitbox >= object.xWaardeHitbox && object.xWaardeHitbox + object.BreedteHitbox >= auto.xWaardeHitbox
    && auto.yWaardeHitbox + auto.HoogteHitbox >= object.yWaardeHitbox && object.yWaardeHitbox + object.HoogteHitbox >= auto.yWaardeHitbox) {
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
  text("Score: "+Score, 570, 40);
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
  text("Jouw score is: "+Score, 350, 445);

  ResetKnop.show();
}


void ResetKnop() {
  Doorgaan = true;
  Auto1.ResetAuto();
  ResetKnop.hide();
  lives = 3;
  Score = 0;
}
