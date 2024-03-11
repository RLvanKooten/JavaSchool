import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

String TextOuders = "De hoeveelheid ouders zijn: ";
String TextStudenten = "De hoeveelheid mogelijke studenten zijn: ";
String TextTotaal = "Het totaal aantal mensen zijn: ";

int HoeveelheidOuders = 34 ;
int HoeveelheidStudenten;
int totaal;



void setup(){
  cp = new ControlP5(this);
  size(400,400);
  background(255);
  
  
  knop1 = cp.addButton("KnopMogeijkeStudenten")
  .setPosition(250,50)
  .setSize(100,100)
  .setCaptionLabel("Knop Studenten");
  
  knop2 = cp.addButton("KnopHoeveelheidOuders")
  .setPosition(50,50)
  .setSize(100,100)
  .setCaptionLabel("Knop Ouders");
  
  HoeveelheidStudenten = HoeveelheidOuders/2;
  
  totaal = HoeveelheidOuders+HoeveelheidStudenten;
  TextTotaal = TextTotaal+totaal;
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text(TextTotaal,200,300);
}

void draw(){
  
}

void KnopMogeijkeStudenten(){
  TextStudenten = TextStudenten + HoeveelheidStudenten;
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text(TextStudenten,200,220);
}

void KnopHoeveelheidOuders(){
  TextOuders = TextOuders + HoeveelheidOuders;
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text(TextOuders,200,200);
}
