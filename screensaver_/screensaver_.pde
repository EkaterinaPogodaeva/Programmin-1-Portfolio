Lines[] myLines = new Lines[10];

void setup() {
  size(displayWidth, displayHeight);
  background(0);
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width), random(height), random(1, 5), random(1, 10));
  }
} 

void draw() {
  if (frameCount > 1000) {
    frameCount = 0;
    background(0);
  } else {
    for (int i=0; i<myLines.length; i++) {
      Lines iLines = myLines[i];
      iLines.display();
    }
  }
}