import 'package:flutter/material.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(
        children: [
          Spacer(),
          Container(
            height: 144,
            width: 144,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 234, 238, 235),
              shape: BoxShape.circle,
            ),
            child:Image.asset("assets/flash.png")
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom:91),
            child: const Text("Expense Manager",
            style: TextStyle(
              fontSize: 16,
              fontWeight:FontWeight.w600 ,
              fontFamily:"Poppins",
              color: Colors.black,
            ),),
          ),
        ],
      ),
    ),
    );
   
  }
}
