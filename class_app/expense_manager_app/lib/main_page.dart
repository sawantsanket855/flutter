import 'package:expense_manager_app/bottom_sheet.dart';
import 'package:expense_manager_app/drawer.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       drawer: getDrawer(),
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(height: 55,),
              Row(
                children: [
                  Builder(
              builder: (context) {
                return GestureDetector(
                    onTap:(){
                        Scaffold.of(context).openDrawer();
                    },
                  child: Container(
                    margin: EdgeInsets.only(left:11,right: 22),
                    height: 24,
                    width: 24,
                    child: const Icon(
                      Icons.menu,
                      // color: Colors.white,
                      size:23,
                    ),
                  ),
                  );
              }
            ),
          
                    const Text("Novenber 2024 ",
                    style:TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                              ),),
                    Icon(Icons.keyboard_arrow_down)
                ],
              ),
              SizedBox(height: 32,),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 12,
                itemBuilder:(context,index){
                  return Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:12,right:17,),
                              height: 41,
                              width: 41,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/flash.png",fit:BoxFit.cover,),
                            ),
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width-85,
                                child: Row(
                                  children: [
                                    const Text("Medicine",
                                    style:TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                      ),
                                      Spacer(),
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        height: 15,
                                        width:15,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(246, 113, 49, 1),
                                        ),
                                        child: Icon(Icons.remove,size: 10,color: Colors.white,),
                                      ),
                                      const Text("500",
                                       style:TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                      )
                                  ],
                                  
                                ),
                              ),
                              const Text("Lorem Ipsum is simply dummy text of the",
                                    style:TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                    ),
                                    ),
                            ],
                          ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right:15,bottom:5 ),
                              child: const Text("3 June | 11:50 AM",
                              style:TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),),
                            ),
                            
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  );
                }
                )
                
            ],
          ),

          Positioned(
            left:(MediaQuery.of(context).size.width-150)/2,
            bottom: 40,
            child: GestureDetector(
              onTap: (){
                openBottomSheet(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 7,horizontal: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Colors.grey,
                    )
                  ]
              
                  
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right:9 ),
                  height: 32,
                  width: 32,
                  decoration:BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(14, 161, 125, 1)
                  ),
                  child: Icon(Icons.add,
                  size: 30,
                  color: Colors.white,),
                ),
              
                const Text("Add Transaction",
                 style:TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                ),
              
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      
     
    );
  }
}