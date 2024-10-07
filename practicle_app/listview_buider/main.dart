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
          title:const Text("list builder "),
          centerTitle:true,
          backgroundColor:Colors.grey,
        ),
        body:ListView.builder(
          itemCount:100,
          itemBuilder:(BuildContext context,int index){
            return Text("index $index");},
          ),
        ),
      
    );
  }
}
