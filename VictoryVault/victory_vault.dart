import "package:flutter/material.dart";

class VictoryVault extends StatefulWidget{
  const VictoryVault({super.key});
  @override
  State createState()=>_VictoryVaultState();
}

class _VictoryVaultState extends State{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    );
  }
}