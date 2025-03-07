import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 150, 211, 238),
        appBar:AppBar(
          backgroundColor: Colors.blue,
        
        ),
        body:ListView(
          
          shrinkWrap: true,
          children: [
            const Padding(padding:EdgeInsets.only(top:20,bottom:10),
            child: Center(
              child: Text("Ranking",
                style:TextStyle(
                  fontSize:30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),),

            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              // controller: mainPageController,
              itemCount:5,
              itemBuilder: (context,index) {
                return Container(
                  height: 50,
                  padding:const EdgeInsets.only(
                    left:10,
                    right:20,
                  ),
                  margin:const EdgeInsets.fromLTRB(25,0, 25, 5),
                  // width: MediaQuery.of(context).size.width,
                  
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(15),),
                  ),
                
                  child:Row(children: [
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                
                      child:Stack(
                        children: [
                          Center(child: Image.asset("assets/Gold.png")),
                          const Center(
                            
                            child:Text("1",
                            style:TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color:Colors.white,
                            ),
                            
                            ),
                            ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Text("Department 1",
                      style: TextStyle(
                        fontSize:20,
                      ),
                    ),
                    const Spacer(),
                    
                   
                    Padding(
                      padding: const EdgeInsets.only(right:5),
                      child: Image.asset("assets/Trophy.png",
                      scale: 7,),
                    ),
                    const Text("125"),
                    // SvgPicture.asset("assets/Silver.svg")
                  ],
                  ),
                );
              }
            ),
            GestureDetector(
              onTap: (){},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("show more "),
                  Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
            ),
          ],
        ),
        ),
      );

  }
}
