void setup() {
  size(600, 600);
  background(255, 255, 255);
}

void draw() {
}

void mouseMoved() {
  int red = floor(random(256));
  int blue = floor(random(256));
  int green = floor(random(256));
  fill(red,green,blue);
  rect(mouseX, mouseY, 30, 30);
}
