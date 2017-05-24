Button[] numButtons = new Button[10];
Button[] opButtons = new Button [11];
Button[] spButtons = new Button [2];

String displayVal = "0";
String valToCompute = "";
String valToCompute2 = "";
float valToComputeI = 0; 
float valToComputeI2 = 0;
float result = 0;
char opVal;
boolean firstNum;


void setup() {
  size(380,660);
  background(251,248,204);
  frameRate(30);
  
  fill(0);
  strokeWeight(3);
  stroke(200);
  rect(5, 5, 370, 150, 30);

  numButtons[0] = new Button(40, 500).asNumber(0, 60, 60, color(250, 161, 64));
  numButtons[1] = new Button(120, 500).asNumber(1, 60, 60, color(250, 161, 64));
  numButtons[2] = new Button(200, 500).asNumber(2, 60, 60, color(250, 161, 64));
  numButtons[3] = new Button(280, 500).asNumber(3, 60, 60, color(250, 161, 64));
  numButtons[4] = new Button(40, 420).asNumber(4, 60, 60, color(255, 0, 0));
  numButtons[5] = new Button(120, 420).asNumber(5, 60, 60, color(255, 0, 0));
  numButtons[6] = new Button(200, 420).asNumber(6, 60, 60, color(255, 0, 0));
  numButtons[7] = new Button(40, 340).asNumber(7, 60, 60, color(107, 34, 160));
  numButtons[8] = new Button(120, 340).asNumber(8, 60, 60, color(107, 34, 160));
  numButtons[9] = new Button(200, 340).asNumber(9, 60, 60, color(107, 34, 160));
  //operation buttons
  opButtons[0] = new Button(280, 420).asOperator("÷", 60, 60, color(255, 0, 0));
  opButtons[1] = new Button(280, 580).asOperator("=", 60, 60, color(251, 223, 67));
  opButtons[2] = new Button(280, 340).asOperator("X", 60, 60, color(107, 34, 160));
  opButtons[3] = new Button(280, 180).asOperator("+", 60, 60, color(58, 250, 52));
  opButtons[4] = new Button(280, 260).asOperator("-", 60, 60, color(58, 30, 250));
  opButtons[5] = new Button(40, 180).asOperator("C", 60, 60, color(58, 250, 52));
  opButtons[6] = new Button(120, 180).asOperator("Sqr", 60, 60, color(58, 250, 52));
  opButtons[7] = new Button(40, 260).asOperator("X^3", 60, 60, color(58, 30, 250));
  opButtons[8] = new Button(120, 260).asOperator("x÷2", 60, 60, color(58, 30, 250));
  opButtons[9] = new Button(200, 260).asOperator("1÷x", 60, 60, color(58, 30, 250));
  opButtons[10] = new Button(200, 180).asOperator("+/-", 60, 60, color(58, 250, 52));

  spButtons[0] = new Button(40, 580).asSpecial("by Katya Pogodaeva", 140, 60, color(251, 223, 67));
  spButtons[1] = new Button(200, 580).asSpecial(".", 60, 60, color(251, 223, 67));
  firstNum = true;
}

void updateDisplay() {
  fill(200, 200, 200);
  rect(15, 15, 350, 130, 20);
  fill(0);
  textSize(25);
  text(displayVal, 30, 50);
}

