import 'dart:convert';

import 'package:first_app/http_helper.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final TextEditingController latitudeController = TextEditingController();
  final TextEditingController longitudeController = TextEditingController();
  /* final TextEditingController dateController = TextEditingController(); */

  final HttpHelper httpHelper = HttpHelper();

  String weatherResult = '';
  bool isLoading = false;

  Future<void> getWeatherData() async {
    String latitude = latitudeController.text.trim();
    String longitude = longitudeController.text.trim();
    /* String date = dateController.text.trim(); */

    if (latitude.isEmpty || longitude.isEmpty /* || date.isEmpty */) {
      setState(() {
        weatherResult = 'Please enter latitude, longitude and date.';
      });
      return;
    }

    setState(() {
      isLoading = true;
      weatherResult = '';
    });

    try {
      // If your current fetchData method does not accept date,
      // update it to include date as shown below.
      String result =
          await httpHelper.fetchData(latitude, longitude /*, date */);

      setState(() {
        weatherResult = result;
      });
    } catch (e) {
      setState(() {
        weatherResult = 'Error: Failed to load weather data.';
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    latitudeController.dispose();
    longitudeController.dispose();
    /* dateController.dispose(); */
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: latitudeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter Latitude',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: longitudeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter Longitude',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            /*  TextField(
              enabled:
                  false, // Disable date input if your API does not support it
              controller: dateController,
              decoration: const InputDecoration(
                labelText: 'Enter Date',
                hintText: 'YYYY-MM-DD',
                border: OutlineInputBorder(),
              ),
            ), */
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: getWeatherData,
              child: const Text('Get Weather'),
            ),
            const SizedBox(height: 20),
            isLoading
                ? const CircularProgressIndicator()
                : Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        weatherResult.isEmpty
                            ? 'Weather data will appear here.'
                            : weatherResult,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
