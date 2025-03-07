import 'package:expense_manager_app/categories.dart';
import 'package:expense_manager_app/graph_page.dart';
import 'package:expense_manager_app/flash_screen.dart';
import 'package:expense_manager_app/login.dart';
import 'package:expense_manager_app/main_page.dart';
import 'package:expense_manager_app/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Categogies(),
    );
  }
}
