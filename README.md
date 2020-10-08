# Week 1 | Exploring Processing
**[process.patrickjam.es/](https://process.patrickjam.es/2020/08/28/week-1-exploring-processing/)**

## [Sketch 1](/sketch1): Following mouse movement
This week I was excited to explore Processing since I’ve done a lot of work with p5. I began by orienting myself with the basics. Although I had no previous experience with Java, this came pretty easily since the p5 functions are just a translation to JavaScript.

For my first sketch, I made basic circles that follow the mouse. I noticed the pmouseX and pmouseY variables and wanted to see if they could be used to space the circles out a bit. I used the following line of code to get the distance between the previous mouse position and the current mouse position.

```processing
float d = dist(pmouseX, pmouseY, mouseX, mouseY);
```

I then added an if statement around the circle function.

```processing
if (d > 50) {
    circle(mouseX, mouseY, 50);
}
```

This didn’t work as I expected. Since the pmouseX and pmouseY variables are updated in each iteration of the draw function, the conditional isn’t comparing the current mouse position to the position of the most recent circle. To achieve the effect I was hoping for, I had to create two global variables, lastPosX and lastPosY that would store the position of the circle after it is on the canvas. These variables had to be global because holding them as local variables in the draw function would reset and initialize them in each iteration. With these variables in place, the draw function now calculates the distance between the last circle and the current mouse position. If the distance is larger than 50 pixels, a new circle is placed on the canvas and the lastPosX and lastPosY variables are updated.

```processing
float lastPosX = 0.0;
float lastPosY = 0.0;

void draw() {
    float d = dist(lastPosX, lastPosY, mouseX, mouseY);
    if (d > 50) {
        circle(mouseX, mouseY, 50);
        lastPosX = mouseX;
        lastPosY = mouseY;
    }
}
```

![sketch1 gif](/documentationAssets/sketch1_1.gif)
![sketch1 gif](/documentationAssets/sketch1_2.gif)

## [Sketch 2](/sketch2): Following mouse movement with text output

For my next sketch, I continued to work with mouse movement as the input, but I wanted to explore text as an output. I’ve accomplished something similar in p5 so I wanted to be able to compare the JavaScript functions I used to Java.

I began with a string variable containing the sentence “Patrick is studying Creative Technology and Design at CU”. I used the [toCharArray method](https://beginnersbook.com/2013/12/java-string-tochararray-method-example/) to split the string into an array of letters and created an int variable to hold the index of the array. Each iteration of the draw function put a character on the canvas and increased the index by 1. After running this once, I added a space at the beginning and end of the string so the letters had some breathing room when the mouse made it through the entire array.

```processing
String sentence = " Patrick is studying Creative Technology and Design at CU ";
char letters[] = sentence.toCharArray();

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

![sketch2 gif](/documentationAssets/sketch2_1.gif)

## [Sketch 3](/sketch3): Keyboard input

Finally, I wanted to explore keyboard input. For this sketch, I placed a rectangle on the canvas. I used four global variables: x, y, w, and h, each with 100 as the initial value. I used the keyPressed function with a switch statement inside to give commands to specific keys. The space bar increases w and h by 5. The left arrow decreases x by 5 while the right increases x by 5. The up arrow decreases y by 5 and down increases y by 5. Before adding this switch statement, I used the print function to print the keyCode for each key to the console.

```processing
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
```

After getting a screen recording of this, I added background() to the draw function to reset the drawing on each iteration. I don’t think one is better than the other – I can see both cases being used depending on the goal of the end product.

```processing
void draw() {
    background(#FF5A36);
    rect(x, y, w, h);
}
```

![sketch3 gif](/documentationAssets/sketch3_1.gif)
![sketch3 gif](/documentationAssets/sketch3_2.gif)