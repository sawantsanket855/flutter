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
       body:Center(child:Container(
        height: 300,
        width:300,
        decoration: BoxDecoration(
          color:Colors.blue,
          border:Border.all(
            width:2,
            color:Colors.red,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
       ),),
      ),
    );
  }
}
