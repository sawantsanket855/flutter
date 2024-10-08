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
          scrollDirection:Axis.horizontal,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            
              SizedBox(
                height: 300,
                width: 150,
                child: Image.network("https://images.unsplash.com/photo-1721627679038-b243c1fc892b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D",
                fit: BoxFit.cover,)),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 300,
                width: 150,
                child: Image.network("https://media.istockphoto.com/id/1310710228/photo/american-football-ball-and-helmet-on-the-grass-of-football-arena-or-stadium.jpg?b=1&s=170667a&w=0&k=20&c=-Q2dKXNxJsnLofKpctOehJvel-lgC3gmkOWb0vJJ2bg=",
                fit: BoxFit.cover,)),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 300,
                width: 150,
                child: Image.network("https://images.unsplash.com/photo-1655365225170-55d6b7d2d6d5?ixlib=rb-1.2.1&w=1080&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb",
                fit: BoxFit.cover,)),
              const SizedBox(
                width: 20,
              ),
        
           ],
           ),
         ),
       ),
      ),
    );
  }
}
