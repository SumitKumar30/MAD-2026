// Mixins ==> A mixin is a way to reuse a class's code in multiple class hierarchies. It allows you to add functionality to a class without using inheritance. In Dart, you can create a mixin by using the `mixin` keyword.
mixin Logger {
  void log(String message) {
    print('Mixin Log: $message');
  }

  void logError(String error) {
    print('Mixin Error: $error');
  }
}

mixin TimeStamp {
  String getCurrentTime() {
    return DateTime.now().toString();
  }

  void logError(String timestampError) {
    print('Mixin TimeStamp Error: ${timestampError}');
  }
}

class Car with TimeStamp, Logger {
  String? _brand;
  String? model;
  int? year;

  Car(this._brand, this.model, this.year);

  void displayInfo() {
    print('Brand: $_brand');
    print('Model: $model');
    print('Year: $year');
  }

  // void log(String message) {
  //   print('Car Log: $message');
  // }
}

// Restricting mixin application using `on` keyword.. so that only ElectricCar can be applied to Car class or its subclasses and not to any other class.
mixin ElectricCar on Car {
  void chargeBattery() {
    print('Battery is charging');
  }
}

class Tesla extends Car with ElectricCar {
  Tesla(String brand, String model, int year) : super(brand, model, year);
}

void main() {
  Car myCar = Car('Toyota', 'Camry', 2020);
  myCar.displayInfo();
  myCar.log('This is a log message from the Car class');
  myCar.getCurrentTime();
  myCar.logError('This is an error message from the Car class');
}


// Problem 1: Create a mixin called `Flyable` that has a method `fly()` which prints 
//"The object is flying". 
//Then create a class `Bird` that uses the `Flyable` mixin and call the `fly()` 
//method from an instance of the `Bird`
// class.

// Problem 2: Create a mixin called `Swimmable` that has a method `swim()` which prints "The object is swimming". 
//Then create a class `Fish` that uses the `Swimmable` mixin and call the `swim()` method from an instance of the `Fish` class.