class Star {
  int x, y, w,h,speed;
  boolean bigStar;
  float s;
boolean vis;
boolean destroy;

  Star(int x, int y, int speed) {
    float r = random(100);
      this.x = x;
    this.y = y;
    if (r>7) {
      bigStar = true;
      strokeWeight(random(3, 5));
    } else {
      bigStar = false;
      strokeWeight(1);
    }
    this.speed = speed;
  }

  void display() {
    if (bigStar) { 
      stroke(200);
      point(x, y);
    } else {
      stroke(200);
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