class Lines {
  float xpos;
  float ypos;
  float strokeW;
  float pointLength;

  Lines ( float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    pointLength = tempLength;
  }
  void display() {
    strokeW  = random(1, 10);
    pointLength = random(1, 20);
    stroke(random(255, 0), random(0, 255), random(255));
    if (xpos >width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else { 
      if (random(100)>65) {
          strokeWeight(strokeW);
          moveLeft(xpos, ypos, pointLength);
      } else if (random(100)>60) {
          strokeWeight(strokeW);
          moveUp(xpos, ypos, pointLength);
      } else if (random(100)>50) {
          strokeWeight(strokeW);
          moveDown(xpos, ypos, pointLength);
        } else if (random(100)>45) {
          strokeWeight(strokeW);
          moveRight(xpos, ypos, pointLength);
        } else if (random(100)>45) {
          strokeWeight(strokeW);
        moveUpRight(xpos, ypos, pointLength);
      } else if (random(100)>40) {
        strokeWeight(strokeW);
        moveDownRight(xpos, ypos, pointLength);
      } else if (random(100)>35) {
        strokeWeight(strokeW);
        moveUpLeft(xpos, ypos, pointLength);
      } else { 
        strokeWeight(strokeW);
        moveDownLeft(xpos, ypos, pointLength);
      }
    }
  }


  void moveLeft(float startX, float startY, float moveLength) {
    for (float i=0; i<moveLength; i++) {
      point(startX-i, startY);
      xpos = startX - i;
    }
  }
  void moveRight(float startX, float startY, float moveLength) {
    for (float i=0; i<moveLength; i++) {
      point(startX+i, startY);
      xpos = startX + i;
    }
  }

    void moveUp(float startX, float startY, float moveLength) {
      for (float i=0; i<moveLength; i++) {
        point(startX, startY-i);
        ypos = startY - i;
      }
    }
    void moveDown(float startX, float startY, float moveLength) {
      for (float i=0; i<moveLength; i++) {
        point(startX, startY+i);
        ypos = startY + i;
      }
    }
    void moveDownLeft(float startX, float startY, float moveLength) {
      for (float i=0; i<moveLength; i++) {
        point(startX - i, startY+i);
        ypos = startY + i;
        xpos = startX - i;
      }
    }
    void moveDownRight(float startX, float startY, float moveLength) {
      for (float i=0; i<moveLength; i++) {
        point(startX + i, startY+i);
        ypos = startY + i;
        xpos = startX + i;
      }
    }

    void moveUpLeft(float startX, float startY, float moveLength) {
      for (float i=0; i<moveLength; i++) {
        point(startX - i, startY-i);
        ypos = startY - i;
        xpos = startX - i;
      }
    }
    void moveUpRight(float startX, float startY, float moveLength) {
      for (float i=0; i<moveLength; i++) {
        point(startX + i, startY-i);
        ypos = startY - i;
        xpos = startX + i;
      }
    }
  }
  