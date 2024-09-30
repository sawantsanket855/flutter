import "package:flutter/material.dart";
import "package:flutter/painting.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title:const Text("First App"),
        centerTitle: true,
        
      ),
      body:  Center(
        child:Container(
          padding:const EdgeInsets.fromLTRB(10, 20, 0, 0),
          height: 100,
          width:100,
          color:Colors.red,
          child:const Text("Welcome To Flutter"),
          
          ),
          
    ),
    ),
    );
  }
}
