// How generators are lazy and how to use them in Dart?

void main() {
  // final a = showNormal(5);
  // print(
  //     'a.first -> ${showNormal(5).first}'); // This will trigger the normal function to execute and produce all values before accessing the first one.

  final b = showGenerator(5);

  // Iterables generate values lazily, meaning they produce values on demand. When you access the first value of the generator, it will execute the generator function until it yields the first value. Similarly, when you access the last value, it will execute until it yields the last value.

  print(
      'b.last -> ${b.last}'); // This will trigger the generator to produce values until it reaches the last one.

  print(
      'b.first -> ${b.first}'); // This will trigger the generator to produce values until it reaches the first one, which is 1.
}

List<int> showNormal(int n) {
  print("Normal Started");
  List<int> numbers = [];
  for (int i = 1; i <= n; i++) {
    print('i -> $i');
    numbers.add(i);
  }
  print("Normal Ended");
  return numbers;
}

Iterable<int> showGenerator(int n) sync* {
  print("Generator Started");
  for (int i = 1; i <= n; i++) {
    print('i -> $i');
    yield i;
  }
  print("Generator Ended");
}
