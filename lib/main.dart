import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext banana) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SliderExample(),
    );
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _sliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text('Adjust the value:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            // Slider
            Slider(
              value: _sliderValue,
              min: 0.0,
              max: 100.0,
              divisions: 10,
              label: _sliderValue.toStringAsFixed(1),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            const SizedBox(height: 20,),
            Text(
              'Value: ${_sliderValue.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
