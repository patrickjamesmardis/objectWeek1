# Sketch 1: Following mouse movement
**[process.patrickjam.es/](https://process.patrickjam.es/2020/08/28/week-1-exploring-processing/)**

```processing
String sentence = " Patrick is studying Creative Technology and Design at CU ";
char letters[] = sentence.toCharArray();
void setup() {
  size(800, 800);
  background(#FF5A36);
  PFont font = createFont("Roboto-Regular",32);
  textFont(font);
}
float lastPosX = 0.0;
float lastPosY = 0.0;
int index = 0;
void draw() {
  float d = dist(lastPosX, lastPosY, mouseX, mouseY);
  if (d > 32) {
    text(letters[index], mouseX, mouseY);
    index++;
    if(index >= letters.length) {
      index = 0;
    }
    lastPosX = mouseX;
    lastPosY = mouseY;
  }
}
```

![sketch1 gif](/documentationAssets/sketch1_1.gif)
![sketch1 gif](/documentationAssets/sketch1_2.gif)