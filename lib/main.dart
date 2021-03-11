import 'package:QRGen/Views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QRGen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: Home(),
      
    );
  }
}
