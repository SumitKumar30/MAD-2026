// OOPs in dart

class Car {
  String? _brand;
  String? model;
  int? year;

  // constructor declaration
  // Car(String brand, String model, int year) {
  //   this.brand = brand;
  //   this.model = model;
  //   this.year = year;
  // }

  // constructor declaration using shorthand syntax
  Car(this._brand, this.model, this.year);

  // declare optional positional parameters using named constructor
  Car.Tata(this._brand, [this.year = 2020]);

  // named constructor with named parameters
  Car.Ford({required String brand, required this.model, required this.year}) {
    this._brand = brand;
  }

  // getters and setters

  set carBrand(String brand) => this._brand = brand;
  set carModel(String model) => this.model = model;
  set carYear(int year) => this.year = year;

  String get carBrand => _brand ?? 'Unknown';
  String get carModel => model ?? 'Unknown';
  int get carYear => year ?? 0;

  void displayInfo() {
    print('Brand: $_brand');
    print('Model: $model');
    print('Year: $year');
  }

  void _startEngine() {
    print('Engine started');
  }

  // toString method to return string representation of the object
  @override
  String toString() {
    return 'Car(brand: $_brand, model: $model, year: $year)';
  }
}

void main() {
  Car myCar = Car('Toyota', 'Camry', 2020);
  myCar.displayInfo();

  Car tataCar = Car.Tata('Tata', 2021);
  tataCar.displayInfo();

  // accessing setter methods to update car details
  myCar.carBrand = 'Honda';
  myCar.carModel = 'Civic';

  print(myCar); // using toString method to print car details

  myCar._startEngine(); // calling private method
  tataCar._startEngine(); // calling private method
}
