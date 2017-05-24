Button b1;

int x = 50; // placement of button
int y = 70;
int w = 100;
int h = 75;

void setup() {
  size(200, 200);
  b1 = new Button(color(227, 255), 50, 50, 70, 70, "Button");
}

void draw() {
  b1.display();
  b1.hover(mouseX, mouseY);
  //background(0);
  //stroke(0);

  //if (mouseX>=x && mouseX<x+w && mouseY>y && mouseY<=y+h) {
  //  fill(227, 255, 45);
  //}else {
  //  fill(255);
  //}  rect(x, y, w, h);
}