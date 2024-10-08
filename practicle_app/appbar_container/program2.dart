import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar:AppBar(
      title:const Text("App Bar",),
      centerTitle: true,
      backgroundColor: Colors.blue,
      actions:const [Icon(Icons.shopping_cart)],
       ),
      ),
    );
  }
}
