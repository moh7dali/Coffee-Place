import 'package:coffee/screens/home.dart';
import 'package:coffee/screens/log_in.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(MaterialApp(
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Log_in();
  }
}
