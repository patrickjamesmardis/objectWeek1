# Sketch 1: Following mouse movement
**[process.patrickjam.es/](https://process.patrickjam.es/2020/08/28/week-1-exploring-processing/)**

```processing
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
    //up
    y -= 5;
    break;
  case 39: 
    //right
    x += 5;
    break;
  case 40: 
    //down
    y += 5;
    break;
  }
}
```

![sketch3 gif](/documentationAssets/sketch3_1.gif)
![sketch3 gif](/documentationAssets/sketch3_2.gif)