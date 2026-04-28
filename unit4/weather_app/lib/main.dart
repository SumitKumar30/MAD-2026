import 'package:first_app/register_form.dart';
import 'package:first_app/weather_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const HomeScreen(),
      /* Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg'),
            ),
          ),
          title: const Text(
            'Flutter Home Page',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(height: 10),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.yellow,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.freepik.com/512/6478/6478099.png'),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Hello, World!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ))),
        ),
      ), */
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterForm(),
                    ),
                  );
                },
                child: const Text('Registration Form'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WeatherScreen(),
                    ),
                  );
                },
                child: const Text('Weather Info'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
