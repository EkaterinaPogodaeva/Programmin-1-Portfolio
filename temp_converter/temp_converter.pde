void setup() {
  size(800,300);
}

void draw() {
  fill(255, 0, 0);
  background(128);
  line(100,200,800,200);
  text("F: "+ mouseX + "Cel:" + tempConverter(mouseX), mouseX,mouseY);
  println(tempConverter(mouseX));
}
void drawReference(int xpos, int ypos) {
  changeToFar(mouseX-100);
  fill (255);
  stroke (200);
  line(xpos-50, ypos, 900, ypos);
  for(int i = 0; i<800; i=i+50); {
    line(xpos+i, ypos-5, xpos+1, ypos+5);
    text(i, xpos+i-5, ypos-8);
  }
}

float changeToFar(float val) { 
  val = (val-32) * 5/9;
  background(0);
  fill(255);
  text("Farenhiet value = " + int(mouseX-100), 50,130);
  text("Celcius value = " + int(mouseX-100), 50, 130);
  return value;
  return val;
}