void draw() {
  
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<spButtons.length; i++) {
    spButtons[i].display();
    spButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].hover(mouseX, mouseY);
    if (numButtons[i].over) {
      if (firstNum) {
        println(i + " " + numButtons[i].numVal);
        valToCompute +=int(numButtons[i].numVal);
        displayVal = valToCompute;
      } else {
        valToCompute2 += int(numButtons[i].numVal);
        displayVal = valToCompute2;
      }
    }
  }


  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].hover(mouseX, mouseY);
    if (opButtons[i].over) {
      if (opButtons[i].opVal == "+") {
        if (result != 0) {
          opVal = '+';
          valToCompute2 =  "";
          firstNum = false;
          displayVal = valToCompute;
        } else {
          opVal = '+';
          firstNum = false;
          displayVal = "+";
        }
      } else if (opButtons[i].opVal == "=") {
        firstNum = true;
        performCalculation();
      } else if  (opButtons[i].opVal == "-") {
        if (result != 0) {
          opVal = '-';
          valToCompute2 = "";
          firstNum = false;
          displayVal = "-";
        } else {
          opVal = '-';
          firstNum = false;
          displayVal = "-";
        }
      } else {
        if (opButtons[i].opVal == "C") {
          displayVal = "0";
          opVal = 'C';
          valToCompute = "";
          valToCompute2 = "";
          valToComputeI = 0;
          valToComputeI = 0;
          result = 0;
          firstNum = true;
        } else if  (opButtons[i].opVal == "X") {
          if (result != 0) {
            opVal = 'X';
            valToCompute2 = "";
            firstNum = false;
            displayVal = "X";
          } else {
            opVal = 'X';
            firstNum = false;
            displayVal = "X";
          }
        } else if (opButtons[i].opVal == "÷") {
          if (result != 0) {
            opVal = '÷';
            valToCompute2 =  "";
            firstNum = false;
            displayVal = "÷";
          } else {
            opVal = '÷';
            firstNum = false;
            displayVal = "÷";
          }
        } else if (opButtons[i].opVal == "+/-") {
          if (result != 0) {
            opVal = 'n';
            valToCompute2 =  "";
            firstNum = false;
            displayVal = "+/-";
          } else {
            opVal = 'n';
            firstNum = false;
            displayVal = "+/-";
          }
        } else if (opButtons[i].opVal == "Sqr") {
          if (result != 0) {
            opVal = 'k';
            valToCompute2 =  "";
            firstNum = false;
            displayVal = "Sqr";
          } else {
            opVal = 'k';
            firstNum = false;
            displayVal = "Sqr";
          }
        } else if (opButtons[i].opVal == "X^3") {
          if (result != 0) {
            opVal = 'p';
            valToCompute2 =  "";
            firstNum = false;
            displayVal = "X^3";
          } else {
            opVal = 'p';
            firstNum = false;
            displayVal = "X^3";
          }
        } else if (opButtons[i].opVal == "x÷2") {
          if (result != 0) {
            opVal = 's';
            valToCompute2 =  "";
            firstNum = false;
            displayVal = "x÷2";
          } else {
            opVal = 's';
            firstNum = false;
            displayVal = "x÷2";
          }
        } else if (opButtons[i].opVal == "1÷x") {
          if (result != 0) {
            opVal = 'e';
            valToCompute2 =  "";
            firstNum = false;
            displayVal = "1÷x";
          } else {
            opVal = 'e';
            firstNum = false;
            displayVal = "1÷x";
          }
        }
      }
    }
  }
  for ( int i=0; i<spButtons.length; i++) {
    spButtons[i] = spButtons[i];
    spButtons [i].hover(mouseX, mouseY);
    if (spButtons[i].over) {
      if (spButtons[i].spVal == ".") {
        if (spButtons[i].over && firstNum == true) {
          valToCompute += spButtons[i].spVal;
          displayVal = valToCompute;
        } else if (spButtons[i].over && firstNum == false) {
          valToCompute2 += spButtons[i].spVal;
          displayVal = valToCompute2;
          performCalculation();
        }
      }
    }
  }
}


void performCalculation() {
  valToComputeI = float(valToCompute);
  valToComputeI2 = float(valToCompute2);
  if (opVal == '+') {
    result = valToComputeI + valToComputeI2;
    displayVal = str(result);
  } else if (opVal == '-') {
    result = valToComputeI - valToComputeI2;
    displayVal = str(result);
  } else if (opVal == 'C') {
    result = valToComputeI-valToComputeI;
    displayVal = str(result);
  } else if (opVal == 'X') {
    result = valToComputeI * valToComputeI2;
    displayVal = str(result);
  } else if (opVal == '÷') {
    result = valToComputeI / valToComputeI2;
    displayVal = str(result);
  } else if (opVal =='n') {
    if (firstNum) {
      valToComputeI = valToComputeI * -1;
      valToCompute = str(valToComputeI);
      displayVal = str(valToComputeI);
    } else {
      valToComputeI2 = valToComputeI2 * -1;
      displayVal = str(valToComputeI);
    }
  } else if (opVal == 'k') {
    result = valToComputeI * valToComputeI;
    displayVal = str(result);
  } else if (opVal == 'p') {
    result = valToComputeI * valToComputeI * valToComputeI;
    displayVal = str(result);
  } else if (opVal == 's') {
    result = valToComputeI/2;
    displayVal = str(result);
  } else if (opVal == 'e') {
    result = 1/valToComputeI;
    displayVal = str(result);
  }

  if (firstNum) {
    valToCompute = displayVal;
  } else {
    valToCompute = displayVal;
    valToCompute2 = "";
  }
}