import "package:flutter/material.dart";
import './HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dice roller app",
      theme: ThemeData(
        primarySwatch: Colors.yellow,
       ),
       debugShowCheckedModeBanner: false,
       home: HomePage(),
    );
  }
}