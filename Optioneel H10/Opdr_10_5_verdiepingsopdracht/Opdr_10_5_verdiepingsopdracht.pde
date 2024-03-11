import controlP5.*;

ControlP5 cp;

Button knopKeer;
Button knopDelen;
Button knopPlus;
Button knopMin;
Textfield cijferVeld1;
Textfield cijferVeld2;

float waarde1;
float waarde2;
float totaal;
String antwoord;

void setup() {
  size(500, 250);
  background(255);
  cp = new ControlP5(this);
  
  knopKeer = cp.addButton("KnopKeer")
    .setPosition(300, 70)
    .setSize(30, 40)
    .setColorBackground(color(203,201,201))
    .setColorForeground(color(170,168,168))
    .setColorActive(color(193, 189, 189))
    .setColorLabel(color(0))
    .setCaptionLabel("*");
    
  knopDelen = cp.addButton("KnopDelen")
    .setPosition(335, 70)
    .setSize(30, 40)
    .setColorBackground(color(203,201,201))
    .setColorForeground(color(170,168,168))
    .setColorActive(color(193, 189, 189))
    .setColorLabel(color(0))
    .setCaptionLabel("/");

  knopPlus = cp.addButton("KnopPlus")
    .setPosition(370, 70)
    .setSize(30, 40)
    .setColorBackground(color(203,201,201))
    .setColorForeground(color(170,168,168))
    .setColorActive(color(193, 189, 189))
    .setColorLabel(color(0))
    .setCaptionLabel("+");

  knopMin = cp.addButton("KnopMin")
    .setPosition(405, 70)
    .setSize(30, 40)
    .setColorBackground(color(203,201,201))
    .setColorForeground(color(170,168,168))
    .setColorActive(color(193, 189, 189))
    .setColorLabel(color(0))
    .setCaptionLabel("-");

  cijferVeld1 = cp.addTextfield("CijferVeld1")
    .setPosition(70, 75)
    .setAutoClear(false)
    .setSize(100, 30)
    .setColorBackground(color(255,255,255))
    .setColorForeground(color(0))
    .setColorActive(color(170,168,168))
    .setText("")
    .setCaptionLabel("typ iets")
    .setColor(color(0));

  cijferVeld2 = cp.addTextfield("CijferVeld2")
    .setPosition(180, 75)
    .setAutoClear(false)
    .setSize(100, 30)
    .setColorBackground(color(255,255,255))
    .setColorForeground(color(0))
    .setColorActive(color(170,168,168))
    .setFont(80)
    //.setLabelAlign(width/2, width/2)
    .setText("")
    .setCaptionLabel("typ iets")
    .setColor(color(0));
    
  ResetAntwoord();
}

void draw() {
}

void KnopKeer() {
  ResetAntwoord();
  waarde1 = Integer.valueOf(cijferVeld1.getText());
  waarde2 = Integer.valueOf(cijferVeld2.getText());
  totaal = waarde1*waarde2;
  antwoord = nf(totaal,0,1);
  antwoordWeergeven();
}
void KnopDelen() {
  ResetAntwoord();
  waarde1 = Integer.valueOf(cijferVeld1.getText());
  waarde2 = Integer.valueOf(cijferVeld2.getText());
  totaal = waarde1/waarde2;
  antwoord = nf(totaal,0,1);
  antwoordWeergeven();
}

void KnopPlus() {
  ResetAntwoord();
  waarde1 = Integer.valueOf(cijferVeld1.getText());
  waarde2 = Integer.valueOf(cijferVeld2.getText());
  totaal = waarde1+waarde2;
  antwoord = nf(totaal,0,1);
  antwoordWeergeven();
}

void KnopMin() {
  ResetAntwoord();
  waarde1 = Integer.valueOf(cijferVeld1.getText());
  waarde2 = Integer.valueOf(cijferVeld2.getText());
  totaal = waarde1-waarde2;
  antwoord = nf(totaal,0,1);
  antwoordWeergeven();
}

void ResetAntwoord(){
  background(255);
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text("Het antwoord is:", 210, 150);
}

void antwoordWeergeven(){
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text(antwoord, 290, 150);
}
