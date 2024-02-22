void setup() {
  size(500, 500);
}

void draw() {
  background(255,255,255);
  stroke(0,0,0);
  VierkantTekenen(100,100,100,100);
  
}

void VierkantTekenen(int x, int y, int w, int h) {
  //Line bovenkant
  line(x,y,x+w,y);
  //Line onder
  line(x,y+h,x+w,y+h);
  //Line Links
  line(x,y,x,y+h);
  //Line rechts
  line(x+w,y,x+w,y+h);
};
