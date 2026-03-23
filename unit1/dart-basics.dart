void main() {
  print("Hello World");

  // Variables
  String name = "John";
  print(
      '$name'); // String interpolation ==> using $ to insert the value of a variable into a string
  var name2 =
      "Doe"; // Type inference ==> dart has identified the type of variable by looking at the value assigned to it at compile time

  // String interpolation will work with any type of variable, not just strings. It will convert the variable to a string before inserting it into the string.
  // In the example below, we're using string interpolation on a expression that evaluates to a single value.
  print(
      "Runtime type of name2 is: ${name2.runtimeType}"); // runtimeType is a property that returns the type of the variable at runtime

  var x = 10;

  print(x.runtimeType); // int

  //x = "Hello"; // This will cause an error because x is of type int and we're trying to assign a string to it

  dynamic y = "Hello";

  y = 20; // dynamic allows us to change the type of the variable at runtime
  print(y.runtimeType); // int

  // Data types in DART
  // 1. Numbers (int, double)
  // 2. Strings
  // 3. Booleans
  // 4. Lists
  // 5. Maps
  // 6. Sets
  // 7. Null

  // Null safety in DART
  // In DART, variables cannot be null by default. This means that you cannot assign a null value to a variable unless you explicitly declare it as nullable using the ? operator.

  // if you only declare a variable using var without assigning a value to it, it will be of type dynamic and can be assigned null. However, if you try to assign null to a variable that has already been inferred to be of a non-nullable type, it will cause an error.
  var s; // now s is of type dynamic and can be assigned any type of value, including null
  s = null; // This will cause an error because s is not nullable
  s = "Hello"; // This is allowed because s is of type dynamic, which is nullable by default

  dynamic z = "Hello";
  z = null; // This is allowed because dynamic variables can be null ==> dynamic variables are nullable by default

  // String declaration in DART
  String str1 = "Hello"; // using double quotes
  String str2 = 'Hello'; // using single quotes
  String str3 = """
        Hello
        World
        This is a multi-line string
    """; // using triple double quotes
  print(str3);

  // String concatenation in DART
  String str4 = "Hello" + " " + "World"; // using the + operator
  String str5 = "Hello"
      " "
      "World"; // using adjacent string literals (DART will automatically concatenate them)
  print(str5);

  // String functions in DART
  String str6 = "Hello World";
  print(str6.length); // length of the string
  print(str6.toUpperCase()); // convert the string to uppercase
  print(str6.toLowerCase()); // convert the string to lowercase
  print(str6.trim()); // remove leading and trailing whitespace
  print(str6.indexOf("World")); // find the index of a substring
  print(str6.contains("World")); // check if the string contains a substring
  print(str6.replaceAll(
      "World", "DART")); // replace all occurrences of a substring
  print(str6.split(" ")); // split the string by a delimiter
  print(str6.substring(0, 5)); // get a substring from the string

  // Dart Advance Types ==> Lists
  List<int> numbers = [1, 2, 3, 4, 5]; // A list of integers
  List<String> names = ["John", "Doe", "Jane"]; // A list of strings
  print(numbers);

  List<dynamic> mixedList = [1, "Hello", true, 3.14]; // A list of mixed types
  print(mixedList);
  // dart for-each loop
  for (var number in numbers) {
    print(number);
  }
  // traditional for loop
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }

  // while loop
  int i = 0;
  while (i < mixedList.length) {
    print(mixedList[i]);
    i++;
  }

  // do-while loop
  int j = 0;
  do {
    print(mixedList[j]);
    j++;
  } while (j < mixedList.length);

  // if-else statement
  int age = 25;
  if (age < 18) {
    print("You are a minor");
  } else if (age >= 18 && age < 65) {
    print("You are an adult");
  } else {
    print("You are a senior citizen");
  }

  // switch statement
  String day = "Monday";
  switch (day) {
    case "Monday":
      print("Today is Monday");
      break;
    case "Tuesday":
      print("Today is Tuesday");
      break;
    case "Wednesday":
      print("Today is Wednesday");
      break;
    case "Thursday":
      print("Today is Thursday");
      break;
    case "Friday":
      print("Today is Friday");
      break;
    case "Saturday":
      print("Today is Saturday");
      break;
    case "Sunday":
      print("Today is Sunday");
      break;
    default:
      print("Invalid day");
  }
}
