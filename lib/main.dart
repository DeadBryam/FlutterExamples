import 'package:flutter/material.dart';
import 'package:microtest/HomePage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Micro Test',
      home: HomePage(),
    );
  }
}