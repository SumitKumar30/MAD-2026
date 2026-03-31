// Functions in Dart
// Functions are first-class citizen

// Different ways to use function arguments in dart

// 1. Required Positional Arguments
// 2. Optional Positional Arguments
// 3. Named Arguments

void main() {
  greet("Alice", 25); // Output: Greeting a person Alice and age 25
  greet("Bob"); // Output: Greeting a person Bob and age null
  greet(); // Output: Greeting a person null and age null
  //greet(20, "Charlie"); // Output: Greeting a person 20 and age Charlie
  greetOptional("Bob"); // Output: Greeting a person Bob and age 25
  greetOptional("Charlie", 30); // Output: Greeting a person Charlie and age

  //greetNamed("Dave"); // Output: Greeting a person Dave and age 0
  greetNamed(name: "Eve", age: 35); // Output: Greeting a person Eve and age 35
  greetNamed(age: 20, name: "John");
  print(multiply(10, 20));
  print(multiply.runtimeType);
  print(greet.runtimeType);
  //print(greet("Alice", 25));
}

// required positional arguments
void greet([String? name, int? age]) {
  print("Greeting a person $name and age $age");
  //return add;
}

// optional positional arguments
void greetOptional(String name, [int age = 0]) {
  print("Greeting a person $name and age $age");
}

// optional named arguments
void greetNamed({required String name, required int age}) {
  print("Greeting a person $name and age $age");
}

// Arrow function
int add(int a, int b) => a + b;

// anonymous function
var multiply = (int a, int b) => a * b;

List<String> names = ["Alice", "Bob", "Charlie"];

// using foreach to print names
void printNames() {
  names.forEach((name) => print(name));
}
