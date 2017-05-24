Planet p1;
Star[] s = new Star[1000];
Rock[] r = new Rock[100];
int missed;
int score;
color bg;

void show () {
  fill(255);
}

void setup () {
  size(660, 660);
  background(0);
  fill(random(255), random(0, 255), random(255, 0));

  score = 0;
  missed = 0;
  //bg = color(random(255,0),random(0,255),random(255));

  for (int i = 0; i<s.length; i++) {
    s[i] = new Star(int(random(width)), int(random(-10000, 1000)), int(random(3, 5)));
  }
  for (int i = 0; i<r.length; i++) {
    r[i] = new Rock(int(random(width)), int(random(-1000, 100)), 20, 20, int(random(2, 4)));
  }
}

void display() {
  fill(128);
  rect(0, 560, 660, 100);
  fill(255);
  textSize(52);
  text("Score: " +score, 0, 630);
}

void gameEnd() {
  background(122);
  fill(66);
  rect(5, 5, width-10, height-10);
  textSize(100);
  fill(random(0, 255), random(255, 0), random(255));
  text("Game Over", 40, 320);
  textSize(40);
  fill(222);
  text("Final Score: " + score, 70, 390);
  noLoop();
}

void draw() {
  background(0);
  fill(216, 170, 167);
  p1 = new Planet(mouseX, mouseY, 20, 20, 11);
  p1.display();
  display();
 

  for (int i=0; i<r.length; i++) {
    s[i].display();
    s[i].y += r[i].speed;
    if (r[i].y > 1000) {
      r[i].op = false;
      missed++;
    } 
    if (r[i].y > 600) {
      r[i].op = false;
      missed++;
    }
  }

  for (int i=0; i<r.length; i++) {
    r[i].display();
    r[i].y += r[i].speed;
    if (s[i].destroy(p1.px1, p1.py1, p1.w, p1.h)) {
      score++;
    }
  }
  p1.display();
  if (keyPressed) {
    if (key == ' ') {
      p1.eat();


      for (int i=0; i<r.length; i++) {

        if (p1.x > r[i].x-r[i].w/2 &&    
          p1.x < r[i].x+r[i].w/2 &&      
          p1.py > r[i].y-190 &&       
          p1.py < r[i].y+r[i].h+10) {  
          r[i].op=false;
          if (r[i].bigRock) {
          }
        }
      }
    }
  }
} 