import "package:flutter/material.dart";

void main(){
  runApp(const Player());

}

class Player extends StatefulWidget{
  const Player({super.key});
  @override
  State createState ()=> _PlayerState();
}

class _PlayerState extends State{
  List playerList=[
  "https://www.dailyexcelsior.com/wp-content/uploads/2019/07/Dhoni-1.jpg",
  "https://th.bing.com/th/id/OIP.jUTcTx2U2pcLKWNyV0dnEgAAAA?w=259&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7",
  "https://th.bing.com/th/id/OIP.zq-VDKAbYD8QzZz-KAOzOgAAAA?w=262&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7",
  "https://th.bing.com/th/id/OIP.oGn8EV_muX9FJoKhekwYmAHaE7?w=245&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
  "https://th.bing.com/th/id/OIP.DNUT8sewdkBQRTXZ4DP_owHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7"
  ];
  int count=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        backgroundColor:Colors.black,
        appBar:AppBar(
          title:const Text("Players Image"),
          centerTitle:true,
          backgroundColor:Colors.pink,
        ),
        body:Center(
          child:Image.network(playerList[count]),
        ),
        floatingActionButton: FloatingActionButton(onPressed:(){
          if(count<4){
            count++;
          }else{
            count=0;
          }
          setState(() {});
        },),
      ),
    );
  }
}