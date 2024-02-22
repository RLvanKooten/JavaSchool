void setup(){
  size(500,500);
}

void draw(){
  background(255,255,255);
  tekenDriehoek(100,300,250,100,400,300);
}

void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3) {
    // teken een driehoek m.b.v. de meegegeven data (parameters)
    //line 1
    line(x1,y1,x3,y3);
    //line 2
    line(x1,y1,x2,y2);
    //line 3
    line(x3,y3,x2,y2);
}
