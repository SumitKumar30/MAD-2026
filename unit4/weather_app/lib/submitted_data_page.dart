import 'package:flutter/material.dart';

class SubmittedDataPage extends StatelessWidget {
  final String name;
  final String email;
  final String message;

  const SubmittedDataPage({
    super.key,
    required this.name,
    required this.email,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submitted Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Registration Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text('Name: $name', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text('Email: $email', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text('Message: $message', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
