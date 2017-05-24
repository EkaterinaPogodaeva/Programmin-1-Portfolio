class Planet {
  String name;
  int x, y, w, h, px, py,px1,py1;
  int speed ;
  boolean vis ;
 



  Planet(int x, int y, int w, int h, int speed) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.speed=speed;
    px = 0;
    py = 0;
   
 vis = true;  }
  void display () {
    if (vis) {
      stroke(100);
      strokeWeight(3);
      fill(92, 153, 177);
      ellipse(x, y, 90, 90);
    } else {
      x = -1000;
      y=- 1000;
      w=0;
      h=0;
      speed = 0;
    }
  }

  
boolean destroy(int px, int py, int pw, int ph ) {
    boolean destroyed = false;
    if (px-(pw/2) >= x-(w/2) && 
      px+(pw/2) <= x+(w/2) && 
      py-(ph/2) >= y-(h/2) && 
      py+(ph/2) <= y+(h/2)) {
      vis = false;
      destroyed = true;
      speed = 0;
      x = -100;
      y = -100;
      w = 0;
      h = 0;
    }
    return destroyed;
  }
  void eat() {
    noStroke();
    for (int i=0; i<200; i++) {
      px = x;
      px1=x;
      py1=y;
      py = y;
      fill(255);
      ellipse(x, y-20-i, 2, 2);
      px+=i;
      py-=i;
    }
  }
  void flyYUp() {
    y-=speed;
  }
  void flyYDown() {
    y+=speed;
  }
  void flyXRight() {
    x+=speed;
  }
  void flyXLeft() {
    x-=speed;
  }
}