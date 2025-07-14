import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dismissible Example',
      home: Scaffold(
        appBar: AppBar(title: Text("Dismissible Example")),
        body: const Center(child: MyDismissibleItem()),
      ),
    );
  }
}

class MyDismissibleItem extends StatefulWidget {
  const MyDismissibleItem({super.key});

  @override
  State<MyDismissibleItem> createState() => _MyDismissibleItemState();
}

class _MyDismissibleItemState extends State<MyDismissibleItem> {
  bool _isItemVisible = true;
  @override
  Widget build(BuildContext context) {
    return _isItemVisible ? Dismissible(
      key: const Key('unique key'),
      direction: DismissDirection.endToStart,
      onDismissed: (direction){
        setState(() {
          _isItemVisible=false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Item dismissed")),
        );
      },
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(Icons.delete, color: Colors.white,),
      ),
      
       child: Card(
        child: ListTile(
          title: const Text('Swipe left to delete'),
        ),
       ),
        )
       :const Text("Item was dismissed");
  }
}
