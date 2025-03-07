import "package:flutter/material.dart";

Widget getDrawer() {
  return Drawer(
    
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 45),
        Padding(
          padding: const EdgeInsets.only(left:20),
          child: const Text(
            "Expense Manager",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:20),
          child: const Text(
            "Saves all your Transactions",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(top:15),
          padding: EdgeInsets.only(left:20),
          height: 40,
          width: 184,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
            color: Color.fromRGBO(14, 161, 125, 0.15)
          ),
          child: Row(
            children: [
             Image.asset("assets/transaction.png"),
             const SizedBox(width: 6,),
             const Text("Transaction",
              style:TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: Color.fromRGBO(14, 161, 125, 1)
                          ),),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:15),
          padding: EdgeInsets.only(left:20),
          height: 40,
          width: 184,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
            // color: Color.fromRGBO(14, 161, 125, 0.15)
          ),
          child: Row(
            children: [
             Image.asset("assets/graphs.png"),
             const SizedBox(width: 6,),
             const Text("Graphs",
              style:TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: Color.fromRGBO(14, 161, 125, 1)
                          ),),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:15),
          padding: EdgeInsets.only(left:20),
          height: 40,
          width: 184,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
            // color: Color.fromRGBO(14, 161, 125, 0.15)
          ),
          child: Row(
            children: [
             Image.asset("assets/category.png"),
             const SizedBox(width: 6,),
             const Text("Category",
              style:TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: Color.fromRGBO(14, 161, 125, 1)
                          ),),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:15),
          padding: EdgeInsets.only(left:20),
          height: 40,
          width: 184,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
            // color: Color.fromRGBO(14, 161, 125, 0.15)
          ),
          child: Row(
            children: [
             Image.asset("assets/trash.png"),
             const SizedBox(width: 6,),
             const Text("Trash",
              style:TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: Color.fromRGBO(14, 161, 125, 1)
                          ),),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:15),
          padding: EdgeInsets.only(left:20),
          height: 40,
          width: 184,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
            // color: Color.fromRGBO(14, 161, 125, 0.15)
          ),
          child: Row(
            children: [
             Image.asset("assets/aboutUs.png"),
             const SizedBox(width: 6,),
             const Text("About us",
              style:TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: Color.fromRGBO(14, 161, 125, 1)
                          ),),
            ],
          ),
        ),
      ],
    ),
  );
}
