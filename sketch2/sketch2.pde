String sentence = " Patrick is studying Creative Technology and Design at CU ";
char letters[];
void setup() {
  size(800, 800);
  background(#FF5A36);
  letters = sentence.toCharArray();
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
