# Sketch 1: Following mouse movement
**[process.patrickjam.es/](https://process.patrickjam.es/2020/08/28/week-1-exploring-processing/)**

```processing
void setup() {
  size(800,800);
  background(#FF5A36);
}
  float lastPosX = 0.0;
  float lastPosY = 0.0;
void draw() {

  //float d = dist(pmouseX, pmouseY, mouseX, mouseY);
  float d = dist(lastPosX, lastPosY, mouseX, mouseY);
  if(d > 50) {
    circle(mouseX, mouseY, 50);
    lastPosX = mouseX;
    lastPosY = mouseY;
  }
  
}
```

![sketch1 gif](/documentationAssets/sketch1_1.gif)
![sketch1 gif](/documentationAssets/sketch1_2.gif)