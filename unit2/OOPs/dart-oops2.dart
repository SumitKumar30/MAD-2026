// Inheritance in dart

// single level inheritance
class Vehicle {
  void start() {
    print('Vehicle started');
  }
}

class Car extends Vehicle {
  void drive() {
    print('Car is driving');
  }
}

void main() {
  Car myCar = Car();
  myCar.start(); // inherited method from Vehicle class
  myCar.drive(); // method from Car class
}

// multi level inheritance
class Animal {
  void eat() {
    print('Animal is eating');
  }
}

class Mammal extends Animal {
  void walk() {
    print('Mammal is walking');
  }
}

class Dog extends Mammal {
  void bark() {
    print('Dog is barking');
  }
}

// void main() {
//   Dog myDog = Dog();
//   myDog.eat(); // inherited method from Animal class
//   myDog.walk(); // inherited method from Mammal class
//   myDog.bark(); // method from Dog class
// }

// Abstract class and method in dart
abstract class Shape {
  void draw(); // abstract method

  // concrete method
  void display() {
    print('This is a shape');
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

// Interfaces in dart
abstract class Printable {
  // interface only contains method declarations without implementation
  void printData();

  // it does not contain any instance variables or constructors

  // it does not contain any concrete methods with implementation
}

// another interface for demonstration
abstract class Scannable {
  void scanData();
}

class Document implements Printable, Scannable {
  @override
  void printData() {
    print('Printing document data');
  }

  @override
  void scanData() {
    print('Scanning document data');
  }
}
