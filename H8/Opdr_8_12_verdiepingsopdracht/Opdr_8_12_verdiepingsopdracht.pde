size(400, 400);
background(255, 255, 255);

int xWaarde = 10;
int yWaarde = 10;


for (int i = 0; i < 10; i++) {
  for (int j = 0; j < 10; j++) {
    rect(xWaarde, yWaarde, 20, 20);
    yWaarde += 20;
    if((i+j)%2== 0){fill(0,0,0);}else{fill(255,255,255);}
  }
  yWaarde = 10;
  xWaarde += 20;
}
