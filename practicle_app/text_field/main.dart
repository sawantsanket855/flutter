import "package:flutter/material.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  String? myName;
  TextEditingController nameController = TextEditingController();
  List nameList=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Text Input"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        // mainAxisSize:MainAxisSize.min,
        // mainAxisAlignment:MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Container(
            // color:Colors.red,
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              decoration: const InputDecoration(
                hintText: "enter name",
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 189, 185, 185),
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap:(){
              // print("button pressed");
              myName=nameController.text;
              // print(myName);
              if(myName!=""){
                nameList.add(myName);
                // print(nameList);
                nameController.clear();
                setState((){});

              }

            },
            child: Container(
              padding: const EdgeInsets.all(10),
              // height:30,
              // width:60,
              color: Colors.amber,
              child: const Text("submit"),
            ),
          ),
          const SizedBox(
            height:20,
          ),
           SizedBox(
            height:450,
            child:
          ListView.builder(
            scrollDirection:Axis.vertical,
            shrinkWrap:true,
            itemCount:nameList.length,
            itemBuilder: (context ,index){
              return Center( child:
              Text(nameList[index],
              style:const  TextStyle(
                fontSize:30,
              ),
              ),);
            },

          ),),
        ],
      ),
    ));
  }
}
