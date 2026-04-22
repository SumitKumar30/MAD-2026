/*
1. Write a Dart function named fetchData that 
simulates fetching data from a remote server asynchronously 
using a Future. The function should return a Future that 
resolves to a list of integers. 
Inside the function, use the Future.delayed constructor to 
simulate a network delay of 2 seconds, and
 then return a Future that resolves to a list of integers.

2. Write a Dart function named fetchUserData that simulates 
fetching user data from a remote server asynchronously 
using a Future. The function should take a user ID as a parameter 
and return a Future that resolves to a Map representing 
the user's data (e.g., name, age, email). 
Inside the function, use the Future.delayed constructor 
to simulate a network delay of 3 seconds, and 
then return a Future that resolves to a Map containing dummy 
user data.

*/

Future<List<int>> fetchData() {
  return Future.delayed(const Duration(seconds: 2), () => [1, 2, 3, 4, 5]);
}

void main() {
  print('Fetching data...');
  Future<List<int>> data = fetchData();
  // print('Data fetched: $data');
  data.then((data) => print('Data fetched: $data'));
}
