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
      home: const RadioButtonExample(),
    );
  }
}

class RadioButtonExample extends StatefulWidget {
  const RadioButtonExample({super.key});

  @override
  State<RadioButtonExample> createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  String selectedOption = 'Option1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radion Button Example"),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Choose an option:', style: TextStyle(fontSize: 18)),
          ),

          RadioListTile<String>(
            title: const Text('Option 1'),
            value: 'Option 1',
            groupValue: 'selectedOption',
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Option 2'),
            value: 'Option 2',
            groupValue: 'selectedOption',
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Option 3'),
            value: 'Option 3',
            groupValue: 'selectedOption',
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
          const SizedBox(height: 20,),
          Center(
            child: Text(
              'Selected: $selectedOption',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
