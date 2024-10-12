import "package:flutter/material.dart";



void main(){
    runApp(const MyApp());
}

class MyApp extends StatefulWidget{
    const MyApp({super.key});
    @override
    State createState()=>_MyAppState();
}

class _MyAppState extends State{
    List myList=[];
    TextEditingController nameController =TextEditingController();
    TextEditingController cmpNameController=TextEditingController();
    @override
    Widget build(BuildContext context){
        return MaterialApp(
          home:Scaffold(
            appBar:AppBar(
              title:const Text("text"),
              backgroundColor: Colors.blue,

            ),
            body:Container(
              // margin:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              // color: Colors.red,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                            margin: const EdgeInsets.all(20),

                          child: TextField(
                            controller: nameController,
                            decoration:const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText:"enter name",
                                hintStyle:TextStyle(
                                    color:Colors.grey,
                                ),
                                labelText:"Name",

                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.all(20),

                          child: TextField(
                            controller:cmpNameController,
                            decoration:const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText:"enter company name",
                                hintStyle:TextStyle(
                                    color:Colors.grey,
                                ),
                                labelText:"Company Name",

                            ),
                          ),
                        ),

                        Container(
                          // margin:const EdgeInsets.all(20),
                          height: 400,
                          child:ListView.builder(
                            itemCount: 100,
                            itemBuilder:(context,index){return const Text("hello");},
                          ),
                        ),

                ],
              ),
            ),
          ),
        );
        }
}