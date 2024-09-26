import"package:flutter/material.dart";

void main() {
  runApp(const ColorChange());
}

class ColorChange extends StatefulWidget{
  const ColorChange({super.key});
  @override
  State createState()=>_ColorChangeState();
}

class _ColorChangeState extends State{
  bool col=false;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"first app",
      home:Scaffold(
        appBar:AppBar(title:const Text("Color Change"),
        centerTitle: true,
        backgroundColor: col?Colors.blue:Colors.red,
         ),
         body:Center(child:Container(
          height:150,
          width:150,
          color:col?Colors.green:Colors.yellow,
         ),
         ),
         floatingActionButton: FloatingActionButton(onPressed: () {
          if(col){
            col=false;
          }else{
            col=true;
          }
          setState((){});
         },),
      ),
    );
  }
}