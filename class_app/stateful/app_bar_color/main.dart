import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  bool appBarColor = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: appBarColor ? Colors.blue : Colors.red,
              title: const Text("Color Change App"),
              centerTitle: true,
            ),
            body: Center(
                child: FloatingActionButton(
                    onPressed: () {
                      if (appBarColor) {
                        appBarColor = false;
                      } else {
                        appBarColor = true;
                      }
                      setState(() {});
                    },
                    child: const Text("Change")))));
  }
}
