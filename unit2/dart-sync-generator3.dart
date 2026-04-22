// Proving laziness of sync* generators.

import 'dart:io';

Iterable<int> generator(int n) sync* {
  for (int i = 1; i <= n; i++) {
    sleep(Duration(seconds: 1));
    print('Generating $i');
    yield i;
  }
}

/* void main() {
  print('Start');

  var numbers = generator(3);

  print('Before loop');

  for (var n in numbers) {
    print('Received $n');
  }

  print('Done');
} */

// ====================================================================================

List<int> buildList(int n) {
  List<int> result = [];

  for (int i = 1; i <= n; i++) {
    sleep(Duration(seconds: 1));
    print('Computing $i');
    result.add(i);
  }

  return result;
}

void main() {
  print('Start');

  var numbers = buildList(3);

  print('After list is built');

  for (var n in numbers) {
    print('Received $n');
  }
  print('Done');
}
