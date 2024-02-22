void setup() {
  size(500, 500);
}

void draw() {
  background(255,255,255);
  DrawBoom(20,200,100,200,70,200,260,200);
}

void DrawBoom(int x1, int y1, int w1, int h1, int x2, int y2, int w2, int h2) {
  for(int i = 0; i<4; i++){
    fill(144,108,70);
    rect(x1,y1,w1,h1);
    fill(70,144,90);
    ellipse(x2,y2,w2,h2);
    
    x1 += 120;
    x2 += 120;
  }
}
