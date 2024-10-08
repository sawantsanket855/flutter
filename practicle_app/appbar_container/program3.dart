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
      title:const Text("Hello Core2web",),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 0, 140, 255),
       ),
       body:Center(child:Container(
        height: 200,
        width:360,
        color:Colors.blue,
       ),),
      ),
    );
  }
}
