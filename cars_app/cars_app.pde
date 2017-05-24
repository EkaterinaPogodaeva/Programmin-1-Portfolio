//car object
Car c1;
Car c2;
Car[] cars = new Car[1500];

void setup() {
  size(displayWidth, displayHeight);
  c1 = new Car();
  c2 = new Car();
  cars[0] = new Car();
  for (int i = 0; i< cars.length; i++) {
    cars[i] = new Car();
  }
}

void draw() {
  background(88, 181, 232);
  c1.display();
  c1.drive();
  c2.display();
  c2.drive();
  for (int i = 0; i< cars.length; i++) {
    cars[i].display();
    cars[i].drive();
  }
}