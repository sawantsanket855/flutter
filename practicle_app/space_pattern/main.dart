import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const Text("space pattern"),
        centerTitle: true,
        backgroundColor: Colors.blue,),
        body: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,

            ),
             Container(
              color: Colors.green,
              height: 100,
              width: 100,

            ),
             Container(
              color: Colors.grey,
              height: 100,
              width: 100,

            ),
          ],
          
        ),
      ),
    );
  }
}
