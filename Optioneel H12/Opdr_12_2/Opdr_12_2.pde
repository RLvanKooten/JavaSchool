int seconden;
int tijdOver;
int AantalKeerGedrukt = 0;
boolean Doorgaan = true;

void setup(){
  size(400,400);
  
}

void draw(){
  background(255,255,255);
  seconden = millis()/1000;
  tijdOver = 10 - seconden;
  
  if(!Doorgaan){
    tijdOver = 0;
  }
  
  if(seconden >=10){
    Doorgaan = false;
  }
  fill(0,0,0);
  text("Aantal Spatie: "+AantalKeerGedrukt,20,20);
  text("Tijd Over: "+tijdOver,20,40);
  
}

void keyPressed(){
  if(keyCode == 32 && Doorgaan){
    AantalKeerGedrukt++;
  }
}
