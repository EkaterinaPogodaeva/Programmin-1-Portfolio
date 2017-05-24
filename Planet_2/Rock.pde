
class Rock {
 int x,y,w,h,speed;
  boolean bigRock;
  boolean op;
  float r;
  boolean vis;
  boolean destroy;

  Rock(int x, int y, int w, int h, int speed) {
    float r = random(10);
    this.x = x;
    this.y = y;
    if (r>7) {
      bigRock = true;
      this.w = w+int(random(50,100));
      this.h = h+int(random(50,100));
    } else {
      bigRock = false;
    this.w = w;
      this.h = h;
    }
    this.speed = speed;
    op = true;
   
  }

  void display() {
    if (op) {
      if (bigRock) { // big Rock
       stroke(0);
        fill(random(255,0),random(0,255),random(255));
        ellipseMode(CENTER);
     ellipse(x, y, 50, 50);
      } else {
        stroke(0);
      fill(128);
        ellipseMode(CENTER);
       ellipse(x, y, 20, 20);
      }
    } else {
      x = 0;
      y = 0;
      w = 0;
      h = 0;
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
      x = -1000;
      y = -1000;
      w = 0;
      h = 0;
    }
    return destroyed;
  }
}