 import 'package:flutter/material.dart';
//  import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;
bool isError=false;
List<Map> data=[];


TextEditingController titleController=TextEditingController();
TextEditingController descriptionController=TextEditingController();
TextEditingController dateController=TextEditingController();
 


Future addData(Map<String,dynamic> myMap) async{
  myMap["data_index"]=data.length;
  Database locDatabase=await database;
  await locDatabase.insert("data",myMap);
  data=await locDatabase.query("data");
                
}
Future editData(Map<String,dynamic> myMap,int index) async{
  Database locDatabase=await database;
  await locDatabase.update("data",myMap,where:"data_index=?",whereArgs: [index]);
  data=await locDatabase.query("data");
  print(data);
                
}

Future deleteData(int index)async{
  Database locDatabase=await database;
  await locDatabase.delete("data",where:"data_index=?",whereArgs: [index]);
  data=await locDatabase.query("data");

}
