size(1000,1000);
background(255,255,255);

int sizeC = 990;

for(int i = 0; i < 50; i++){
  ellipse(500, 500, sizeC,sizeC);
  sizeC -= 20;
}
