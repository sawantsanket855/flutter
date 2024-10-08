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
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[SizedBox(
          height: 150,
          width:150,
          child:Image.network("https://images.pexels.com/photos/1188083/pexels-photo-1188083.png?cs=srgb&dl=sea-dawn-nature-1188083.jpg&fm=jpg",
          fit:BoxFit.cover),
          ),
          SizedBox(
          height: 150,
          width:150,
          child:Image.network("https://static.vecteezy.com/system/resources/previews/023/576/936/large_2x/beautiful-coastal-sunset-seascape-scenery-of-rocky-coast-at-wild-atlantic-way-in-barna-galway-ireland-free-photo.jpg",
          fit:BoxFit.cover),
          ),
           SizedBox(
          height: 150,
          width:150,
          child:Image.network("https://tracystravelsintime.com/wp-content/uploads/2020/05/Giants-Causeway-in-N-Ireland.jpg.webp",
          fit:BoxFit.cover),
          ),
          ],
         ),
       ),
      ),
    );
  }
}
