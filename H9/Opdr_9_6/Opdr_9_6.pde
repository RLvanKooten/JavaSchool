void setup() {
  size(500, 500);
}

void draw() {
  background(255, 255, 255);
  drawRightC(200,5);
}

void drawRightC(int SizeC, int aantal){
for (int i = 0; i < aantal; i++) {
    
    ellipse(200 - SizeC/2,200,SizeC,SizeC);
    
    SizeC -= 20;
  }
}
