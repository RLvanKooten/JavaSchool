int OudX;
int OudY;
int nieuwX;
int nieuwY;


void setup(){
  size(400,400);
  background(255);
  
}
void draw(){
  line(OudX,OudY,nieuwX,nieuwY);
}
void mouseClicked(){
  OudX = nieuwX;
  OudY = nieuwY;
  nieuwX = mouseX;
  nieuwY = mouseY;
  
  line(OudX,OudY,nieuwX,nieuwY);
  
}
