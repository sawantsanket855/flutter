import 'package:flutter/material.dart';
import './todo.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import './functions.dart';
// import './functions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String databasePath = await getDatabasesPath();
  String path = join(databasePath, 'player.db');
  // await deleteDatabase(path);

  database =await openDatabase(path, version: 1, onCreate: (db, version) async {
    await db.execute('create table data (data_index INT,title TEXT,des TEXT,date TEXT)');
  });
  data = await database.query('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: ToDoLIst(),
      );
}
