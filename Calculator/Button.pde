class Button { 
  //member variable
  color b1, b2, t1, t2; //colors for buttons
  int x, y, w, h;
  Boolean over;
  boolean isNumber;
  boolean isOperator;
  boolean isSpecial;
  int numVal;
  String opVal;
  String spVal;
  String val;


  //Constructor
  Button(int x, int y) {
    this.x = x;
    this.y = y;
  }

  Button asNumber( int numVal, int w, int h, color b1) {
    isNumber = true;
    this.numVal = numVal;
    this.w = w;
    this.h = h;
    this.b1 = b1;
    return this;
  }

  Button asOperator(String opVal, int w, int h, color b1) {
    isOperator = true;
    this.opVal = opVal;
    this.w = w;
    this.h = h;
    this.b1=b1;
    return this;
  }

  Button asSpecial(String spVal, int w, int h, color b1) {
    isSpecial = true;
    this.spVal = spVal;
    this.w = w;
    this.h = h;
    this.b1=b1;
    return this;
  }
 

  //display
  void display() {
    if (isNumber) { 
      fill(128);
      stroke(0);
      strokeWeight(2);
      rect(x, y, w, h, 20);
      fill(b1);
      rect(x-5, y+4, w, h, 20);
      fill(0);
      textSize(60);
      text(numVal, x+8, y+56);
    }  
    if (isOperator) {
      fill(128);
      stroke(0);
      strokeWeight(2);
      rect(x, y, w, h, 20);
      fill(b1);
      rect(x-5, y+4, w, h, 20);
      fill(0);
      textSize(27);
      text(opVal, x+3, y+45);
    } else if (isSpecial) {
      fill(128);
      stroke(0);
      strokeWeight(2);
      rect(x, y, w, h, 20);
      fill(b1);
      rect(x-5, y+4, w, h, 20);
      fill(0);
      textSize(13.5);
      text(spVal, x+3, y+45);
    }
  }
  //hover method
  void hover(int xpos, int ypos) {
    over = xpos>x && xpos<x+w && ypos>y && ypos<y+h;
  }
}