import controlP5.*;

ControlP5 cp;

Button knop1;
Textfield tekstveld1;

void setup() {
  size(400, 400);
  background(255);
  cp = new ControlP5(this);

  knop1 = cp.addButton("Knop1")
    .setPosition(50, 50)
    .setSize(50, 50)
    .setCaptionLabel("Hello");
    
   tekstveld1 = cp.addTextfield("tekstveld1")
   .setPosition(50,150)
   .setAutoClear(false)
   .setSize(150,50)
   .setCaptionLabel("Zet hier het bedrag in dat je wilt berekenen")
   .setColorLabel(color(0));
}

void draw(){
  
}

void Knop1(){
  int getal;
  float antwoord;
  
  getal = Integer.valueOf(tekstveld1.getText());
  antwoord = getal * 1.21;
  println("Het antwoord is: "+nf(antwoord,0,2));
  
}
