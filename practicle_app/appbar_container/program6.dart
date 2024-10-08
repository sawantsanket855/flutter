import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       body:Center(
         child: SingleChildScrollView(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
            height: 200,
            width:360,
            color:Colors.blue,
           ),
           Container(
            height: 200,
            width:360,
            color:Colors.grey,
           ),
             Container(
            height: 200,
            width:360,
            color:Colors.pink,
           ),
             Container(
            height: 200,
            width:360,
            color:Colors.yellow,
           ),
             Container(
            height: 200,
            width:360,
            color:Colors.orange,
           ),
             Container(
            height: 200,
            width:360,
            color:Colors.black,
           ),
             Container(
            height: 200,
            width:360,
            color:Colors.blue,
           ),
             Container(
            height: 200,
            width:360,
            color:Colors.green,
           ),
              Container(
            height: 200,
            width:360,
            color:Colors.blue,
           ),
           Container(
            height: 200,
            width:360,
            color:Colors.grey,
           ),
           ],
           ),
         ),
       ),
      ),
    );
  }
}
