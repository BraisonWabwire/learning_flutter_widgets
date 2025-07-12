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
      home: const BananaHomePage(),
    );
  }
}

// A StatefulWidget that uses 'banana' as the BuildContext name
class BananaHomePage extends StatefulWidget {
  const BananaHomePage({super.key});

  @override
  State<BananaHomePage> createState() => _BananaHomePageState();
}

class _BananaHomePageState extends State<BananaHomePage> {
  @override
  Widget build(BuildContext banana) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Banana Context Example"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Showing dialog using 'banana' context
            showDialog(
              context: banana,
              builder: (banana) => AlertDialog(
                title: const Text("Hello!"),
                content: const Text("This came from a banana!"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(banana).pop(),
                    child: const Text("Close"),
                  ),
                ],
              ),
            );
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
