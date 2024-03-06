int Seconden;
int MilliSeconden;
boolean Doorgaan = true;


void setup() {
  size(200, 200);
  frameRate(60);
  textAlign(CENTER, CENTER);
  textSize(20);
}

void draw() {
  background(255, 255, 255);
  Seconden = millis()/1000;
  //MilliSeconden = 1000 + (millis()%10000);
  MilliSeconden = millis()%1000;
  fill(0);
  String tijd = nf(Seconden, 2) + ":" + nf(MilliSeconden,2);
  text("Seconden : " + tijd, width/2, height/2);
  if (!Doorgaan) {
    noLoop();
  }
}



void keyReleased() {
  if (keyCode == 32) {
    Doorgaan = false;
  }else{ Doorgaan =true;}
}
