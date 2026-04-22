// Sync Generators in dart

// “What if I want a sequence of values, but I do not want to create and store them all at once?”

/* examples:

        numbers from 1 to 1,000,000
        Fibonacci sequence
        walking through folder paths
        traversing a tree 
        values computed only when needed
*/

// This can be done using a generator....

/* 
  A generator is a function that produces a sequence of values over time, instead of returning one final value all at once.
 */

// Normal function that returns a list of numbers from 1 to n
// Here you need something to store first and then return it all at once.
// This can be inefficient if n is large, as it consumes more memory and takes time to create the entire list before you can use it.

List<int> generateNumbers(int n) {
  List<int> numbers = [];
  for (int i = 1; i <= n; i++) {
    numbers.add(i);
  }
  return numbers;
}

// Generator function that yields numbers from 1 to n
// Iterable is an interface that allows you to iterate over a collection of items, one at a time... lazily.
// The sync* keyword indicates that this function is a generator, and it can yield values one at a time.
// The yield keyword is used to produce a value and pause the function's execution until the next value is requested.
// This approach is more memory efficient, as it generates each number on demand, rather than storing them all in memory at once.
Iterable<int> generateNumbersSync(int n) sync* {
  for (int i = 1; i <= n; i++) {
    yield i; // Yield the next number in the sequence
  }
}

void main() {
  // Using the normal function
  List<int> numbers = generateNumbers(5);
  print('Normal function output: $numbers');

  // Using the generator function
  print('Generator function output:');
  for (int number in generateNumbersSync(5)) {
    print(number); // Each number is generated and printed one at a time
  }
}
