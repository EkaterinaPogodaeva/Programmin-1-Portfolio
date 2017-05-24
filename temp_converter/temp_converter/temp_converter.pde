void setup() {
  size(800,500);
}

void draw() {
  fill(255);
  background(255, 0 ,0 );
  line(100,200,800,200);
  text("X: "+ mouseX + "X^2:" + numberSquared(mouseX), mouseX,mouseY);
  println(numberSquared(mouseX));
}
void drawReference(int xpos, int ypos) {
  numberSquared(mouseX-100);
  fill (255);
  stroke (200);
  line(xpos-50, ypos, 900, ypos);
  for(int i = 0; i<800; i=i+50) {
    line(xpos+i, ypos-5, xpos+1, ypos+5);
    text(i, xpos+i-5, ypos-8);
  }
}

float numberSquared(float val) { 
  val = (val*val);
  background(111, 13 , 44);
  fill(255);
  text("Katya Pogodaeva" , 350, 250);
  text("Number Converter", 350, 50);
  text(" Put your mose on the number on the scale. See the conversion", 200, 100);
  text("Value Conversion:  " + val, 305, 150);
 
  return val;
}