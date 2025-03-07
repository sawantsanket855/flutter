import 'package:expense_manager_app/graph.dart';
import 'package:flutter/material.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 55),
          Row(
            children: [
              Builder(
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 11, right: 22),
                      height: 24,
                      width: 24,
                      child: const Icon(
                        Icons.menu,
                        // color: Colors.white,
                        size: 23,
                      ),
                    ),
                  );
                },
              ),

              const Text(
                "Graph",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
          SizedBox(height: 14),
          Row(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 60 / 100,
                    width: MediaQuery.of(context).size.width * 60 / 100,
                    child: getGraph(),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 60 / 100,
                    height: MediaQuery.of(context).size.width * 60 / 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                        const Text(
                          "₹ 2550.00",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.width * 40 / 100),
                width: (MediaQuery.of(context).size.width * 40 / 100) - 30,
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5, right: 10),
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const Text(
                            "Food",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),

          
          ListView.builder(
            padding: EdgeInsets.only(top:30),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder:(context,index){
              return Padding(
                padding: const EdgeInsets.only(left: 30,right:30,bottom: 30),
                child: SizedBox(
                  height:40 ,
                  width: MediaQuery.of(context).size.width-60,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        clipBehavior: Clip.antiAlias,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Image.asset("assets/flash.png",fit:BoxFit.cover),
                      ),
                      const Text("Food",
                      style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                      ),
                      Spacer(),
                      const Text("₹ 650.00",
                      style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                      ),
                      SizedBox(width: 16,),
                      Icon(Icons.keyboard_arrow_right,size: 15,),
                    ],
                  ),
                ),
              );
            }
            ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),

          Container(
            padding: EdgeInsets.only(left:65,right: 65,top:30 ),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                const Text("Total",
                style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                ),
                Spacer(),
                const Text("₹ 325.00",
                style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                            ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
