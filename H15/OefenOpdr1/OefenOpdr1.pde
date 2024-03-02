class rechthoek{
  
  int x;
  int y;
  int wh;
  
  rechthoek(int x, int y, int wh){
    this.x = x;
    this.y = y;
    this.wh = wh;
  }
  void display(){
    rect(x,y,wh,wh);
  }
}
void setup(){
  size(400,400);
  rechthoek mijnRechthoek =  new rechthoek(10,10,100);
  mijnRechthoek.display();
}
