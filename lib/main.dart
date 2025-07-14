import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'drop down ',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DropDownExample(),
    );
  }
}

class DropDownExample extends StatefulWidget {
  const DropDownExample({super.key});

  @override
  State<DropDownExample> createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {
  final List<String> fruits = ['Apple', 'Banana', 'Mango', 'Orange'];

  String? selectedFruit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drop down button example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DropdownButton<String>(
              items: fruits.map<DropdownMenuItem<String>>((String fruit) {
                return DropdownMenuItem<String>(
                  value: fruit,
                  child: Text(fruit),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedFruit = newValue;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              selectedFruit == null
                  ? 'no fruit selected'
                  : 'you slected:$selectedFruit',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
