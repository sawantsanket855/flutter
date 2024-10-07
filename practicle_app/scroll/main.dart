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
          title:const Text("Scollable Column"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body:SingleChildScrollView(
          child:Column(
            children:[
              Container(
                margin:const EdgeInsets.all(20),
                height:500,
                width:500,
                color:Colors.red,
              ),
              Container(
                margin:const EdgeInsets.all(20),
                height:500,
                width:500,
                color:Colors.blue,              ),
              Container(
                margin:const EdgeInsets.all(20),
                height:500,
                width:500,
                color:Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}