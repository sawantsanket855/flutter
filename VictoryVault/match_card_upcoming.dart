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
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),

        body:Center(
          child:Container(
            height: 250,
            width:350,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              borderRadius:BorderRadius.all(Radius.circular(10)),
              color: Colors.blue,
             
            ),
             child:Stack(
              children: [
                Positioned(
                  left:0,
                  child: SizedBox(
                    height:200,
                    width:150,
                    child: Image.asset("assets/virat.png",fit: BoxFit.fill,)),
                ),
                Positioned(
                  right:0,
                  child: SizedBox(
                    height:200,
                    width:150,
                    child: Image.asset("assets/virat.png",fit: BoxFit.fill,)),
                ),
                
                 Container(
                  margin:const EdgeInsets.only(top:51),
                  height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.withOpacity(0.0), // Fully transparent at the top
                      Colors.blue.withOpacity(1.0), // Fully opaque at the bottom
                    ],
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:75),
                      child: SizedBox(
                        height: 100,
                        width:100,
                        child: Image.asset("assets/versus.png",fit: BoxFit.fill,)),
                    ),
                  ],
                ),

              const Positioned(
                top: 110,
                left:10,
                child:Text("Comp A",
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                 const Positioned(
                top: 110,
                right:10,
                child:Text("Comp B",
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
      
               Positioned(
                bottom:5,
                  child: SizedBox(
                    width: 340,
                   
                    child: 
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         const Text("Today 8:30 AM",
                         style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                         ),
                         
                         ),

                         const Text("Toss: to be declared",
                         style: TextStyle(
                          color: Color.fromARGB(255, 59, 252, 66),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                         ),
                         
                         ),

                          SizedBox(
                            height: 35,
                            width:150,
                            child: Padding(
                              padding: const EdgeInsets.only(top:4),
                              child: ElevatedButton(
                                onPressed: (){},
                                 child: const Text("Details"),
                              
                                 ),
                            ),
                          ),
                        ],
                      )
                    
                  ),),

                  const Positioned(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                             Text ("Cricket",
                            style:TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                            ),
                            Text ("Final",
                            style:TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                            ),
                            Text("Match No.14"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    right: 5,
                    bottom: 5,
                    child: Container(
                      alignment: Alignment.center,
                              width: 60,
                              decoration:const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                color: Color.fromARGB(255, 219, 246, 16),
                              ),
                              child:const Text ("Upcoming",
                              style: TextStyle(
                                fontSize: 11,
                              ),
                              ),

                              ),
                  ),
              ],
              
             ),
          ),
        ),
      ),
    );
  }
}