size(150,150);
background(255,255,255);

int xWaarde = 30;
int yWaarde = 30;


for(int i = 0; i < 2; i++){
  for(int j = 0; j < 5; j++){
    rect(xWaarde, yWaarde, 10,10);
    yWaarde +=  10;
    }
  yWaarde = 30;
  xWaarde += 10;
}
