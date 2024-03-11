import controlP5.*;

ControlP5 cp;

Button knop1;
Textfield tekstveld1;

void setup() {
  size(400, 200);
  background(255);

  cp = new ControlP5(this);


  knop1 = cp.addButton("Knop1")
    .setPosition(20, 50)
    .setSize(60, 30)
    .setCaptionLabel("Klik mij");

  tekstveld1 = cp.addTextfield("textinpu1")
    .setPosition(100, 100)
    .setText("hoi")
    .setCaptionLabel("typ iets")
    .setColorLabel(color(255, 0, 0));
}


void draw() {
}

void Knop1() {
  println("Hoi mijn naam is: "+ tekstveld1.getText());
}
