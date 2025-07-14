import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Long Press Delete Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Long Press to Delete'),
        ),
        body: const NameList(),
      ),
    );
  }
}

class NameList extends StatefulWidget {
  const NameList({super.key});

  @override
  State<NameList> createState() => _NameListState();
}

class _NameListState extends State<NameList> {
  List<String> names = ['Braison', 'Alice', 'John', 'Mary', 'Steve'];

  void deleteName(int index) {
    String deletedName = names[index];
    setState(() {
      names.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$deletedName deleted')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onLongPress: () => deleteName(index),
          child: Card(
            child: ListTile(
              title: Text(names[index]),
              subtitle: const Text('Long press to delete'),
            ),
          ),
        );
      },
    );
  }
}
