import "package:flutter/material.dart";

void openBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 22),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Date",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 36,
              padding: EdgeInsets.symmetric(horizontal: 19,vertical: 8),
              margin: EdgeInsets.only(top: 6, bottom: 19),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                
                style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                color: Color.fromRGBO(0, 0, 0, 0.8),
              ),
                cursorHeight: 15,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 13),
                  border: InputBorder.none),
              ),
            ),
            const Text(
              "Amount",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 36,
              padding: EdgeInsets.symmetric(horizontal: 19,vertical: 8),
              margin: EdgeInsets.only(top: 6, bottom: 19),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                
                style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                color: Color.fromRGBO(0, 0, 0, 0.8),
              ),
                cursorHeight: 15,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 13),
                  border: InputBorder.none),
              ),
            ),
            const Text(
              "Category",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 36,
              padding: EdgeInsets.symmetric(horizontal: 19,vertical: 8),
              margin: EdgeInsets.only(top: 6, bottom: 19),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                
                style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                color: Color.fromRGBO(0, 0, 0, 0.8),
              ),
                cursorHeight: 15,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 13),
                  border: InputBorder.none),
              ),
            ),
            const Text(
              "Description",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 36,
              padding: EdgeInsets.symmetric(horizontal: 34,vertical: 8),
              margin: EdgeInsets.only(top: 6, bottom: 19),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                
                style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                color: Color.fromRGBO(0, 0, 0, 0.8),
              ),
                cursorHeight: 15,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 13),
                  border: InputBorder.none),
              ),
            ),

            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 45,vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                    child: const Text("Add",
                     style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                color: Colors.white,
              ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
