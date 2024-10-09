
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
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          leading: const Icon(Icons.navigate_before,size:40,
          color: Color.fromARGB(255, 109, 109, 109),),
  
          title:const Text("My cart"),
          centerTitle: true,
        ),

        body:Column(children: [
          const Divider(),
          Column(
            children: [
              Container(
                // color:Colors.grey,
margin:const EdgeInsets.fromLTRB(20,20,20,0),
                padding:const EdgeInsets.all(20),
                height:150,
                decoration:const BoxDecoration(
                  color:Color.fromARGB(255, 244, 240, 240),

                  borderRadius:BorderRadius.all(Radius.circular(10)),
                ),
                child:Row(children:[
                  Container(
                    decoration:const BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(10)),
                ),
                    
                    child:Image.asset("assets/image.jpg",
                    fit:BoxFit.cover,),
                  ),

                  Container(
                    padding:const EdgeInsets.only(left: 20),
                    width:220,
                    // color:Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Nike Shoes",
                        style:TextStyle(
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),),
                        const Text("With iconic style and legendary confort ,on repeat."),
                        const Spacer(),
                        Row(
                          children: [
                            const Text("\$570.00",
                            style:TextStyle(
                              fontSize:20,
                              fontWeight:FontWeight.bold,
                            ),),
                            const Spacer(),
                            GestureDetector(
                              child:const Icon(Icons.remove),
                            ),
                            Container(
                              decoration:BoxDecoration(
                                border:Border.all(
                                  width:1,
                                  color:Colors.blue,
                                ),
                                borderRadius:const BorderRadius.all(Radius.circular(5)),
                              ),
                              padding:const EdgeInsets.symmetric(horizontal:10,vertical:2),
                              child:const Text("1"),
                            ),
                            GestureDetector(
                              child:const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                   
                  ]
                ),
              ),
              Container(
                // color:Colors.grey,
                margin:const EdgeInsets.fromLTRB(20,20,20,0),
                padding:const EdgeInsets.all(20),
                height:150,
                decoration:const BoxDecoration(
                  color:Color.fromARGB(255, 244, 240, 240),

                  borderRadius:BorderRadius.all(Radius.circular(10)),
                ),
                child:Row(children:[
                  Container(
                    decoration:const BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(10)),
                ),
                    
                    child:Image.asset("assets/image.jpg",
                    fit:BoxFit.cover,),
                  ),

                  Container(
                    padding:const EdgeInsets.only(left: 20),
                    width:220,
                    // color:Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Nike Shoes",
                        style:TextStyle(
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),),
                        const Text("With iconic style and legendary confort ,on repeat."),
                        const Spacer(),
                        Row(
                          children: [
                            const Text("\$570.00",
                            style:TextStyle(
                              fontSize:20,
                              fontWeight:FontWeight.bold,
                            ),),
                            const Spacer(),
                            GestureDetector(
                              child:const Icon(Icons.remove),
                            ),
                            Container(
                              decoration:BoxDecoration(
                                border:Border.all(
                                  width:1,
                                  color:Colors.blue,
                                ),
                                borderRadius:const BorderRadius.all(Radius.circular(5)),
                              ),
                              padding:const EdgeInsets.symmetric(horizontal:10,vertical:2),
                              child:const Text("1"),
                            ),
                            GestureDetector(
                              child:const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                   
                  ]
                ),
              ),
            ],
          ),
          const Spacer(),
          
         const  Padding(
            padding: EdgeInsets.fromLTRB(35,0,35,20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal:",
                style:TextStyle(
                  fontSize:17,
                ),
                ),
                Text("\$800.00",
                style:TextStyle(
                  fontSize:17,
                  fontWeight:FontWeight.bold,
                ),),
              ],
            ),
          ),
           const  Padding(
            padding: EdgeInsets.fromLTRB(35,0,35,20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery Fee:",
                style:TextStyle(
                  fontSize:17,
                ),
                ),
                Text("\$5.00",
                style:TextStyle(
                  fontSize:17,
                  fontWeight:FontWeight.bold,
                ),),
              ],
            ),
          ),
           const  Padding(
            padding: EdgeInsets.fromLTRB(35,0,35,20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Discount:",
                style:TextStyle(
                  fontSize:17,
                ),
                ),
                Text("40%",
                style:TextStyle(
                  fontSize:17,
                  fontWeight:FontWeight.bold,
                ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: SizedBox(
              width:340,
              height:55,
              child:ElevatedButton(
                style:ButtonStyle(
                  backgroundColor:WidgetStateProperty.all(const Color.fromARGB(255, 94, 80, 250)),
                ),
                onPressed:(){},
                child:const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      "Checkout for ",
                      style:TextStyle(
                        fontSize:17,
                        color: Colors.white,
                        // fontWeight:FontWeight.bold,
                      ),
                    
                    ),
                    Text(
                      "\$480.00",
                      style:TextStyle(
                        fontSize:17,
                        fontWeight:FontWeight.bold,
                        color:Colors.white,
                      ),
                    
                    ),
                  ],
                ),
              ),
            ),
          ),        ],)
      ),
    );
  }
}