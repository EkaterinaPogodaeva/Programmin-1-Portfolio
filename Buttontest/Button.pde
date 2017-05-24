class Button { 
  //member variable
  color b1, b2, t1, t2; //colors for buttons
  int x, y, w, h;
  String val;
  Boolean over;

  //constructor
  Button(color b1, int x, int y, int w, int h, String val) {
    this.b1 = b1;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    over = false;
  }

  //display
  void display() {
    if (over) { 
      fill(128);
      rect(x, y, w, h, 3);
      fill(227,255,45);
      rect(x-4, y+4, w, h, 3);
      fill(255);
      text(val, x+5, y+15);
    } else {
        fill(128);
    rect(x,y,w,h,3);
    fill(b1);
    rect(x-5, y+4,w,h,3);
    fill(0);
    text(val,x+5,y+15);
    }
  }
  
  //hover method
  void hover(int xpos, int ypos) {
    over = xpos>x && xpos<x+w && ypos>y && ypos<y+h;
  }
}  



// Button location and size
//float x;   
//float y;   
//float w;   
//float h;   
//// Is the button on or off?
//boolean on;  

//// Constructor initializes all variables
//Button(float tempX, float tempY, float tempW, float tempH) {    
//  x  = tempX;   
//  y  = tempY;   
//  w  = tempW;   
//  h  = tempH;   
//  on = false;  // Button always starts as off
//}
//}