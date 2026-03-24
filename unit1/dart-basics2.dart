import 'dart:io'; // Importing the dart:io library to use the stdin and stdout functions

// main is the entry point of a Dart application
void main() {
  print('Hello, World!');

  // variables and data types

  String name = "John Doe"; // A string variable
  var age = 30.12; // A double variable (type inferred)
  print(age.runtimeType); // prints the type of the variable
  // age =
  //     "Hello"; // This will cause an error because age is of type double and we're trying to assign a string to it"";
  dynamic x = "Hello"; // A dynamic variable that can hold any type of value
  x = 42; // Now x holds an integer value

  var z;
  z = "Alice"; // Now name is of type String

  z = 10;
  print(z);

  dynamic d;

  d = "Hello"; // Now d is of type String

  d = 3.14; // Now d is of type double

  // Strings in dart
  String str1 = "Hello, World!"; // Using double quotes
  String str2 = 'Hello, World!'; // Using single quotes

  String str3 = """
                  Hello,
                  World!
                """;

  // string interpolation
  String name2 = "Alice";
  print(
      "Hello, $name2!"); // Using string interpolation to insert the value of name2 into the string

  int a = 10;
  int b = 20;
  print(
      "The sum of $a and $b is ${a + b}"); // Using string interpolation to insert the values of a and b and the result of the expression a + b into the string

  // string functions
  String str4 = "Hello, World!";
  print(str4.length); // prints the length of the string
  print(str4.toUpperCase()); // converts the string to uppercase
  print(str4.toLowerCase()); // converts the string to lowercase
  print(str4.trim()); // removes leading and trailing whitespace
  print(str4.indexOf("World")); // finds the index of the substring "World"
  print(str4.contains(
      "World")); // checks if the string contains the substring "World"
  print(str4.replaceAll(
      "World", "Dart")); // replaces all occurrences of "World" with "Dart"
  print(str4.split(",")); // splits the string by the comma delimiter
  print(str4.substring(0, 5)); // extracts a substring from index 0 to 5
  print(str4.substring(7)); // extracts a substring from index 7 to the end

  // null safety feature in dart
  String? str5 = null; // str5 is of type String and cannot be null
  print(str5.runtimeType);
  print(str5);

  str5 = "Amit";
  print(str5.runtimeType);

  // ! null assertion operator in dart
  String? str6 = "Amit"; // str6 is of type String and cannot be null
  str6 = null; // This will cause an error because str6 is not nullable
  print(str6!
      .length); // This will cause an error because str6 is null and we're trying to assert that it's not null
  String str7 = "Hello, World!";

  // Advanced types in dart ==> Lists, Maps, Sets
  List<String> names = ["Alice", "Bob", "Charlie"]; // A list of strings
  print(names[0]); // Accessing the first element of the list

  for (var name in names) {
    print(name); // Iterating through the list and printing each name
  }

  List<dynamic> mixedList = [
    1,
    "Hello",
    true
  ]; // A list that can hold any type of value
  print(mixedList[1]); // Accessing the second element of the list

  mixedList.add("Dart"); // Adding a new element to the list
  print(mixedList);
  mixedList.removeAt(0); // Removing the first element of the list
  print(mixedList);

  // new type of declaration for advanced types in dart
  var numbers = <int>[1, 2, 3, 4, 5]; // A list of integers

  // Sets declaration in dart
  var uniqueNumbers = <int>{1, 2, 3, 4, 5}; // A set of integers
  print(uniqueNumbers);

  Set<dynamic> mixedSet = {
    1,
    "Hello",
    true
  }; // A set that can hold any type of value
  print(mixedSet);

  // Maps declaration in dart
  var person = {
    "name": "Alice",
    "age": 30,
    "isStudent": true
  }; // A map with string keys and dynamic values

  print(person["name"]); // Accessing the value associated with the key "name"

  Map<String, dynamic> anotherPerson = {
    "name": "Bob",
    "age": 25,
    "isStudent": false
  }; // A map with string keys and dynamic values
  print(anotherPerson[
      "age"]); // Accessing the value associated with the key "age"

  // Iterating through the map and printing each key-value pair
  person.forEach((key, value) {
    print("$key: $value");
  });

  // Taking user input in dart
  stdout.write("Enter your name: "); // Prompting the user for input
  String? userName = stdin.readLineSync(); // Reading a line of input from the

  print("Hello, $userName!"); // Greeting the user with their input

  String? num1 = stdin.readLineSync();
  String? num2 = stdin.readLineSync();

  int sum = int.parse(num1!) +
      int.parse(
          num2!); // Parsing the input strings to integers and calculating the sum
  print("The sum of $num1 and $num2 is $sum"); // Printing the result
}
