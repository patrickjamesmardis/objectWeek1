void setup() {
  size(800, 800);
  background(#FF5A36);
}
int x = 100;
int y = 100;
int w = 100;
int h = 100;
void draw() {
  background(#FF5A36);
  rect(x, y, w, h);
}

void keyPressed() {
  switch(keyCode) {
  case 32: 
    //space
    w += 5;
    h += 5;
    break;
  case 37: 
    //left
    x -= 5;
    break;
  case 38: 
    y -= 5;
    //up
    break;
  case 39: 
    x += 5;
    //right
    break;
  case 40: 
    //down
    y += 5;
    break;
  }
}
