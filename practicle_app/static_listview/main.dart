import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("static listview"),
          centerTitle:true,
          backgroundColor:Colors.red,
        ),
        body:ListView(
          children:[
            Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
          const Icon(Icons.favorite,
          color:Colors.red),
          const Text("Good Photograph",
          style:TextStyle(
            fontSize:30,
          ),),
           Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
          const Icon(Icons.favorite,
          color:Colors.red),
          const Text("Good Photograph",
          style:TextStyle(
            fontSize:30,
          ),),
 Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
          const Icon(Icons.favorite,
          color:Colors.red),
          const Text("Good Photograph",
          style:TextStyle(
            fontSize:30,
          ),),

          ],
        ),
      ),

    );
  }
} 