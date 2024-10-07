import "package:flutter/material.dart";

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const Text("Axis Alignment"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body:
        Container(
            color:Colors.amber,
              width:MediaQuery.of(context).size.width,
            child:
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            Container(
              height:100,
            width:100,
            color:Colors.red,),
          ],
        ),
      ),),
    );
  }

}