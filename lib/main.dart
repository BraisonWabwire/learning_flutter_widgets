import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My App')),
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () {
              String msg = 'Welcome to Safe Area';
              final SnackBar snackBar = SnackBar(
                content: Text(
                  msg,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                duration: const Duration(seconds: 2),
                action: SnackBarAction(label: 'UNDO', onPressed: () {}),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('Tap me', style: TextStyle(fontSize: 24)),
          ),
        ),
      ),
    );
  }
}
