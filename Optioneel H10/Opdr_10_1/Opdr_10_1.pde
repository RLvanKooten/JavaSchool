import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

void setup(){
  size(400,200);
  background(255);
  
  cp = new ControlP5(this);
  
  
  knop1 = cp.addButton("Knop1")
  .setPosition(20,50)
  .setSize(150,100)
  .setCaptionLabel("Klik mij");
  
  knop2 = cp.addButton("Knop2")
  .setPosition(width - 170,50)
  .setSize(150,100)
  .setCaptionLabel("Klik mij");
  
}


void draw(){
  
}

void Knop1(){
  println("Goed gedaan!");
}


void Knop2(){
  println("Helaas fout!");
}
